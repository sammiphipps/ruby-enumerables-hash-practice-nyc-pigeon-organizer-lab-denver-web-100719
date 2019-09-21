def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |color_gender_lives, hash|
    color_gender_lives.each do |attribute, pigeons|
      pigeons.each do |name|
        if pigeon_list[name]
          pigeon_list
        else
          pigeon_list[name][color_gender_lives].push
        end
      end
    end 
  end
  pigeon_list
end
