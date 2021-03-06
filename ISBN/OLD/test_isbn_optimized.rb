# Requirements
# - Takes a string
# - Check for invalid test_isbn_lenght_10_chars
# - Accept X on last position
# - Return true or false
# - Check position of string 

require "minitest/autorun"
require_relative "isbn_optimized.rb"

class TestIsbn < Minitest::Test


# #ISBN10 TESTS

# def test_isbn_lenght_10_chars
# 	assert_equal(true,check_length(["978 5 471 486"]))
# end

# def test_isbn_incorret_number_of_chars
# 	assert_equal(false,check_length(["978 471 486"]))
# end

def test_isbn_10_with_x
	assert_equal(["978547148x","9785471486", "9785471489"],check_number_isbn10(["978 5 47148x","978-0-471-aaaa	","978 5 471 486", "978 5 471 489"]))
end

#Just check valid format ISBN(use def check_number_isbn10 before)
def test_isbn_check_sum_10
	assert_equal(["0471958697","0321146530","877195869x"],check_sum_10(["0471958699","0471958697","0321146530","877195869x"]))
end

# def test_isbn_check_sum_10_invalid
# 	assert_equal(false,check_sum_10(["0471958695","0-321-14653-1","877195868x"]))
# end


#ISBN 13 
def test_isbn_13_length
	assert_equal(["9785471486425"],check_number_isbn13(["978 5 471 486-425","978 5 471 aa6-425"]))
end

 def test_isbn_has_13_with_invalid_chars
 	assert_equal([ ],check_number_isbn13(["14253647362","978-0 471-888aaa"]))
 end

def test_isbn_check_sum_13
 	assert_equal(["9780470059029", "9780131495050", "9780471486480"],check_sum_13(["9780470059029", "9780131495050", "9780471486480"]))
end

# def test_isbn_check_sum_13_invalid
# 	assert_equal(false,check_sum_13(["9780470059029", "978-0-13-149505-0", "978 0 471 48648 3"]))
# end

end

