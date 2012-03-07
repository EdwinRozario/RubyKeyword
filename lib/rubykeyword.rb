require 'yaml'

class String

  def set_keywords
    @keywords = YAML::load( File.open( 'settings.yaml' ) )
  end

  def keyword?
    set_keywords
    return (@keywords.keys.include? self)
  end

  def define
    set_keywords
    return keyword? ? @keywords[self]['definition'] : false
  end

  def example
    set_keywords
    if keyword?
      return @keywords[self].has_key?('example') ? @keywords[self]['example'] : 'No example'
    else
      return false
    end
  end

end

puts "def".define
