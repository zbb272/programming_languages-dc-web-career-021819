def reformat_languages(languages)
  new_hash = {}
  style_array = []
  languages.each do | style, langs |
    langs.each do | lang, attribute |
      new_hash[lang] = attribute
    end 
    new_hash.each do | lang, attributes |
      attributes[:style] = []
    end 
  end 
  languages.each do | style, langs |
    new_hash.each do | lang, attributes |
      attributes[:style] << style
    end 
  end 
  new_hash
  puts new_hash
end

