class WrongFruitError < StandardError; end
class NotRealBestFriendError < StandardError; end
# PHASE 2
def convert_to_int(str)
  Integer(str)
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit.downcase
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise StandardError#when this method is called, 
    #it may produce this error, we'll handle it below
  end 
end

def feed_me_a_fruit

  
    puts "Hello, I am a friendly monster. :)"

    begin #We want the retry to come back to this point

    puts "Feed me a fruit! (Enter the name of a fruit:)"

    maybe_fruit = gets.chomp

    reaction(maybe_fruit) 
    #this is exactly the point where code tries to exec
    #but runs into Line 14, the error we threw in #reaction,
    #well set up the rescue here
    rescue StandardError
      #rescue will work like this:
      
      if maybe_fruit.downcase == "coffee"
      #if the input was "coffee", allow us to retry 
      #and go back to line 22
        puts "Try again! #{maybe_fruit} is my favorite!"

        retry

      else
      #Raise error and break out of the code.  
        raise WrongFruitError.new("Not a fruit! D:<")

      end
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)

    if (yrs_known < 5)
      raise NotRealBestFriendError
    elsif (name.length <= 0) || (fav_pastime.length <= 0)
      raise NotRealBestFriendError.new("What do you mean?") 
    end
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known} years. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey #{@name}, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


