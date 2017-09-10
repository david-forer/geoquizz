require_relative 'quiz'
require_relative 'country'
require_relative 'account'
require_relative 'menu'

require 'colorize'
require 'progress_bar'

#create an account on login in
    system 'clear;'
    puts "Welcome to Geo Quiz; Terminals best Geography Quiz".colorize(:blue)
    sleep 1
    puts ''
    puts 'Create an Account to Play'.colorize(:blue)

#create an account on login in
    system 'clear;'
    puts 'Create Account'
    puts '--------------'
    print "Email: "
    email = gets.strip
    print "User name: "
    user_name = gets.strip

    # Create new account with email
    new_account = Account.new
    new_account.email = email
    new_account.user_name = user_name

 puts ''
    puts 'Your new Account is created!'
    puts "Welcome #{new_account.user_name} and good luck!"
    sleep 2


puts main_menu()