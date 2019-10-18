require "yaml"

def load_library(path)
  emojis = YAML.load_file(path)
  sorted_list = emojis.reduce({}) do
    |memo, (defininition, emoticons)|
    if !memo[:get_meaning]
      memo[:get_meaning] = {}
    end
    end 
    if !memo[:get_emoticon]
      memo[:get_emoticon] = {}
    end
    emoticons.each do
      |emoji|
      memo[:get_meaning][emoji] = defininition.to_s
      
      if !memo[get_emoticon][definition.to_s]
        memo[get_emoticon][definition.to_s] = []
      end
    end
    memo
  end 
  sorted_list
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end