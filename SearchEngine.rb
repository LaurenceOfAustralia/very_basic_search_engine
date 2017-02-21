require 'open-uri'

class SEARCH

  puts 'Please enter in your search term.'

  user_input = gets
  user_input_array = user_input.split(/\W+/)

  puts ''
  puts 'Loading...'


  url1 = 'http://gutenberg.net.au/ebooks01/0100021.txt'
  url2 = 'http://gutenberg.net.au/ebooks01/0100011.txt'
  url3 = 'http://gutenberg.net.au/ebooks02/0200791.txt'
  url4 = 'http://archive.org/stream/thethreemusketee01257gut/1musk11.txt'

  books = [open(url1).read(), open(url2).read(), open(url3).read(), open(url4).read()]

  result = [0, 0, 0, 0]
  amount_terms = 1

  user_input_array.each do |current_word|

    books.each do |current_book|
      search = current_book.scan(/#{current_word}/)

      search.each do |a|

        if current_book == books[0]
          result[0] = result[0] + 1
        end

        if current_book == books[1]
          result[1] = result[1] + 1
        end

        if current_book == books[2]
          result[2] = result[2] + 1
        end

        if current_book == books[3]
          result[3] = result[3] + 1
        end

      end
    end
    puts ''
    puts "For word number #{amount_terms}."
    puts "1984 got #{result[0]} results."
    puts "Animal farm got #{result[1]} results."
    puts "A Room of One's Own got #{result[2]} results."
    puts "The three Musketeers got #{result[3]} results."
    
    result = [0, 0, 0, 0]
    amount_terms = amount_terms + 1
  end
end
