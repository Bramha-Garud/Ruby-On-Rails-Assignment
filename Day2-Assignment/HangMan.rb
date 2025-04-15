require 'io/console'
$word = ""

class Food
  
  $food_item = ["dosa", "vadapav", "samosa", "pizza", "burger", "chips", "noodles", "soup", "cake", "idli"]

  def word_guess

    f_i = $food_item.sample

  end
end

class Animal
  
  $animal_type = ["lion", "tiger", "leapord", "cat", "dog", "wolf", "elephant", "rhino", "bull", "bear"]

  def word_guess

    a_t = $animal_type.sample

  end
end

class Sport
  
  $sport_type = ["cricket", "football", "hockey", "badminton", "tennis", "archery", "kabaddi", "handball", "rugby", "volleyball"]

  def word_guess

    s_t = $sport_type.sample

  end
end

$array = [Animal.new(), Food.new(), Sport.new()]


class Program
  
  def run()
    
    class_type = $array.sample
    $word = class_type.word_guess()
    word_arr = $word.chars
    guessed_word = Array.new($word.length, "_")

    puts "#{$word}"
    
    i = 0
    j = 5

    while i < $word.length + 5 && j > 0
      puts "Enter the Character"
      ch = gets.chomp

      if $word.include?(ch)
        indexes = []
        word_arr.each_with_index do |char, i|
        indexes << i if char == ch end

        first_underscore_index = guessed_word.index("_")

        guessed_word[first_underscore_index] = ch
        i = i + 1
        
        if word_arr == guessed_word
          puts "You guessed it correctly"
          break
        end
      else

        puts "Wrong Choice"
        
        j = j - 1
      end
      
    end
    

  end
end

runner = Program.new()
runner.run()