require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @answer = params[:number].to_i
    @answer = @answer * @answer
    "#{@answer}"
  end

  get '/say/:number/:phrase' do
    @x = 0
    while @x != params[:number]
      "#{params[:phrase]}"
      @x = @x + 1
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    erb :reversename
  end

  get '/:operation/:number1/:number2' do
    erb :reversename
  end

end
