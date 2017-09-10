
@flag = Quiz.new('flags')
@capital = Quiz.new('capitals')

def main_menu()
    loop do
        # Give user a blank slate
        system 'clear'
        # display menu items
        puts "Let's Start playing 😁"
        puts '-------------'
        puts 'Select the game below'
        puts ''
        puts '1. Flags'.yellow
        puts '2. Capitals'.red
        puts 'x. None - get me out of here!'
        
        # Ask user for chosen menu item
        choice = gets.strip
        # Perform action based on user's choice
        case choice
        when '1'
            @current_type = @flag.type
            levels_menu()
        when '2'
            @current_type = @capital.type
            levels_menu()
        when 'x'
            puts 'Thanks for playing. Bye!'
            sleep 1
            break # Stop the loop for this array
        else
            puts "Please enter a valid choice"
            sleep 3 # Wait 3 second to allow user to read above message
        end # case
    end #loop
end


def levels_menu()

    system 'clear;'
    puts 'Select your level'
    puts '-----------------'
    puts '1. Easy'
    puts '2. Hard'
    puts '3. Extreme'
    puts 'x. Exit'

    choice = gets.strip

    case choice

    when '1'
        @level = 'easy'
        new_quiz()
    when '2'
        @level = 'hard'
        new_quiz()
    when '3'
        @level = 'extreme'
        new_quiz()
    when 'x'
        # Exit
    end
end


def options_menu()
    system 'clear;'
    puts ''
    puts "What would you like to do now?"
    puts ''
    puts '1. View your scores'
    puts '2. Play another quiz'
    puts 'x. Exit'
    
    choice = gets.strip

    case choice
    when '1'
        @scores.each do |score|
            puts " score: #{score}/10"
        end
        puts ''
        puts "Press 'x' to exit"
        gets.strip
    when '2'
        main_menu()
    when 'x'
        puts 'Exit'
    end
end

def new_quiz()
    system 'clear;'
    set_country_level_array()

    index = 0
    score = 0
    
    if @current_type == 'flags'
        puts ''
        puts 'Match the Flag to the Country'
        puts '_____________'
        puts ''
    elsif @current_type == 'capitals'
        puts ''
        puts 'Match the Capital City to the Country'
        puts '_____________'
        puts ''
    end

    # loop over and shuffle items until 10 questions
    @country_level.shuffle.each do |country|

        quizType = @current_type

        case quizType

        when 'flags'

            #break after 10 questions
            if index >= 10 then
                break
            end

            # display question and get answer
            print "Q.#{index+1} #{country.flag.capitalize} = "
            answer = gets.strip.downcase
            if answer == country.name
                puts "  Correct answer!".blue
                score = score + 1
            else
                puts "  Wrong. The correct answer is '#{country.name.capitalize}'".red
                score = score + 0
            end
            puts ''
            # increase index value by 1 on every loop
            index = index + 1

        when 'capitals'
            #break after 10 questions
            if index >= 10 then
                break
            end

            # display question and get answer
            print "Q.#{index+1} #{country.capital.capitalize} = "
            answer = gets.strip.downcase
            if answer == country.name
                puts "  Correct answer!".blue
                score = score + 1
            else
                puts "  Wrong. The correct answer is '#{country.name.capitalize}'".red
                score = score + 0
            end
            puts ''
            # increase index value by 1 on every loop
            index = index + 1
        end
 
    end #end countries loop
    
    @quiz_score = score

    score_messages()
    sleep 3

    @scores << score

    options_menu()
end

def set_country_level_array()
    
    @countries.each do |country|

        levels = @level

        case levels

        when 'easy'
            @country_level = @countries.select { |country| country.level == 'easy' }
        when 'hard'
            @country_level = @countries.select { |country| country.level == 'hard' }
        when 'extreme'
            @country_level = @countries.select { |country| country.level == 'extreme' }
        end
    end 
end

def score_messages()
    bar = ProgressBar.new
    100.times do
      sleep 0.03
      bar.increment!
    end 
    puts ''
    # display score to user
    puts "Your score is #{@quiz_score}/10"
    # display a message based on value of score
    puts ''
    if @quiz_score < 2
        puts 'Buy an Atlas you dumbarse 🖕'
    elsif @quiz_score <= 4
        puts 'You kinda suck'
    elsif @quiz_score <= 6
        puts 'Cool, so you know the country you\'re in'
    elsif @quiz_score <= 8
        puts 'So you have a couple of stamps on your passport'
    elsif @quiz_score <= 9
        puts 'Soooooo close!'
    else @quiz_score = 10
        puts 'Well done, you know your countries 👌'
    end
end
