# Number Guesser Game

def numberGuesser
  # Generate a random number between 1 and 100
  secretNumber = rand(1..100)
  attempts = 0
  guessed = false

  puts "Welcome to the Number Guesser Game!"
  puts "I've selected a number between 1 and 100. Can you guess it?"

  while !guessed
    print "Enter your guess: "
    guess = gets.chomp.to_i
    attempts += 1

    if guess < secretNumber
      puts "Too low! Try again."
    elsif guess > secretNumber
      puts "Too high! Try again."
    else
      puts "Congratulations! You've guessed the number #{secretNumber} in #{attempts} attempts."
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
