defmodule Day3Test do
    use ExUnit.Case
    alias Day3

    @santa 1

## Question 1 Tests

    test "question 1 test case 1" do
        input = [">"]
        assert Day3.question1(input, [[0,0]], {0,0}) == 2
    end

    test "question 1 test case 2" do
        input = ["^",">","v","<"]
        assert Day3.question1(input, [[0,0]], {0,0}) == 4
    end

    test "question 1 test case 3" do
        input = ["^","v","^","v","^","v","^","v","^","v"]
        assert Day3.question1(input, [[0,0]], {0,0}) == 2
    end

## Question 2 Tests

    test "question 2 test case 1" do
        input = ["^", "v"]
        assert Day3.question2([[0,0]], input, @santa, {0,0}, {0,0}) == 3
    end

    test "question 2 test case 2" do
        input = ["^",">","v","<"]
        assert Day3.question2([[0,0]], input, @santa, {0,0}, {0,0}) == 3
    end

    test "question 2 test case 3" do
        input = ["^","v","^","v","^","v","^","v","^","v"]
        assert Day3.question2([[0,0]], input, @santa, {0,0}, {0,0}) == 11
    end

end