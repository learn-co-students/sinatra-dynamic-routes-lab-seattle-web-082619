require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    params[:name].reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @num *= @num
    "#{@num}"
  end

  get '/say/:number/:phrase' do 
    @return_str = ""
    @num = params[:number].to_i

    @num.times do
      @return_str += params[:phrase]
    end

    return @return_str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @return_str = "" 
    idx = 1
    
    5.times do 
      temp_key = "word" + idx.to_s
      @return_str += (params[temp_key] + " ")
      idx += 1
    end
    @return_str[@return_str.length-1] = "."
    @return_str
  end

  get '/:operation/:number1/:number2' do 
    @return_num = 0

    if params[:operation] == "multiply"
      @return_num = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      @return_num = params[:number1].to_i / params[:number2].to_i
    elsif params[:operation] == "subtract"
      @return_num = params[:number2].to_i - params[:number1].to_i
    elsif params[:operation] == "add"
      @return_num = params[:number1].to_i + params[:number2].to_i
    end

    "#{@return_num}"
  end



end