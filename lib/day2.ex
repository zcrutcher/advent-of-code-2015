defmodule Day2 do
    
    def input do
        alias Input
        Input.main("../input/day2.txt")
        |> String.split("\n")
    end

    def question1([head | tail], feet) do
        dimensions =
            String.split(head, "x")
            |> Enum.map(fn x -> String.to_integer(x) end)
        len =
            dimensions
            |> Enum.at(0)
        width =
            dimensions
            |> Enum.at(1)
        height =
            dimensions
            |> Enum.at(2)

        lw = len * width
        wh = width * height
        hl = height * len

        ft = (2 * lw) + (2 * wh) + (2 * hl) + Enum.min([lw, wh, hl])

        question1(tail, feet + ft)

    end

    def question1([], feet) do
        feet
    end

    def answer1 do
        input = Day2.input
        question1(input, 0)
    end

    def question2([head | tail], feet) do
        dimensions =
        head
        |> String.split("x")
        |> Enum.map(fn x -> String.to_integer(x) end)
        |> Enum.sort
        
        m1 =
            dimensions
            |> Enum.at(0)
            |> Kernel.* 2
        m2 =
            dimensions
            |> Enum.at(1)
            |> Kernel.* 2

        area =
            dimensions
            |> Enum.reduce(fn x, acc -> x * acc end)

        question2(tail, feet + m1 + m2 + area)

    end

    def question2([], feet) do
        feet
    end

    def answer2 do
        input = Day2.input
        question2(input, 0)
    end

end