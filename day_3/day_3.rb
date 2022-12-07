ary = ['vJrwpWtwJgWrhcsFMMfFFhFp','jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL','PmmdzqPrVvPwwTWBwg','wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn','ttgJtRGJQctTZtZT','CrZsJsPPZsGzwwsLwLmpwMDw']
p ary.size

fin = []
test = []
a = 0
ary.each_slice(3) do |x|
  
  start = x[0] #.length / 2
  ends = x[2] #.length
  fin << x[a].chars.select{|f| f if x[a+1].chars.include?(f) && x[a+2].chars.include?(f)}.uniq
# x[0..start - 1].chars.select{|y| x[start..ends].chars.include? y}.uniq
end
alphabet_array = [*'a'..'z', *'A'..'Z']
letters = []
alphabet_array.each_with_index{|h, index| letters<< {h=>index +1} }
#p fin

p fin.map{|x| letters.map{|l|l[x.first]}.compact}.flatten.inject(:+)
