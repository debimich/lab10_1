class SqrtController < ApplicationController
  def input
  end

  def view
    a = params[:v].to_i
    @guesses = [a]
    epsilon = 0.001

    loop do
      next_guess = 0.5 * (@guesses.last + a / @guesses.last)
      @guesses << next_guess
      break if (next_guess * next_guess - a) / a < epsilon
    end

    respond_to do |format|
      format.html
      format.xml {render xml: @guesses.to_xml(root: 'guesses')}
    end

    xml_content = "<?xml-stylesheet type=\"text/xsl\" href=\"/some_transformer.xslt\"?>\n" + @guesses.to_xml(root: 'guesses', skip_instruct: true)
    xml_content.prepend("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")

    File.write('debug.xml', xml_content)
  end
end
