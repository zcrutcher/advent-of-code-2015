defmodule Day3 do

    def input do
        alias Input
        Input.main("../input/day3.txt")
        |> String.split("", trim: true)
    end

    def question1([">" | tail], visited, {x, y}) do
        case Enum.member?(visited, [x + 1, y]) do
            false ->
                question1(tail, [[x + 1, y] | visited], { x + 1, y })
            true ->
                question1(tail, visited, { x + 1, y })
        end
    end

    def question1(["<" | tail], visited, {x, y}) do
        case Enum.member?(visited, [x - 1, y]) do
            false ->
                question1(tail, [[x - 1, y] | visited], { x - 1, y })
            true ->
                question1(tail, visited, { x - 1, y })
        end
    end

    def question1(["^" | tail], visited, {x, y}) do
        case Enum.member?(visited, [x , y + 1]) do
            false ->
                question1(tail, [[x , y + 1] | visited], { x, y + 1 })
            true ->
                question1(tail, visited, { x , y + 1 })
        end
    end

    def question1(["v" | tail], visited, {x, y}) do
        case Enum.member?(visited, [x , y - 1]) do
            false ->
                question1(tail, [[x , y - 1 ] | visited], { x , y - 1 })
            true ->
                question1(tail, visited, { x , y - 1 })
        end
    end

    def question1([], visitied, {x,y}) do
        Enum.count(visitied)
    end

    def answer1 do
        input = Day3.input
        question1(input, [[0,0]], {0,0})
    end

end