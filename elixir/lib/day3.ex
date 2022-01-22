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


    # Santa = 1
    # Robo Santa = 2
    def question2([">" | tail], visited, 1, {santa, x1, y1}, {robo, x2, y2}) do
        case Enum.member?(visited, [x1 + 1, y1]) do
            false ->
                question2(tail, [[x1 + 1, y1] | visited], 2,{santa, x1 + 1, y1}, {robo, x2, y2})
            true ->
                question2(tail, visited, 2, {santa, x1 + 1, y1}, {robo, x2, y2})
        end
    end

    def question2([">" | tail], visited, 2, {santa, x1, y1}, {robo, x2, y2}) do
        case Enum.member?(visited, [x2 + 1, y2]) do
            false ->
                question2(tail, [[x2 + 1, y2] | visited], 1,{santa, x1, y1}, {robo, x2 + 1, y2})
            true ->
                question2(tail, visited, 1, {santa, x1, y1}, {robo, x2 + 1, y2})
        end
    end


    def question2(["<" | tail], visited, 1, {santa, x1, y1}, {robo, x2, y2}) do
        case Enum.member?(visited, [x1 - 1, y1]) do
            false ->
                question2(tail, [[x1 - 1, y1] | visited], 2,{santa, x1 - 1, y1}, {robo, x2, y2})
            true ->
                question2(tail, visited, 2, {santa, x1 - 1, y1}, {robo, x2, y2})
        end
    end

    def question2(["<" | tail], visited, 2, {santa, x1, y1}, {robo, x2, y2}) do
        case Enum.member?(visited, [x2 - 1, y2]) do
            false ->
                question2(tail, [[x2 - 1, y2] | visited], 1,{santa, x1, y1}, {robo, x2 - 1, y2})
            true ->
                question2(tail, visited, 1, {santa, x1, y1}, {robo, x2 - 1, y2})
        end
    end

    def question2(["^" | tail], visited, 1, {santa, x1, y1}, {robo, x2, y2}) do
        case Enum.member?(visited, [x1, y1 + 1]) do
            false ->
                question2(tail, [[x1, y1 + 1] | visited], 2,{santa, x1, y1 + 1}, {robo, x2, y2})
            true ->
                question2(tail, visited, 2, {santa, x1, y1 + 1}, {robo, x2, y2})
        end
    end

    def question2(["^" | tail], visited, 2, {santa, x1, y1}, {robo, x2, y2}) do
        case Enum.member?(visited, [x2, y2 + 1]) do
            false ->
                question2(tail, [[x2, y2 + 1] | visited], 1,{santa, x1, y1}, {robo, x2, y2 + 1})
            true ->
                question2(tail, visited, 1, {santa, x1, y1}, {robo, x2, y2 + 1})
        end
    end

    def question2(["v" | tail], visited, 1, {santa, x1, y1}, {robo, x2, y2}) do
        case Enum.member?(visited, [x1, y1 - 1]) do
            false ->
                question2(tail, [[x1, y1 - 1] | visited], 2,{santa, x1, y1 - 1}, {robo, x2, y2})
            true ->
                question2(tail, visited, 2, {santa, x1, y1 - 1}, {robo, x2, y2})
        end
    end

    def question2(["v" | tail], visited, 2, {santa, x1, y1}, {robo, x2, y2}) do
        case Enum.member?(visited, [x2, y2 - 1]) do
            false ->
                question2(tail, [[x2, y2 - 1] | visited], 1,{santa, x1, y1}, {robo, x2, y2 - 1})
            true ->
                question2(tail, visited, 1, {santa, x1, y1}, {robo, x2, y2 - 1})
        end
    end

    def question2([], visited, x, {santa, x1, y1}, {robo, x2, y2}) do
        Enum.count(visited)
    end

    def answer2 do
        input = Day3.input
        question2(input, [[0,0]], 1, {1,0,0}, {2,0,0})
    end

end