def travel(r, zipcode)
  addresses = r.split(",").select { |r| r.include? zipcode }
  house_numbers = addresses.map {|x| x[/\d+/]}.join(",")
  addresses = addresses.each do |address|
      address.gsub!(zipcode, '').gsub!(/\d\s?/, "").rstrip!
  end
  addresses = addresses.join(",")
  if zipcode.empty?
    ':/'
  elsif zipcode.length < 7
    zipcode + ':/'
  elsif house_numbers.empty?
    zipcode + ':/'
  else
    "#{zipcode}:#{addresses}/#{house_numbers}"
  end
end

# Best Practice
def travel(r, zipcode)
  addresses = r.split(",").select { |addr| (addr.split(" ")[-2] + " " + addr.split(" ")[-1])  == zipcode}
  format = addresses.map { |addr| addr.split(" ")[1...-3].join(" ") + " " + addr.split(" ")[-3] }.join(",")
  houses = addresses.map { |addr| addr.split(" ")[0] }.join(",")
  zipcode + ":" + format + "/" + houses
end
