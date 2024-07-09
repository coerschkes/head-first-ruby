# Number guessing game

num_guesses = 0
guessed_it = false
puts "Welcome to the number guessing game!"
print "Whats your name? "
name = gets.chomp
puts "Welcome, #{name}!"
puts "Guess a number between 1 and 100, i randomly generated one"
target = rand(100) + 1
until num_guesses == 10 || guessed_it
  remaining_guesses = 10 - num_guesses
  puts "#{remaining_guesses} guesses left."
  print "Make a guess: "
  guess = gets.to_i
  num_guesses += 1
  if guess < target
    puts "Oops, your guess was LOW"
  elsif guess > target
    puts "Oops, your guess was HIGH"
  else
    puts "Good job #{name}!"
    puts "You guessed my number in #{num_guesses} guesses!"
    guessed_it = true
  end
end

unless guessed_it
  puts "Sorry, you didn't get my number. It was #{target}"
end