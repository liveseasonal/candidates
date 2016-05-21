# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here



# puts @candidates
# pp qualified_candidates

# puts experienced?(@candidates)
# binding.pry
# puts github_points?(@candidates)

# puts two_languages?(@candidates)
puts qualified_candidates(@candidates)

# puts ordered_by_qualifications(@candidates)
