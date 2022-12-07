test = test_abc.slice_before{ |e| e.nil? }
  test.each_with_index do |x,index|
    final<< {index => x.compact.inject(:+)}
  end
fin = final.map(&:values).max(3)
print fin.join(',').split(',').map(&:to_i).inject(:+)
