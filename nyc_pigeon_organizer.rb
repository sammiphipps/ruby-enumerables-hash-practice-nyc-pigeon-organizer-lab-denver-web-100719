def nyc_pigeon_organizer(data)
  pigeon_list = {}
  #go through data and grab the color/gender/lives key and their hash
  data.each do |color_gender_lives, hash|
    #go through each of the associated hashes attached to the color/gender/lives key and get the statistics and pigeon names 
    hash.each do |stats, pigeons|
      #for each of the pigeons in the associated array 
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
