require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename' do
    "Math!"
  end

  get "/reversename/:name" do
    @name = params[:name].reverse 
    "The answer is #{@name}"
  end

  get '/square' do
    "Math!"
  end

  get "/square/:one" do
    @square = params[:one].to_i * params[:one].to_i 
    "The answer is #{@square}"
  end

  get '/say' do
    "Math!"
  end

  get "/say/:number/:phrase" do
  	@string = ""
    @array = []
    params[:number].to_i.times {@string += "#{params[:phrase]}\n"}
    "#{@string}"
  end

  get '/say' do
    "Math!"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @array = params[:captures].join(" ")
    "The answer is #{@array}."
  end  

  get '/add' do
    "Math!"
  end

  get "/add/:one/:two" do
    @product = params[:one].to_i + params[:two].to_i
    "The answer is #{@product}"
  end

  get '/subtract' do
    "Math!"
  end  

  get "/subtract/:one/:two" do
    @product = params[:one].to_i - params[:two].to_i
    "The answer is #{@product}"
  end

	get '/multiply' do
    "Math!"
  end

  get "/multiply/:one/:two" do
    @product = params[:one].to_i * params[:two].to_i
    "The answer is #{@product}"
  end

	get '/divide' do
    "Math!"
  end

  get "/divide/:one/:two" do
    @product = params[:one].to_i / params[:two].to_i
    "The answer is #{@product}"
  end
	
end