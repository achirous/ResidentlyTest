def getAddress (hash)
    address = nil
    if (hash[:house_name]!=nil || hash[:house_number]!=nil) && hash[:street_line_1]!=nil && hash[:town_or_city]!=nil && hash[:postcode]!=nil
        if hash[:subpremise]!=nil
            address = "#{hash[:subpremise]}, "
        end
        if hash[:house_name] != nil
            if address != nil
                address = address + "#{hash[:house_name]}, \n"
            else
                address = "#{hash[:house_name]}, \n"
            end
        else
            if address != nil
                address = address + "\n"
            end
        end
        if hash[:house_number] != nil
            if address != nil
               address = address + "#{hash[:house_number]} "
           else
               address = "#{hash[:house_number]} "
           end
        end
        address = address + "#{hash[:street_line_1]}, \n"
        if hash[:street_line_2] != nil
            address = address + "#{hash[:street_line_2]},\n"
        end
        address = address + "#{hash[:town_or_city]},\n"
        if hash[:region] !=nil
            address = address + "#{hash[:region]},\n"
        end
        address = address + "#{hash[:postcode]}" 
    else
        puts "Please fill in all the necessary fields"
    end
    return address
end

puts getAddress({
  :subpremise => "Apt 6",
  :house_number => "22",
  :house_name => nil,
  :street_line_1 => "Bailey Rd",
  :street_line_2 => nil,
  :town_or_city => "Sale",
  :region => "Greater Manchester",
  :postcode => "M33 1AX"
})


