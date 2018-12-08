class Logic
  def initialize(playagain, questions, my_name, score)
    @playagain = playagain
    @questions = questions 
    @my_name = my_name
    $score  = score
  end
  
  def score
    $score
  end

  def name
    @my_name
  end

  def play
    while @playagain == "y"
      score     = 0
      win 			= false
      myWord    = @questions.sample
      randomize = myWord.split("").shuffle.join
      
      puts "Silahkan tebak kata ini"
      puts '...'
      puts
      puts '==='
      puts "Tebak kata: #{randomize}"
      puts '==='
    
      while !win
        print "Jawaban anda: "
        guessed = gets.chomp
    
        if guessed == "exit" then
          break
        end

        # Lets compare our answer and guessed
        unless myWord.eql?(guessed) then
          puts "SALAH! Silakan coba lagi"
        else
          $score += 1
          win = true
          puts "BENAR point anda : #{$score}"
        end
      end
    
      puts "ingin bermain lagi #{@my_name}? (y/n)"
      @playagain = gets.chomp!
    end
  end
end
