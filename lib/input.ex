defmodule Input do
    def main(file) do
        {:ok, content} = File.read(file)
        content
    end
end