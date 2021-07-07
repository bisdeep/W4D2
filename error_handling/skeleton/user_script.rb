require_relative 'super_useful'

puts "'five' == #{convert_to_int('5')}"

feed_me_a_fruit

begin
    puts "How many years do we know each other?"
    age = gets.chomp.to_i
    puts "What's your name again?"
    name = gets.chomp
    puts "Favorite past-time?"
    fav_pastime = gets.chomp
    sam = BestFriend.new(name, age, fav_pastime)
rescue NotRealBestFriendError
    if age < 5
        raise NotRealBestFriendError.new("We don't know each other much :/") 
        retry
    end
    puts "Sorry... let me get your name and hobby again!"
    puts
    retry
end

sam.talk_about_friendship
sam.do_friendstuff
sam.give_friendship_bracelet
