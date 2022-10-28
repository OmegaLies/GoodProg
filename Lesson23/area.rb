# encoding: UTF-8

def method
  c = true
  puts <<HEREDOC
Переменная '$a': #{ "global-variable" if defined?($a)}
Переменная 'b': #{ "local-variable" if defined?(b)}
Переменная 'c': #{ "local-variable" if defined?(c)}
HEREDOC
end


$a = 10
b = "abc"
method
puts <<HEREDOC
Переменная '$a': #{ "global-variable" if defined?($a)}
Переменная 'b': #{ "local-variable" if defined?(b)}
Переменная 'c': #{ "local-variable" if defined?(c)}
HEREDOC

