class SongFighter

 def homer_simpson
    results = {}
    system("xmms2 stop")
    system("xmms2 clear")
    list = Dir.glob("*.mp3")
    list.each do |l|
      results[l.to_sym] = 0
    end
    
    first = list[0]
    second = list[1]
    count = 2
    system("clear")
    
    while(true) do
      time = "3"
      puts "--------- PICK YOUR SONG ------------"
      puts "\n\n lıllı ((((|̲̅̅●̲̅̅|̲̅̅=̲̅̅|̲̅̅●̲̅̅|)))) ıllı \n\n"
      puts '#1: ' + first
      puts '#2: ' + second
      puts "Choose 1 or 2 (or 3 to finish the voting)" 
      
      song = first.gsub(" ", "\\ ")
      system("xmms2 stop")
      system("xmms2 clear") 
      system("xmms2 add " + song)
      system("xmms2 play")
      system("sleep " + time)
      system("xmms2 stop")
      system("xmms2 clear")
      song = second.gsub(" ", "\\ ") 
      system("xmms2 add " + song)
      system("xmms2 play")
      system("sleep " + time)
      system("xmms2 stop")
   
      choice = gets.chomp
      
      if choice == '1'
        results[first.to_sym] = results[first.to_sym]+1
        second = list[count]
      elsif choice == '2'
        results[second.to_sym] = results[second.to_sym]+1 
        first = list[count]
      else
      break
    end

    count = count + 1
    system("clear")
    end
    puts "The results are: "
    results.keys.each do |k|
      puts "#{results[k.to_sym]} - #{k}"
    end
    
 end
  
end

SongFighter.new.homer_simpson	
