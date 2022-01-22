defmodule Day1Test do
    use ExUnit.Case
    alias Input
    alias Day1

## Question 1 Tests

    test "question 1 test case 1" do
        input = ["(","(",")",")"]
        assert Day1.question1(input) == 0
    end

    test "question 1 test case 2" do
        input = ["(",")","(",")"]
        assert Day1.question1(input) == 0
    end

    test "question 1 test case 3" do
        input = ["(","(","("]
        assert Day1.question1(input) == 3
    end

    test "question 1 test case 4" do
        input = ["(","(",")","(","(",")","("]
        assert Day1.question1(input) == 3
    end

    test "question 1 test case 5" do
        input = ["(",")",")"]
        assert Day1.question1(input) == -1
    end

    test "question 1 test case 6" do
        input = [")",")","("]
        assert Day1.question1(input) == -1
    end

    test "question 1 test case 7" do
        input = [")",")",")"]
        assert Day1.question1(input) == -3
    end

    test "question 1 test case 8" do
        input = [")","(",")",")","(",")",")"]
        assert Day1.question1(input) == -3
    end

## Question 2 Tests

    test "question 2 test case 1" do
        input = [")"]
        assert Day1.question2(input, {0,0}) == 1
    end

    test "question 2 test case 2" do
        input = ["(",")","(",")",")"]
        assert Day1.question2(input, {0,0}) == 5
    end

end