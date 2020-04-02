require 'pry' 
def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |key, value| 
    value.each do |new_key, names|
      #binding.pry
      names.each do |name|
        #binding.pry
        if !new_hash[name]
          new_hash[name] = {}
        end
        if !new_hash[name][key]
          new_hash[name][key] = []
        end
        new_hash[name][key].push(new_key.to_s)
      end
    end
  end
  new_hash
end
