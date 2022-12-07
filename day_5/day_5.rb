ary = []
crates = []
moves = []
stack = {}
def string_to_code(string, test)
    array = []
    data = []
    moves_data = string.scan(/\d+/).map(&:to_i)
    how_many_move = moves_data[0].to_i
    from = moves_data[1].to_i
    to = moves_data[2].to_i
    data = test[from - 1].values.first.pop(how_many_move)
    t=[]
    data.map do |x| #prva cast uhlohy zmeniť data na data.map(&:reverse)
        test[to -1].values.first << x
    end
    test
end

File.open("day_5/input_data_2.txt") do |f|
    moves<< f.readlines
end
File.open("day_5/input_data.txt") do |f|
    lines = f.readlines
    lines.each do |s|
        ary<< s.split('')
    end

    ary.first.size.times do |n|
        crates<< ary.map{|a| a[n] unless [" ","[","]", "\n"].include? a[n]}.compact
    end

stack = crates.reject(&:empty?).map(&:reverse).map{|x|{x.first => x[1..-1]}} #
end 
=begin
p stack
moves.first.map do |x|
    p x
=end

moves.first.map do |x|
   stack = string_to_code(x,stack)
end
p stack.map{|x|x.values.last.last}.join

#string_to_code('move 3 from 1 to 3', stack)
# stack
#stack = string_to_code('move 3 from 1 to 3', stack)
#p stack = string_to_code('move 2 from 2 to 1', stack)
#p stack = string_to_code('move 1 from 1 to 2', stack)
#stack[0].values.first.push stack[1].values.first.delete_at(-1)
