require_relative 'MyEnumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def my_each(&block)
    @list.each { |item| block.call item }
  end
end

list = MyList.new(1, 2, 3, 4)

list.all? { |e| e < 5 }

list.all? { |e| e > 5 }

list.any? { |e| e == 2 }

list.any? { |e| e == 5 }

puts list.filter(&:even?)


