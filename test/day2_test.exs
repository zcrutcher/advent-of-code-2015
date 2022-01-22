defmodule Day2Test do
    use ExUnit.Case
    alias Input
    alias Day2

## Question 1 Tests

    test "question 1 test case 1" do
        input = ["2x3x4"]
        assert Day2.question1(input, 0) == 58
    end

    test "question 1 test case 2" do
        input = ["1x1x10"]
        assert Day2.question1(input, 0) == 43
    end

## Question 2 Tests

    test "question 2 test case 1" do
        input = ["2x3x4"]
        assert Day2.question2(input, 0) == 34
    end

    test "question 2 test case 2" do
        input = ["1x1x10"]
        assert Day2.question2(input, 0) == 14
    end

end