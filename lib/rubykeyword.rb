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
