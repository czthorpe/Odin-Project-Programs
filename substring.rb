dictionary = ["below","down","go","going?","horn!","how231","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dict)
  dict.map! { |s| s.gsub(/[^a-zA-Z]/, '') }
  p dict
end

substrings("low", dictionary)