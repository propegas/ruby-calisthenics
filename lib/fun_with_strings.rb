module FunWithStrings
  def palindrome?
    # your code here
		# 1. Simple string
		str = self.downcase.gsub(/[^a-z]/, '')
		str.reverse == str
  end
  def count_words
    # your code here
		word_array = {}
		text = self.downcase.gsub(/[^a-z\ ]/, '')
		text.split.each do |word|
			word_array[word] !=nil ? word_array[word] += 1 : word_array[word] = 1
		end
		return word_array
  end
  def anagram_groups
    # your code here
		group_array = []
		text = self.split
		#text << self
		group_array = text.group_by { |word| word.downcase.chars.sort}.values

		return group_array
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
