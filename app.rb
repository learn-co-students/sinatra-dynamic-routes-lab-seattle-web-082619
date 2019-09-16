require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    num = params[:number]
    (num.to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    str = ''
    num.times { str += params[:phrase] }
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(' ') + '.'
  end

  get '/:operation/:number1/:number2' do
    operator = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    p operator
    p num1
    p num2
    case operator
    when 'add'
      (num1 + num2).to_s
    when 'subtract'
      (num1 - num2).to_s
    when 'multiply'
      (num1 * num2).to_s
    when 'divide'
      (num1 / num2).to_s
    end
  end
end
