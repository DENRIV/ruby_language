#Each With Object Example
def clean_string(str)
    str
      .chars
      .each_with_object([]) { |ch, obj| ch == "#" ? obj.pop : obj << ch }
      .join
  end
  
  puts clean_string("aaa#b")
  #aab