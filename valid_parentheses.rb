class ValidParentheses
  def is_valid(s)
    stack = []
    pairs = { ')' => '(', '}' => '{', ']' => '[' }

    s.each_char do |char|
      if pairs.values.include?(char)
        stack.push(char)
      else
        return false if stack.empty? || stack.pop != pairs[char]
      end
    end
    stack.empty?
  end
end

vp = ValidParentheses.new
input = '(()'
puts vp.is_valid(input)