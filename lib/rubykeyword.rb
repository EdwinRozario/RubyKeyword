require 'yaml'

class String

  def set_keywords
    @keywords = YAML::load( File.open( "#{File.expand_path File.dirname(__FILE__)}/settings.yaml" ) )
  end

  def keyword?
    set_keywords
    return (@keywords.keys.include? self)
  end

  def define
    set_keywords
    return keyword? ? @keywords[self]['definition'] : false
  end

  def distance hip, hop
    case
      when hip.empty? then hop.length
      when hop.empty? then  hip.length
      else 
        [(hip[0] == hop[0] ? 0 : 1) + distance(hip[1..-1], hop[1..-1]),
         1 + distance(hip[1..-1], hop),
         1 + distance(hop, hip[1..-1])].min
    end
  end

  def seek
    set_keywords
    result = []
    @keywords.keys.each do |keyword|
      result << keyword if distance(self.downcase, keyword.downcase) <= keyword.length / 2
    end
    result
  end

  def example_string
    set_keywords
    if keyword?
      return @keywords[self].has_key?('example') ? @keywords[self]['example'].join("\n") : "No example"
    else
      return false
    end
  end
  
  def example
    set_keywords
    if keyword?
      puts @keywords[self].has_key?('example') ? @keywords[self]['example'].join("\n") : "No example"
    else
      return false
    end
  end

end
