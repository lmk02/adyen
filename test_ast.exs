
# Assuming it's already compiled after the last mix run
# or we can just inspect the ast again

asts = Adyen.Codegen.generate_ast("CheckoutService", "v71")

for ast <- asts do
  case ast do
    {:defmodule, _, [{:__aliases__, _, names}, [do: {:__block__, _, block}]]} ->
      if Enum.member?(names, :Payments) do
        IO.puts("Module: #{Enum.join(names, ".")}")
        for {:def, _, [{name, _, args}, _]} <- block do
          IO.puts("  Function: #{name}/#{length(args)}")
        end
      end
    _ ->
      :ok
  end
end
