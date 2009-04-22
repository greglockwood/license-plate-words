class SolutionsController < ApplicationController
	def initialize
		@solutionsModel = Solutions.new
		simple = lambda { 
			words_list = Array.new
			#IO.foreach(RAILS_ROOT + '/dict/D8.dic') { |word| 
			#	words_list.push(word) # unless word.length != 3 
			#}
			words_list.push('Test')
			return words_list
		}
		@solutionsModel.push('Simple', 'First test', simple)
	end
	
	def index
		@solutions = @solutionsModel.list
		respond_to do |format|
			format.html # index.html.erb
		end
	end
	
	def show
		@solution = @solutionsModel[params[:id]]
		@solution.run
		# @word_list = @solution.words_list
	end
end
