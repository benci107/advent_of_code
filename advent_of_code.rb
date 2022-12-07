24.times do |n|
    a = n + 1
    Dir.mkdir "day_#{a}"
    File.new("day_#{a}/day_#{a}.rb", "w")
    File.new("day_#{a}/input_data.txt", "w")
end