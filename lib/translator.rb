require "yaml"

def load_library(path)
  emojis = YAML.load_file(path)
  sorted_list = emojis.reduce({}) do
    |memo, ()
  end 
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end