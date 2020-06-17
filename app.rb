require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
      @reverse_name = params[:name].reverse
      @reverse_name
    end

  get '/square/:number' do
    @square_number = params[:number].to_i ** 2
    @square_number.to_s
    binding.pry
  end
end
