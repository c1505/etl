class ETL
  def self.transform(old)
    old.each_with_object({}) do |(k, v), new_hash|
      v.each do |arg|
        new_hash[arg.downcase] = k
      end
    end
  end
end