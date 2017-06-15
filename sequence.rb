class Sequence

  def initialize(first_member, steps)
    @member = first_member
    @steps = steps.to_i
  end

  def start
    return nil if @member.empty?
    
    res = [@member]
    @steps.times { res << calculate_next }
    res
  end

  def calculate_next
    divided = ''
    member_arr = @member.chomp.split(//)

    member_arr.each_with_index do |el, i|
      divided += (el == member_arr[i+1]) || ( i == member_arr.size - 1) ? el : (el + '|')
    end
    @member = divided.split('|').inject('') { |res, el| res += el.size.to_s + el[0] }
  end
end
