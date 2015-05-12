requiremets = [
  'rubygems',
  'awesome_print',
  'interactive_editor'
]

requiremets.each do |gem|
  begin
    require gem
  rescue LoadError => err
    puts err
  end
end

#Pry.config.print = proc { |output, value| output.puts value.ai }
Pry.config.pager = true
Pry.config.color = true
Pry.config.history.should_save = true
Pry.config.editor = 'vim'

if defined? Rails
  Pry.commands.alias_command "rr",  'show-routes' rescue nil
  Pry.commands.alias_command "rrg", 'show-routes --grep' rescue nil
  Pry.commands.alias_command 're',  'reload!' rescue nil
end

Pry.commands.alias_command 'x',   'exit' rescue nil
Pry.commands.alias_command 'c',   'continue' rescue nil
Pry.commands.alias_command 's',   'step' rescue nil
Pry.commands.alias_command 'n',   'next' rescue nil

Pry.prompt = [ proc { |obj, nest, _| "#{obj}" + (nest > 0 ? "#{nest}" : '') + ' > ' },
               proc { |obj, nest, _| "#{obj}" + (nest > 0 ? "#{nest}" : '') + ' | ' } ]

