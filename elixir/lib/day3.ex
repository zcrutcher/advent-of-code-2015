defmodule Day3 do

    @santa 1
    @robo_santa 2

    def input do
        alias Input
        Input.main("../input/day3.txt")
        |> String.split("", trim: true)
    end

    def question1(visited, [">" | tail], {x, y}) do
        add_new_coordinate(visited, x + 1, y)
        |> question1(tail, {x + 1, y})
    end

    def question1(visited, ["<" | tail], {x, y}) do
        add_new_coordinate(visited, x - 1, y)
        |> question1(tail, {x - 1, y})
    end

    def question1(visited, ["^" | tail], {x, y}) do
        add_new_coordinate(visited, x, y + 1)
        |> question1(tail, {x, y + 1})
    end

    def question1(visited, ["v" | tail], {x, y}) do
        add_new_coordinate(visited, x, y - 1)
        |> question1(tail, {x, y - 1})
    end

    def question1(visited, [], {_x, _y}) do
        Enum.count(visited)
    end

    def answer1 do
        input = Day3.input
        question1([{0,0}], input, {0,0})
    end

    def add_new_coordinate(visited, x, y) do
        case Enum.member?(visited, {x, y}) do
            false ->
                [{x,y} | visited]
            true ->
                visited
        end
    end
    
    def question2(visited, [">" | tail], @santa, {x1, y1}, {x2, y2}) do
        add_new_coordinate(visited, x1 + 1, y1)
        |> question2(tail, @robo_santa, {x1 + 1, y1}, {x2, y2})
    end

    def question2(visited, [">" | tail], @robo_santa, {x1, y1}, {x2, y2}) do
        add_new_coordinate(visited, x2 + 1, y2)
        |> question2(tail, @santa, {x1, y1}, {x2 + 1, y2})
    end

    def question2(visited, ["<" | tail], @santa, {x1, y1}, {x2, y2}) do
        add_new_coordinate(visited, x1 - 1, y1)
        |> question2(tail, @robo_santa, {x1 - 1, y1}, {x2, y2})
    end

    def question2(visited, ["<" | tail], @robo_santa, {x1, y1}, {x2, y2}) do
        add_new_coordinate(visited, x2 - 1, y2)
        |> question2(tail, @santa, {x1, y1}, {x2 - 1, y2})
    end

    def question2(visited, ["^" | tail], @santa, {x1, y1}, {x2, y2}) do
        add_new_coordinate(visited, x1, y1 + 1)
        |> question2(tail, @robo_santa, {x1, y1 + 1}, {x2, y2})
    end

    def question2(visited, ["^" | tail], @robo_santa, {x1, y1}, {x2, y2}) do
        add_new_coordinate(visited, x2, y2 + 1)
        |> question2(tail, @santa, {x1, y1}, {x2, y2 + 1})
    end

    def question2(visited, ["v" | tail], @santa, {x1, y1}, {x2, y2}) do
        add_new_coordinate(visited, x1, y1 - 1)
        |> question2(tail, @robo_santa, {x1, y1 - 1}, {x2, y2})
    end

    def question2(visited, ["v" | tail], @robo_santa, {x1, y1}, {x2, y2}) do
        add_new_coordinate(visited, x2, y2 - 1)
        |> question2(tail, @santa, {x1, y1}, {x2, y2 - 1})
    end

    def question2(visited, [], _x, {_x1, _y1}, {_x2, _y2}) do
        Enum.count(visited)
    end

    def answer2 do
        input = Day3.input
        question2([{0,0}], input, @santa, {0,0}, {0,0})
    end

end