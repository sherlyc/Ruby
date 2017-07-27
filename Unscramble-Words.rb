data = File.read("words.txt").split.select do |word|
    [5,6].include?(word.length)
end

start = Time.now

5.times do
    word_to_guess = data.sample
    shuffled_word = word_to_guess.chars.shuffle.join
    guessed = false
    puts "What's the word: #{shuffled_word"

    until guessed
        guess = gets.chomp
        if guess == word_to_guess
            puts "Correct!"
            guessed = true
            break
        else
            puts "Nope."
        end
    end
end

end_time = Time.now

puts "You took #{(end_time - start_time).round} seconds..."
