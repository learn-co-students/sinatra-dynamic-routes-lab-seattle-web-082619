require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    name = params[:name]
    name.reverse
  end

  get "/square/:number" do
    num = params[:number].to_i
    num *= num
    num.to_s
  end

  get "/say/:number/:phrase" do
    phrase = params[:phrase]
    collection = ""
    params[:number].to_i.times { collection << phrase }
    collection
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "multiply" 
      solution = params[:number1].to_i * params[:number2].to_i
      solution.to_s
    when "subtract" 
      solution = params[:number1].to_i - params[:number2].to_i
      solution.to_s
    when "add" 
      solution = params[:number1].to_i + params[:number2].to_i
      solution.to_s
    when "divide" 
      solution = params[:number1].to_i / params[:number2].to_i
      solution.to_s
    end
  end
end
