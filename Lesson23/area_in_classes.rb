# encoding: UTF-8

class MyClass
  def initialize
    @variable = 0
  end
  def check_variables
    puts <<HEREDOC
Переменная '@variable': #{ "instance-variable" if defined?(@variable)}
Переменная 'variable': #{ "local-variable" if defined?(variable)}
HEREDOC
  end
end

variable = "ssdf"
tmp = MyClass.new
tmp.check_variables
puts <<HEREDOC
Переменная '@variable': #{ "instance-variable" if defined?(@variable)}
Переменная 'variable': #{ "local-variable" if defined?(variable)}
HEREDOC