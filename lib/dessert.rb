class Dessert
	attr_accessor :name, :calories
  def initialize(name, calories)
    # your code here
		@calories = calories	
		@name 		= name
		@flavor		= nil
  end
  def healthy?
    # your code here
		@calories < 200
  end
  def delicious?
    # your code here
		true if @flavor != 'licorice'
  end
end

class JellyBean < Dessert
	attr_accessor :flavor
  def initialize(flavor)
    # your code here
		@flavor 	= flavor
		@calories = 5
		@name 		= @flavor.to_s + " jelly bean"
  end
end
