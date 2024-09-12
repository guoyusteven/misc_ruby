# Number Guesser Game

def numberGuesser
  # Generate a random number between 1 and 100
  secret_number = rand(1..100)
  attempts = 0
  guessed = false

  puts "Welcome to the Number Guesser Game!"
  puts "I've selected a number between 1 and 100. Can you guess it?"

  while !guessed
    print "Enter your guess: "
    guess = gets.chomp.to_i
    attempts += 1

    if guess < secret_number
      puts "Too low! Try again."
    elsif guess > secret_number
      puts "Too high! Try again."
    else
      puts "Congratulations! You've guessed the number #{secret_number} in #{attempts} attempts."
      guessed = true
    end
  end
  playAgain
end

def playAgain
  print "Do you want to play again? (y)es/(n)o: "
  answer = gets.chomp.downcase

  if answer == 'y'
    numberGuesser
  else
    exit
  end
end

# Start the game
numberGuesser()
