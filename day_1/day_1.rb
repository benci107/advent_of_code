test_abc = [1000,2000,3000,nil,4000,nil,5000,6000,nil,7000,8000,9000,nil,10000]
final = []

test = test_abc.slice_before{ |e| e.nil? }
  test.each_with_index do |x,index|
    final<< {index => x.compact.inject(:+)}
  end
fin = final.map(&:values).max(3)
print fin.join(',').split(',').map(&:to_i).inject(:+)
