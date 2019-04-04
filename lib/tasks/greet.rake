namespace :greet do
  
  desc "Helloを表示するタスク"

  task say_hello: :environment do
    puts "Hello!"
  end
  
  desc "GoodByを表示するタスク"

  task say_goodby: :environment do
    puts "GoodBy!"
  end
end

namespace :greet_when_dating do

  desc "容姿を褒める"

  task praise_appearance: :environment do
    puts "You are beautifull!!"
  end
  
  desc "ファッションを褒める"

  task praise_fashion: :environment do
    puts "That's fashionable!!"
  end
end