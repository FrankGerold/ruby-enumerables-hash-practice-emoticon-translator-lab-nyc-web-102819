require "yaml"

def load_library(path)
  emojis = YAML.load_file(path)
  sorted_list = emojis.reduce({}) do
    |memo, (definition, emoticons)|
    if !memo[:get_meaning]
      memo[:get_meaning] = {}
    end
    if !memo[:get_emoticon]
      memo[:get_emoticon] = {}
    end
    emoticons.each do
      |emoji|
      memo[:get_meaning][emoji] = definition.to_s
    end
    if !memo[:get_emoticon][emoticons[0]]
        memo[:get_emoticon][emoticons[0]] = []
    end
    memo[:get_emoticon][emoticons[0]] << emoji
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