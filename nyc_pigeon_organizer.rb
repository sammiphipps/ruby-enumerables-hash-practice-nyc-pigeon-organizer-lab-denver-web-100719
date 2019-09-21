def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |color_gender_lives, hash|
    hash.each do |stats, pigeons|
      pigeons.each do |name|
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][color_gender_lives] == nil
          pigeon_list[name][color_gender_lives] = []
        end
        pigeon_list[name][color_gender_lives].push(stats.to_s)
      end
    end 
  end
  pigeon_list
end
