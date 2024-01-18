require 'nokogiri'
doc = Nokogiri::XML(File.read('debug.xml'))
xslt = Nokogiri::XSLT(File.read('public/some_transformer.xslt'))
File.write('debug.html', xslt.transform(doc))
