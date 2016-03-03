require("pg")

class Preorder

  attr_reader(:name, :address, :shoe_size, :quantity)

  def initialize(params)
    @name = params["name"]
    @address = params["address"]
    @shoe_size = params["shoe_size"]
    @quantity = params["quantity"]
  end

  def save
    db = PG.connect({dbname: "shoos", host: "localhost"})
    sql = "INSERT INTO preorder (name, address, shoe_size, quantity) VALUES ('#{@name}', '#{@address}', '#{@shoe_size}', #{@quantity});"
    db.exec(sql)
    db.close
  end

  def details
      details = [@preorder.name, @preorder.address, @preorder.shoe_size, @preorder.quantity]
  end

  def self.all
    db = PG.connect({ dbname: "shoos", host: "localhost"})
    sql = "SELECT * FROM preorder;"
    preorders = db.exec(sql)  
    
  end

end