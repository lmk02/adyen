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
    {~r/([a-z]+)s_\1/, "\\1"},
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

    # We only want to rename function definitions, specs, and specific call references.
    # We shouldn't blindly replace everything as it might break existing code strings or other things.
    # However, for generated files, the function names appear in:
    # 1. @spec function_name(...)
    # 2. def function_name(...)
    # 3. call: {Module, :function_name}
    # 4. @doc ... (sometimes, but usually not the name itself)
    #
    # We will iterate over the rules and apply them to words that look like function names
    # in contexts we care about.

    # Regex to find function names in relevant contexts
    # Matches:
    # - def name
    # - @spec name
    # - :name (atom)
    # Group 2 is the name
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
      IO.puts("Renaming operations in #{file}")
      File.write!(file, new_content)
    end
  end

  def apply_rules(name) do
    Enum.reduce(@rules, name, fn {pattern, replacement}, acc ->
      String.replace(acc, pattern, replacement)
    end)
  end
end

Adyen.RenameOperations.run()
