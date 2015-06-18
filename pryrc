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

Pry.config.pager = true
Pry.config.color = true
Pry.config.history.should_save = true
Pry.config.editor = 'vim'

if defined? Rails
  Pry.commands.alias_command "rr",  'show-routes' rescue nil
  Pry.commands.alias_command "rrg", 'show-routes --grep' rescue nil

  def re
    reload!
  end

  def dm
    ActiveRecord::Migrator.migrate "db/migrate"
  end

  def dr(steps = 1)
    ActiveRecord::Migrator.rollback "db/migrate", steps
  end
end

Pry.commands.alias_command 'x',   'exit' rescue nil
Pry.commands.alias_command 'c',   'continue' rescue nil
Pry.commands.alias_command 's',   'step' rescue nil
Pry.commands.alias_command 'n',   'next' rescue nil

Pry.prompt = [ proc { |obj, nest, _| "#{obj}" + (nest > 0 ? "#{nest}" : '') + ' > ' },
               proc { |obj, nest, _| "#{obj}" + (nest > 0 ? "#{nest}" : '') + ' | ' } ]

