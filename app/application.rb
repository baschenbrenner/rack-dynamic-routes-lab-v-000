require 'pry'
class Application

  def call(env)
    req = Rack::Request.new(env)
    resp = Rack::Response.new

    if req.path.include? ("/items/")
      #binding.pry
    else
      resp.write "File not found"
      resp.status = 404
    end

    resp.finish
  end


end
