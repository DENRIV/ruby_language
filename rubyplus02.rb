def reverse_alternate(string)
    string.gsub(/[^\s]+/).with_index { |w, idx| idx.even? ? w : w.reverse }
  end
  
  puts reverse_alternate("Apples Are Good")
  # "Apples erA Good"