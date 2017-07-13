def nyc_pigeon_organizer(data)
new_hash = Hash.new(0)
data.each do |attribute, branch|
  branch.each do |value, array_names|
    array_names.each do |name|
      if !new_hash.has_key?(name)
        new_hash = new_hash.merge(name => {attribute => [value.to_s]})
      ##  binding.pry
      elsif new_hash.has_key?(name)
        if new_hash[name].has_key?(attribute)
          new_hash[name][attribute] << value.to_s
        else
          new_hash[name] = new_hash[name].merge(attribute => [value.to_s])
          ##binding.pry
        end
      else
      end
    ##bindng.pry
  end
end
end
new_hash
  # write your code here!
end
