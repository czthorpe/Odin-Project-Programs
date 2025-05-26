
CAPITAL = (65..90)
LOWERCASE = (97..122)
MESSAGE = "I have done a fart and it smells like meatballs..."
MESSAGE1 = "asdaxaszzzz?@!?!@#!#!"

def caesar_cipher(message, shift)
    message_ar = message.chars
    shift %= 26

    new_ar = message_ar.map do |letter|
        letter_value = letter.ord

        if CAPITAL.include?(letter_value)
            letter_value += shift
            if letter_value > CAPITAL.end
                letter_value -= 26
            elsif letter_value < CAPITAL.begin
                letter_value += 26
            end

        elsif LOWERCASE.include?(letter_value)
            letter_value += shift
            if letter_value > LOWERCASE.end
                letter_value -= 26
            elsif letter_value < LOWERCASE.begin
                letter_value += 26
            end
        end
        letter_value.chr
    end
    new_ar.join
end

p caesar_cipher(MESSAGE1, 1)