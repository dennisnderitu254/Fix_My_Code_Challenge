###
#
#  Sort integer arguments (ascending)
#
###

# 1. It creates an empty array called result.
# 2. It loops through each argument in ARGV.
# 3. If the argument is not an integer, it skips to the next argument.
# 4. If the argument is an integer, it converts it to an integer and stores it in a variable called i_arg.
# 5. It then loops through each element in result.
# 6. If the element is less than i_arg, it moves on to the next element.
# 7. If the element is greater than or equal to i_arg, it inserts i_arg at that position and breaks out of the loop.
# 8. If it gets to the end of result and hasn’t inserted i_arg, it appends i_arg to the end of result.
# 9. It then prints out result.

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i

    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
        if result[i] < i_arg
            i += 1
        else
            result.insert(i, i_arg)
            is_inserted = true
            break
        end
    end
    result << i_arg if !is_inserted
end

puts result
