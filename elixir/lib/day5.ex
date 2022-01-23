defmodule Day5 do

    @vowels ["a","e","i","o","u"]
    @bad ["ab", "cd", "pq", "xy"]

    def input do
        alias Input
        Input.main("../input/day5.txt")
        |> String.split("\n", trim: true)
    end

    def double_check([h | t], prev, repeated) do
        case h == prev || repeated do
            true ->
                double_check(t, h, true)
            false ->
                double_check(t, h, false)
        end
    end

    def double_check([], prev, repeated) do
        case repeated do
            true ->
                repeated
            false ->
                repeated
        end
    end

    def bad_character?(string) do
        String.contains?(string, @bad)
    end

    def vowel_check([h | t], count)  do
        case String.contains?(h, @vowels) do
            true ->
                vowel_check(t, count + 1)
            false ->
                vowel_check(t, count)
        end
    end

    def vowel_check([], count) do
        count
    end

    def good?(vowel_count, repeated, bad) do
        if vowel_count > 2 && repeated == true && bad == false do
            true    
        else
            false
        end 
    end

    def question1([h | t], count, repeated, bad, answer_count) do
        
        split_input =
        String.split(h, "", trim: true)
        
        vowel_count = 
        vowel_check(split_input, count)

        [head | tail] = split_input
        repeated =
        double_check(tail, head, repeated)

        bad =
        bad_character?(h)

        good?(vowel_count, repeated, bad)
        |> case do
            true ->
                question1(t, 0, false, false, answer_count + 1)
            false ->
                question1(t, 0, false, false, answer_count)
        end 
    end

    def question1([], count, repeated, bad, answer_count) do
        answer_count
    end

    def answer1 do
        input = Day5.input
        question1(input, 0, false, false, 0)
    end

end