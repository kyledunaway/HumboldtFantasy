@users = 
[
"exercisecattle",
"creakypublisher",
"yorkierear",
"millwrightbitch",
"bearcluster",
"rompmugger",
"eekbale",
"foggydiced",
"spooncub",
"readbarmpot",
"plantsboink",
"umpireornery",
"wildernessvast",
"poplarwoodpecker",
"flingplump",
"letterscrazy",
"pantscypress",
"backpackmotionless",
"slingpicayune",
"hazardbonny",
"unusualrectum",
"ragsimaginary",
"maulbishop",
"vagabondrelish",
"greyrevelation",
"dandelionpace",
"kangarooyak",
"pleasantfloor",
"opossumsliced",
"headybooze"]

begin  
  namespace :db do  
    desc "Populate the development database with some fake data"  
    task :populate => :environment do  
      for i in 0..19
        User.create! :username => @users[i], :password => "123"
      end

      for i in 0..50
        Pick.create! :week_number => rand(0..4), :pick_content => "pick1, pick2, pick3", :username => @users[rand(0..28)]
      end
    end  
  end  
rescue LoadError  
  puts "Please run: sudo gem install forgery"  
end