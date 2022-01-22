defmodule Day1 do

    def input do
        alias Input
        Input.main("../input/day1.txt")
        |> String.split("", trim: true)
    end

    def question1(input) do
        Enum.reduce(input, 0, fn char, acc ->
            case char do
                "(" ->
                    acc + 1
                ")" ->
                    acc - 1
            end   
        end)
    end
    
    def answer1 do
        answer =
        Day1.input
        |> Day1.question1
        IO.puts("Question 1:")
        IO.inspect(answer)
    end

    def question2(["(" | tail], {floor, count}) when floor > -1 do
        question2(tail, {floor + 1, count + 1})
    end

    def question2([")" | tail], {floor, count}) when floor > -1 do
        question2(tail, {floor - 1, count + 1})
    end

    def question2(_tail, {-1, x}) do
        x
    end

    def answer2 do
        answer = 
        Day1.input
        |>
        Day1.question2({0,0})
        IO.puts("Question 2:")
        IO.inspect(answer)
    end

end