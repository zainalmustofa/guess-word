class MyFile
  def initialize
    @file = './src/key.txt'
    @lvl = []
  end

  def open
    f = File.open(@file, "r")
    
    f.each_line { |line|
      @lvl << line.strip
    }
    
    return @lvl
  end
end