def nyc_pigeon_organizer(data)
  arranged_pigeon_hash = {}

  pigeon_data.each do |attribute, value_hash|
    value_hash.each do |traits, names_array|
      names_array.each do |name|
        if arranged_pigeon_hash[name] ||= { attribute => [traits] }
          if arranged_pigeon_hash[name][attribute] ||= traits
            arranged_pigeon_hash[name][attribute] << traits
          end
        end
      end
    end
  end
