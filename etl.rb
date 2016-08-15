class ETL
  def self.transform(old)
    # new_hash = {} #each with object instead?
    old.each_with_object({}) do |(k, v), new_hash|
      v.each do |arg|
        new_hash[arg.downcase] = k
      end
    end
    new_hash
  end
end