# Create a method that turns integers into english words
# 100,450,012 to "one hundred million four hundred fifty thousand twelve"


def number_to_words(number)
  thousands_place = ["", "thousand", "million", "billion", "trillion"]

  words = ""
  thousands_counter = 0


  while number > 0
    #get last 3 numbers for conversion
    last_three = number % 1000

    under_1000_in_words = under_1000_to_words(last_three)
    words += " " + under_1000_in_words + thousands_place[thousands_counter]
    thousands_counter += 1

    # remove last numbers and continue
    number = number / 1000
  end

  return words
end

def under_1000_to_words(number)
  words = ""


  words
end



number = 100100000000
puts number_to_words(number)
