xml.instruct! :xml, version: "1.0", encoding: "UTF-8"

xml.guesses do
  @guesses.each do |guess|
    xml.guess guess
  end
end