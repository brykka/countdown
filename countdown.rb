require 'Date'
require 'launchy'

# days = Date.strptime('10-06-2019', '%m-%d-%Y') - Date.today

start = Date.new(2019, 7, 6).yday
finish = Date.new(2019, 10, 6).yday
today = Date.today.yday
percentage = 100 * (today - start) / (finish - start)
days = finish - today

if today == finish
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "he is coming back!! that\'s 100\% done BABY!!"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

else

  puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
  puts "        There's only #{days.to_i} more days until Nick comes back!   "
  puts "                   That's #{percentage}\% complete                    "
  feeling = ''

  until feeling == 'q'
    puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    puts '                   How are you feeling?                        '
    puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    puts 'super sad | ok? | need distraction | need to talk to him | exit'
    puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    feeling = gets.chomp

    case feeling
    when 's'
      puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
      puts 'ok do you want to find something useful or more sad?'
      puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
      sad = gets.chomp
      if sad == 'u'
        puts 'practise coding'
      elsif sad == 's'
        puts 'sad music and walk time'
      else
        puts 'hang in there muffin! it\'s only #{days.to_i} days left! '
      end

    when 'd'
      puts '~~~~~~~~~~~~~~~~~~~~~~~~~~'
      puts 'distractions are limitless'
      puts '~~~~~~~~~~~~~~~~~~~~~~~~~~'
      Launchy.open('https://www.google.com/search?q=cute+cat+videos&oq=cute+cat+vi&aqs=chrome.0.0j69i57j0l4.4705j0j1&sourceid=chrome&ie=UTF-8')

    when 'o'
      puts '~~~~~~~~~~~~~~~'
      puts 'good job kiddo!'
      puts '~~~~~~~~~~~~~~~'

    when 't'
      puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
      puts 'ok Line message him, Zoom call him'
      puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    end
  end
end
