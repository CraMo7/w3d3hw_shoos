# Take name, address, quantity and size (the only sizes available are 7,8,9,10,11)
# Display a confirmation page with the details they entered
# Each entry should be persisted to a database and all pre-orders displayed on a seperate page


require("sinatra")
require("sinatra/contrib/all") if development?
require_relative("./models/preorder.rb")

get("/"){erb(:homepage)}



post("/preorder") do
  @preorder = Preorder.new(params)
  @preorder.save
  erb(:confirmation)
end


get("/preorder") do
  erb(:preorder)
end

get("/preorderslist") do
  @preorders = Preorder.all
  erb(:preorderslist)
end