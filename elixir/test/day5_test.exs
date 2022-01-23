defmodule Day5Test do
    use ExUnit.Case
    alias Day5

## Question 1 Tests

    test "question 1 test case 1" do
        input = ["ugknbfddgicrmopn"]
        assert Day5.question1(input, 0, false, false, 0) == 1
    end

    test "question 1 test case 2" do
        input = ["aaa"]
        assert Day5.question1(input, 0, false, false, 0) == 1
    end

    test "question 1 test case 3" do
        input = ["jchzalrnumimnmhp"]
        assert Day5.question1(input, 0, false, false, 0) == 0
    end
    
    test "question 1 test case 4" do
        input = ["haegwjzuvuyypxyu"]
        assert Day5.question1(input, 0, false, false, 0) == 0
    end

    test "question 1 test case 5" do
        input = ["dvszwmarrgswjxmb"]
        assert Day5.question1(input, 0, false, false, 0) == 0
    end

end