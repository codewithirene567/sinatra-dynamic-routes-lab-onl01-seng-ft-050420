require_relative 'config/environment'

class App < Sinatra::Base
  binding.pry
  # Write your code here!
get '/reversename/:name'
@name = params[:name].reverse
return "#{@name}"
end

end
