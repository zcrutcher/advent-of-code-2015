defmodule Day3Test do
    use ExUnit.Case
    alias Day3

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

end