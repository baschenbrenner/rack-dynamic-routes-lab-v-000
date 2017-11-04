require 'pry'
class Application

  def call(env)
    req = Rack::Request.new(env)
    resp = Rack::Response.new

    if req.path.include? ("/items/")

      search_item=req.path.split("items/").last
      found_item=@@items.select {|item| item.name==search_item}
      if found_item
      found_item[0].price
      else
      resp.write "Item not Found"
      resp.status = 400
    end
        #binding.pry
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end


end
