
#---------------------------------------------------------------------------------------------------------------#
def random_pass(option)
    p "Enter length of password:"
    length = gets.chomp.to_i
    pass = ""
    merge = ""
    caps = ('A'..'Z').to_a
    small = ('a'..'z').to_a
    alphabets = small + caps
    
    nums  = ('1'..'9').to_a
    special = ['!','#','$','%','&','*','@']
    
    
    if option == 1
        merge = alphabets
    elsif option == 2
        merge = nums
    elsif option == 3
        merge = alphabets + nums
    else
        merge = alphabets + nums + special
    end
    while length > 0
        pass += merge.sample
        length -= 1
    end
    puts pass
    
end

#--------------------------------------------------------------------------------------------------------------#
puts "Press 1 for Alphabets Password\nPress 2 for Numeric Password\nPress 3 for AlphaNumeric Password\nPress 4 to include special chars"
option = gets.chomp.to_i
random_pass(option)

        