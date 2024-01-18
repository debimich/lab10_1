xml.instruct! :xml, version: "1.0", encoding: "UTF-8"
xml.instruct! 'xml-stylesheet', type: 'text/xsl', href: '/some_transformer.xslt' 

xml.guesses do
  @guesses.each do |guess|
    xml.guess guess
  end
end