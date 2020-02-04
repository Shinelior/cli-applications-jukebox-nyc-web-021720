# Add your code here
require "pry"

def help

puts  /I accept the following commands:/
puts /- help : displays this help message/
puts /- list : displays a list of songs you can play/            
puts /- play : lets you choose a song to play/                   
puts /- exit : exits this program/


end

def play(songs)
  
puts  "/Please enter a song name or number:/" 
user_song = gets.strip


 songs.each_with_index do |song,index|
  
 song_number = index + 1
# binding.pry
if user_song.to_i == song_number
 
    return  puts "/playing #{song}/"
    
  elsif user_song == song
   
 return puts "/playing #{song}/"
   
 else
  return puts  /Invalid input, please try again/
  
end


end

end

def list(songs) 
  new_array = []
  songs.each_with_index do |song,index|
  
  song_number = index + 1
  new_array << "#{song_number}. #{song} " 
  

 end
 #binding.pry
return new_array.each do |song| 
   puts "/#{song}/"
 end
 

end





def exit_jukebox
  puts "Goodbye"
end
  
def run(songs)
 puts  "Please enter a command:"
  user_command = gets.strip
    binding.pry 
  while user_command == "list" || user_command == "exit" || user_command == "play" || user_command == "help"
        

  if  user_command == "play"
     #puts  "/Please enter a song name or number:/"
   # user_song = gets.strip

    play(songs)
     # user_song = play(songs)
   
      exit_jukebox
     
    elsif  user_command == "list"
       list(songs)
       exit_jukebox
      
    elsif user_command == "help"
       help 
       exit_jukebox
      
    elsif user_command == "exit"
      exit_jukebox
      break
    #user_command = gets.strip
end
#binding.pry 
user_command = gets.strip
end

  
end  
