$randomNumber = rand(1--100)

 def guessRandomNumber
  puts "Guess a number between 1 and 100"
	guess = gets
	if Integer(guess) == $randomNumber
		puts "Right!"
	elsif Integer(guess) < $randomNumber
		puts "too low"
		puts "please try again"
		guessRandomNumber
	elsif Integer(guess) > $randomNumber
		puts "too high"
		puts "please try again"
		guessRandomNumber
	else
		puts "is that even a number? please try again"
		guessRandomNumber
	end
end
