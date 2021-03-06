require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end # /reversename/:name route

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num ** 2
    "#{@square}"
  end # /square/:number route

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @final = @phrase * @num
    "#{@final}"
  end # /say/number/phrase route

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end # say/word1.. route

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operation
    when "add"
      @sum = @num1 + @num2
      "#{@sum}"
    when "subtract"
      @difference = @num1 - @num2
      "#{@difference}"
    when "multiply"
      @product = @num1 * @num2
      "#{@product}"
    when "divide"
      @divisor = @num1 / @num2
      "#{@divisor}"
    else
    end
  end # /:operation/number1/number2

end
