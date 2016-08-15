class ETL
  def self.transform(old)
    old.each_with_object({}) do |(score, letters), score_per_letter|
      letters.each do |letter|
        score_per_letter[letter.downcase] = score
      end
    end
  end
end