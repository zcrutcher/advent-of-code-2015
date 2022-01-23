defmodule Day4Test do
    use ExUnit.Case
    alias Day4

## Question 1 Tests

    test "question 1 test case 1" do
        input = ["abcdef"]
        assert Day4.question1(input, 0) == 609043
    end

    test "question 1 test case 2" do
        input = ["pqrstuv"]
        assert Day4.question1(input, 0) == 1048970
    end

end