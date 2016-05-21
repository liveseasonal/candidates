require 'pry'


# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  binding.pry
  candidate.each do |candidate|
    if @candidate[:id] == id
      return candidate
    else
      nil
    end 
  end    
end

def experienced?(candidate)
    candidate[:years_of_experience] >= 2
end

# More methods will go below

def github_points?(candidate)
  
    candidate[:github_points] >= 100
end 

def two_languages?(candidate)
   candidate[:languages].include?("Ruby") ||  candidate[:languages].include?("Python") 
end  

def applied?(candidate)
  candidate[:date_applied] >= 15.days.ago.to_date
end  

def age(candidate)
  candidate[:age] >= 18
end

def qualified_candidates(candidates)
  @qualified_candidates = []

  candidates.each do |candidate|
    if experienced?(candidate) && github_points?(candidate) && two_languages?(candidate) && applied?(candidate) && age(candidate)
      @qualified_candidates << candidate
    end
  end  
    return (@qualified_candidates)
end  


#Use sort_by
#Only put the number down want the hash

def ordered_by_qualifications(candidates)
  ordered_candidates = candidates.sort_by { |candidate| [candidate[:years_of_experience], candidate[:github_points]] }
  return (ordered_candidates).reverse

  # @ordered_by_qualifications = []

  # candidates.each do |candidate|
  #   years_exp s=candidate[:years_of_experience]
  #   @ordered_by_qualifications << years_exp
  #     if years_exp == years_exp += 1
  #       candidate[:github_points] > candidate[github_points] += 1
  #     end  
    
  # end
  # return @ordered_by_qualifications.sort!.reverse
  #This line returns the values 12..1   
   # return @ordered_by_qualifications.sort!.reverse
end  

puts "Welcome to the game"
puts "Please choose from the following options
      :find
      :all
      :qualified
      :quit"

input = gets.chomp

case input

when "find" then find(id)

when "all" then 
  @candidates.each do |candidate|
        pp candidate
  end

when "qualified" then  
  pp qualified_candidates(@candidates)

  # puts qualified_candidates(@candidates)  
# pp ordered_by_qualifications(qualified_candidates(@candidates))

when "quit" then pp "Fcuk you"
       

else puts "Good day Sir"

end  










































