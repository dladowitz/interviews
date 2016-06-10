# Create a method that turns integers into english words
# 100,450,012 to "one hundred million four hundred fifty thousand twelve"

def separate_comma(number)
  a = number.to_s.split('')
  b = a.size/3.0
  if a.size < 4
    number.to_s
  elsif a.size%3 == 0
    n = -4
    (b.to_i-1).times do |i|
      a.insert(n, ',')
      n -= 4
    end
    a.join("")
  else
      n = -4
    b.to_i.times do |i|
      a.insert(n, ',')
      n -= 4
    end
   a.join("")
  end
end

def number_to_words(number)
  thousands_place = ["", "thousand", "million", "billion", "trillion"]

  words = ""
  thousands_counter = 0

  while number > 0
    #get last 3 numbers for conversion
    last_three = number % 1000

    under_1000_in_words = under_1000_to_words(last_three)
    words =  under_1000_in_words + " " + thousands_place[thousands_counter] + " " + words
    thousands_counter += 1

    # remove last numbers and continue
    number = number / 1000
  end

  return words
end

def under_1000_to_words(number)
  ones_array = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
  teens_array =["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  above_twenty_array = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eightly", "ninety"]
  words = ""

  last_two = number % 100

  # lookup in above_twenty_array
  if last_two >= 20
    tens_place = last_two / 10
    ones_place = last_two % 10
    words = above_twenty_array[tens_place] + " " + ones_array[ones_place]
  elsif last_two <= 10
    words =  ones_array[last_two]
  else
    words =  teens_array[last_two - 11]
  end

  if number > 99
    hundreds_place = number / 100
    # add hundres place to tens place
    words = ones_array[hundreds_place] + " hundred " + words
  end


  return words
end


puts "Under 1000 conversion"
number = 10;  puts "#{number} is: #{under_1000_to_words(number)}"
number = 13; puts "#{number} is: #{under_1000_to_words(number)}"
number = 63; puts "#{number} is: #{under_1000_to_words(number)}"
number = 910; puts "#{number} is: #{under_1000_to_words(number)}"
number = 510; puts "#{number} is: #{under_1000_to_words(number)}"
number = 915; puts "#{number} is: #{under_1000_to_words(number)}"
number = 999; puts "#{number} is: #{under_1000_to_words(number)}"
number = 809; puts "#{number} is: #{under_1000_to_words(number)}"
number = 109; puts "#{number} is: #{under_1000_to_words(number)}"
number = 111; puts "#{number} is: #{under_1000_to_words(number)}"
puts "______________________________________________"
puts "Full Number to Words"
number = 915;  puts "#{separate_comma(number)} is: #{number_to_words(number)}"
number = 1915;  puts "#{separate_comma(number)} is: #{number_to_words(number)}"
number = 29915;  puts "#{separate_comma(number)} is: #{number_to_words(number)}"
number = 209915;  puts "#{separate_comma(number)} is: #{number_to_words(number)}"
number = 2009915;  puts "#{separate_comma(number)} is: #{number_to_words(number)}"
number = 5149915;  puts "#{separate_comma(number)} is: #{number_to_words(number)}"
number = 5119915;  puts "#{separate_comma(number)} is: #{number_to_words(number)}"
number = 895119915;  puts "#{separate_comma(number)} is: #{number_to_words(number)}"
