class ETL
  def self.transform(old)
    new_hash = {} #each with object instead?
    old.each do |k, v|
      v.each do |arg|
        new_hash[arg.downcase] = k
      end
    end
    new_hash
  end
end

# old = { 1 => %w(A E I O U) }
#     expected = { 'a' => 1, 'e' => 1, 'i' => 1, 'o' => 1, 'u' => 1 }
