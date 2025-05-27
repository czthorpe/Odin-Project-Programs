dictionary = ["below","down","go","going?","horn!","how231","howdy","it","i","low","own","part","partner","sit"]

def substrings(match_string, dict)

  if !match_string.is_a?(Array)
    match_string = match_string.split(" ")
  end

  dict.map! { |str| str.gsub(/[^a-zA-Z]/, '').downcase}
  match_string.map! { |str| str.gsub(/[^a-zA-Z]/, '').downcase}

  dict.reduce(Hash.new(0)) do |matches, dict_word|
    if match_string.any? { |str| str.include?(dict_word)}
      matches[dict_word] += 1
    end
    matches
  end

end

p substrings("low", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
