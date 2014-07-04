class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{
      # YOUR CODE HERE
		
			def #{attr_name}= (value)
				if not @#{attr_name}_history 
					@#{attr_name}_history = [] << nil				
				end
				prev = @#{attr_name}
				@#{attr_name} = value
				@#{attr_name}_history << prev if prev != nil
			end

		
    }
  end
end

#puts "!!!!!!!!!sdsdsd"
