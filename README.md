#RubykeyWord Gem
rubykeyword is a gem that lets you know if a string is a Ruby Keyword or not. Find the definition of the keyword, example and also search for similar keywords in Ruby.

#Installation

<tt>gem install rubykeyword</tt>

#Require

<tt>require 'rubykeyword'</tt>

##Example
    string1 = "Thor"
    string2 = "end"

    srting1.keyword?       # Will return false since its not a ruby keyword
    srting2.keyword?       # Will return true as end is a ruby keyword
    srting2.define         # Will return definition for keyword end
    string2.example        # Will print an example for the keyword use
    string2.example_string # Will return an example string
    string2.seek           # Will return an Array of keywords similar to string2 

#Reference
<tt>http://ruby-doc.org/docs/keywords/1.9/</tt>
