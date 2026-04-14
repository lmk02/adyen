# scripts/bump_version.exs
defmodule BumpVersion do
  def run(args) do
    path = "mix.exs"
    content = File.read!(path)
    
    # Regex to find @version "x.y.z"
    regex = ~r/@version\s*"(\d+)\.(\d+)\.(\d+)"/

    {current_version, major, minor, patch} =
      case Regex.run(regex, content) do
        [_full_match, major, minor, patch] ->
          {"#{major}.#{minor}.#{patch}", major, minor, patch}
        _ ->
          IO.puts(:stderr, "Could not find version in mix.exs")
          System.halt(1)
      end

    new_version = 
      case args do
        ["--current"] ->
          IO.puts(current_version)
          System.halt(0)

        [v] when is_binary(v) -> v

        _ -> 
          new_patch = String.to_integer(patch) + 1
          "#{major}.#{minor}.#{new_patch}"
      end

    if new_version != current_version do
      new_content = String.replace(content, "@version \"#{current_version}\"", "@version \"#{new_version}\"")
      File.write!(path, new_content)
      IO.puts(new_version)
    else
      IO.puts(:stderr, "Version is already #{new_version}, no change made.")
      System.halt(0) # Exit with 0 but no output to stdout, or handle in shell
    end
  end
end

BumpVersion.run(System.argv())
