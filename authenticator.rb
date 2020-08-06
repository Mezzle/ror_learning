# frozen_string_literal: true

users = [
  { username: 'mashrur', password: 'password1' },
  { username: 'jack', password: 'password2' },
  { username: 'arya', password: 'password3' },
  { username: 'jonshow', password: 'password4' },
  { username: 'heisenberg', password: 'password5' }
]

puts 'Welcome to the authenticator'
25.times { print '-' }
puts
puts 'This program will take input from the user and compare password'
puts 'If password is correct, you will get back the user object'

failed_attempts = 0

while failed_attempts < 3
  print 'Username? '
  username = gets.chomp
  print 'Password?'
  password = gets.chomp

  correct_users = users.select { |v| v[:username] == username && v[:password] == password }

  if correct_users.length.zero?
    failed_attempts += 1
    puts "Incorrect attempt - you have #{3 - failed_attempts} attempts remaining"
  else
    puts correct_users
  end

  exit if failed_attempts >= 3

  puts 'Press n to exit, or any key to continue'
  cha = (gets 1).downcasef

  exit if cha == 'n'
end
