class ApplicationController < ActionController::Base
  def hello
    render html: "Welcome to teh Clio Hackathon!"
  end
end
