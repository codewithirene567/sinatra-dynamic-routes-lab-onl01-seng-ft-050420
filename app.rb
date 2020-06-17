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
    @number_phrase = params[:phrase] * [:number]
    @number_phrase.to_s
  end
end
