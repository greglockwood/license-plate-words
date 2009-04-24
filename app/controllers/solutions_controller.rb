class SolutionsController < ApplicationController
	def initialize
		@solutionsModel = Solutions.new
		
		# BRUTE FORCE
		brute_force = lambda {
			words_list = Array.new
			plain_words = Array.new
			l_words = Array.new
			IO.foreach(RAILS_ROOT + '/dict/D8.dic') do |plain_word| 
				plain_word.chop!
				if /^[a-z]{3}$/i.match(plain_word):
					plain_words.push(plain_word)
				end
			end
			if plain_words.blank? do
				plain_words.each do |word|
					IO.foreach(RAILS_ROOT + '/dict/D8.dic') do |l_word| 
						l_word.chop!
						if 'l' + word == l_word:
							words_list.push(word)
						end
					end
				end
			end

			return words_list
		end
		}
		@solutionsModel.push('Brute Force', 'Awful, brute force algorithm with O(n^3) complexity, I think.', brute_force)
		
		# other methods pending
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
