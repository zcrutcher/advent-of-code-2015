defmodule Day4 do
    
    @secret_key "yzbqklnj"

    def question1(key, num) do
        answer = 
        :crypto.hash(:md5, "#{key}#{num}" )
        |> Base.encode16()

        first_five = Enum.take(String.split(answer, "", trim: true), 5)
        case first_five do
            ["0", "0", "0", "0", "0"] ->
                num
            _ ->
                question1(key, num + 1)
        end

    end

    def answer1 do
        question1(@secret_key, 0)
    end

    def question2(key, num) do
        answer = 
        :crypto.hash(:md5, "#{key}#{num}" )
        |> Base.encode16()

        first_six = Enum.take(String.split(answer, "", trim: true), 6)
        case first_six do
            ["0", "0", "0", "0", "0", "0"] ->
                num
            _ ->
                question2(key, num + 1)
        end

    end

    def answer2 do
        question2(@secret_key, 0)
    end


end