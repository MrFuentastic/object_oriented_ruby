

# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card
  attr_reader :question, :answer, :choices
  def initialize(card_array)

    @question = card_array[0]
    @answer = card_array[1]
    @random_choices = ['Drew Barrymore', 'Quentin Tarantino', 'Keanu Reeves', 'Jet Li', 'Jackie Chan', 'Bruce Lee', 'Chuck Norris', 'Tom Cruise', 'Edward Norton', 'Brad Pitt', 'Twin Peaks', 'Game of Thrones', 'Minnesota', 'Wyoming', 'Seattle', 'Albany','Annapolis','Atlanta','Augusta','Austin','Bismarck','Boise','Boston','Charleston','Cheyenne','Columbia','Columbus','Concord','Denver','Dover','Frankfort','Harrisburg','Hartford','Helena','Honolulu','Indianapolis','Jackson','Junea','Lansing','Lincoln','Madison','Montgomery']
  end

  def choices
    @choices = [@answer]
    3.times do
      @choices << @random_choices[rand(@random_choices.length)]
    end
    return @choices.shuffle
  end


end

class Deck


  def initialize(deck_hash)
    @questions = deck_hash.keys
    @answers = deck_hash.values    
  end  

  def draw_card
    Card.new([                                                                                                                                                                                     
              @questions.shift,
              @answers.shift
            ])
  end

  def remaining_cards
    @questions.length
  end


end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

right_total = 0
wrong_total = 0
incorrect_cards = []

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  puts "Your choices are:"
  puts card.choices
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
    right_total += 1
  else
    puts 'Try again dumb dumb'
    user_answer = gets.chomp
    if user_answer.downcase == card.answer.downcase
      puts "Correct!"
      right_total += 1
    else
      puts "Incorrect!"
      wrong_total += 1
      incorrect_cards << card
    end
  end
  puts "--------------------------------------------------------------------"
end

score = right_total - wrong_total
puts "You got #{right_total.to_s} right and #{wrong_total.to_s} wrong. Your score is #{score}."

if
  wrong_total == 0
  puts "Great! Don't let it get go to your head kid."
elsif right_total == 0
  puts "Jesus..."
elsif score > 0
  puts "Good job. Not great. Just good."
else
  puts "Maybe knowing stuff's just not your thing. Here's a coloring book."
end 

if incorrect_cards.length > 0
  puts 'Would you like to try the questions you got wrong again? Type "yes" or "no".'
  response = gets.chomp
  if response == 'no'
    puts "Good for you for being happy where you are!"
  else
    while incorrect_cards.length > 0
    card = incorrect_cards.shift
    puts card.question
    puts "Your choices are:"
    puts card.choices
    user_answer = gets.chomp
    if user_answer.downcase == card.answer.downcase
      puts "Correct!"
      right_total += 1
      wrong_total -= 1
    else
      puts 'Try again dumb dumb'
      user_answer = gets.chomp
      if user_answer.downcase == card.answer.downcase
        puts "Correct!"
        right_total += 1
        wrong_total -= 1
      else
        puts "Incorrect!"
      end
    end
    puts "--------------------------------------------------------------------"
  end
  end
end

score = right_total - wrong_total
puts "You now have #{right_total.to_s} right and #{wrong_total.to_s} wrong. Your score is #{score}."

if
  wrong_total == 0
  puts "Great! Don't let it get go to your head kid."
elsif right_total == 0
  puts "Jesus..."
elsif score > 0
  puts "Good job. Not great. Just good."
else
  puts "Maybe knowing stuff's just not your thing. Here's a coloring book."
end 