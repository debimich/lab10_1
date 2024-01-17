xml.rss version: "2.0" do
  xml.channel do
    xml.title "Your RSS Title"
    xml.description "Your RSS Description"
    xml.link "http://example.com"

    @guesses.each do |guess|
      xml.item do
        xml.title "Item #{guess}"
        xml.link "http://example.com/items/#{guess}"
        xml.description "Description for item #{guess}"
      end
    end
  end
end