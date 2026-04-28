def substrings(sentence, dictionary)
  words = sentence.downcase.split(" ")
  filtered_results = []

  #Identify words in dictionary that match with each word in the sentence
  # and add those words to a new array
  words.each do |word|
    filtered_dictionary = dictionary.select {|word_dict| word.match?(word_dict)}
    filtered_results << filtered_dictionary
  end

  #Calculation of the occurrence of each word in the filtered results with reduce
  final_result = filtered_results.flatten.reduce(Hash.new(0)) do |result, next_value|
    result[next_value] += 1
    result
  end

  puts final_result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
