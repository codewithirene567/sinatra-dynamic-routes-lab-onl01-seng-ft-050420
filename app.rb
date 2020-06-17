require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
      @reverse_name = params[:name].reverse
      @reverse_name
    end

  get '/square/:number' do
    @square_number = params[:number].to_i ** 2
    @square_number.to_s

     #2 ** 3        #=> 8
    end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i #define the number by turning it into an integer
    @phrase = params[:phrase] #define phrase
    result = ""
    @num.times do
      result += @phrase
    end
    result
   end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
      word1 = params[:word1]
      word2 = params [:word2]
      word3 = params [:word3]
      word4 = params [:word4]
      word5 = params[:word5]
      @allwords = "#{word1} #{word2} #{word3} #{word4} #{word5}."
      @allwords
    end
end
