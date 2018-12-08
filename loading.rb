def loading(time)
  spinner = Enumerator.new do |e|
    loop do
      e.yield '|'
      e.yield '/'
      e.yield '-'
      e.yield '\\'
    end
  end

  1.upto(100) do |i|
    progress = "=" * (i/5) unless i < 5
    printf("\rstart: [%-20s] %d%% %s", progress, i, spinner.next)
    sleep(time)
  end
end