class Solutions
	def initialize
		@solutions = Array.new
	end

	def push(title, desc, generate_func)
		soln = Solution.new(title, desc, generate_func)
		@solutions.push(soln)
		self
	end
	
	def list
		@solutions
	end
	
	def [](key)
	    if key.kind_of?(Integer)
	      result = @solutions[key]
	    else
	      result = @solutions.find { |aSolution| key == aSolution.title }
	    end
	    return result
  	end
  	
end
