require'pry'

def reformat_languages(languages)
  reformatted_hash = {}
  languages.each do |style, languages2|
    languages2.each do |language, type_info|
      if reformatted_hash[language] == nil
        reformatted_hash[language] = type_info
        reformatted_hash[language][:style] = []
      end
      reformatted_hash[language][:style] << style
    end
  end
  reformatted_hash
end




# def reformat_languages(languages_hash)
#   new_hash = {}
#   languages_hash.each do | style, langs|
#     langs.each do |lang, attribute|
#       if new_hash[lang] == nil
#         new_hash[lang] = attribute
#         new_hash[lang][:style] = []
#       end
#       new_hash[lang][:style] << style
#     end
#   end
#   new_hash
# end



# def reformat_languages(languages)
# new_hash = {}
# languages.each do |style, language|
#   language.each do |language_name,type|
#     if new_hash[language_name] == nil
#       new_hash[language_name] = type
#     end
#     new_hash[language_name][:style] = []
#     new_hash[language_name][:style] << style
#   end
# end
# new_hash[:javascript][:style] << :oo

# new_hash
# end
