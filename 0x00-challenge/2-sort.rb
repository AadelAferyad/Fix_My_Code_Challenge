###
#
#  Sort integer arguments (ascending) 
#
###

result = []
ARGV.each do |arg| # outer loop
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    temp = 0
    while !is_inserted && i < l do #inner loop for sorting
        if result[i] < i_arg
            temp = result[i]
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
