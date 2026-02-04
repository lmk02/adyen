defmodule Adyen.RenameOperations do
  @rules [
    {~r/^patch_/, "update_"},
    {~r/^post_/, "create_"},
    # holders_id_... -> holder_...
    {~r/s_id_/, "_"},
    # holders_id -> holder
    {~r/s_id$/, ""},
    # session_id -> session
    {~r/_id$/, ""},
    # Redundant repetition: sessions_session -> session
    {~r/([a-z]+)s_\\1/, "\\1"},
    # Singularize explicit resources for create/update
    # create_donations -> create_donation
    {~r/^(create|update)_(.*)(session|payment|donation|transfer|order|account|holder|link)s$/, "\\1_\\2\\3"}
  ]

  def run do
    Path.wildcard("lib/adyen/**/*.ex")
    |> Enum.each(&process_file/1)
  end

  def process_file(file) do
    content = File.read!(file)
    regex = ~r/((?:def|@spec)\s+|:)([a-z][a-z0-9_]*)/

    new_content = Regex.replace(regex, content, fn full_match, prefix, name ->
      new_name = apply_rules(name)
      if new_name != name do
        prefix <> new_name
      else
        full_match
      end
    end)

    if new_content != content do
      # IO.puts("Renaming operations in #{file}")
      File.write!(file, new_content)
    end
  end

  def apply_rules(name) do
    Enum.reduce(@rules, name, fn {pattern, replacement}, acc ->
      String.replace(acc, pattern, replacement)
    end)
  end
end

defmodule Adyen.RenameSchemas do
  def run do
    files = Path.wildcard("lib/adyen/**/*.ex")

    # 1. Identify renames
    renames =
      Enum.reduce(files, %{}, fn file, acc ->
        content = File.read!(file)
        regex = ~r/defmodule (Adyen\.([A-Za-z0-9]+)\.([A-Za-z0-9]+))/

        case Regex.run(regex, content) do
          [full_match, full_name, scope, name] ->
            if String.starts_with?(name, scope) and name != scope do
              new_name = String.slice(name, String.length(scope)..-1)
              new_full = "Adyen.#{scope}.#{new_name}"
              IO.puts("Renaming schema #{full_name} -> #{new_full}")
              Map.put(acc, full_name, new_full)
            else
              acc
            end
          _ -> acc
        end
      end)

    if renames == %{} do
      IO.puts("No schema renames needed.")
    else
      # 2. Iterate all files and apply replacements
      # We re-fetch files in case we rename them, but for content replacement we can use current list
      # assuming renaming happens after content update.
      Enum.each(files, fn file ->
        content = File.read!(file)
        new_content =
          Enum.reduce(renames, content, fn {old, new}, txt ->
            String.replace(txt, old, new)
          end)

        if new_content != content do
          File.write!(file, new_content)
        end
      end)

      # 3. Rename files
      Enum.each(renames, fn {old, new} ->
        old_parts = Module.split(String.to_atom("Elixir." <> old))
        new_parts = Module.split(String.to_atom("Elixir." <> new))

        old_name = List.last(old_parts)
        new_name = List.last(new_parts)

        old_filename = Macro.underscore(old_name) <> ".ex"
        new_filename = Macro.underscore(new_name) <> ".ex"

        # Find file in the schemas directories (or anywhere)
        file =
          Path.wildcard("lib/adyen/**/#{old_filename}")
          |> List.first()

        if file do
          dir = Path.dirname(file)
          new_path = Path.join(dir, new_filename)
          if file != new_path do
            IO.puts("Renaming file #{file} -> #{new_path}")
            File.rename(file, new_path)
          end
        end
      end)
    end
  end
end

Adyen.RenameOperations.run()
Adyen.RenameSchemas.run()
