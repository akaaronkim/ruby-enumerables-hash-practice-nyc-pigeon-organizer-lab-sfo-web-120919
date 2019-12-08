def nyc_pigeon_organizer(data)
  pigeon_list = {}

pigeon_data.each do |property, property_hash|
  property_hash.each do |values, birds_array|
    birds_array.each do |name|
      if pigeon_list[name]
        if pigeon_list[name][property]
          pigeon_list[name][property] << values
        else
          pigeon_list[name][property] = values
        end
      else
        pigeon_list[name] = {property => [values]}
      end
    end
  end
