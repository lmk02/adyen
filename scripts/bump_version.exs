# scripts/bump_version.exs
defmodule BumpVersion do
  def run(args) do
    path = "mix.exs"
    content = File.read!(path)
    
    # Regex to find version: "x.y.z"
    regex = ~r/version:\s*"(\d+)\.(\d+)\.(\d+)"/
    
    new_version = 
      case args do
        [v] -> v
        _ -> 
          case Regex.run(regex, content) do
            [_full_match, major, minor, patch] ->
              new_patch = String.to_integer(patch) + 1
              "#{major}.#{minor}.#{new_patch}"
            _ ->
              IO.puts(:stderr, "Could not find version in mix.exs and no version provided")
              System.halt(1)
          end
      end

    case Regex.run(regex, content) do
      [full_match | _] ->
        new_content = String.replace(content, full_match, "version: \"#{new_version}\"")
        File.write!(path, new_content)
        IO.puts(new_version) # Output the new version for the shell script

      _ ->
        IO.puts(:stderr, "Could not find version in mix.exs")
        System.halt(1)
    end
  end
end

BumpVersion.run(System.argv())
