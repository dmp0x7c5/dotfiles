# Rakefile taken from: https://github.com/r00k/dotfiles
# Backup option included
# Thanks

require 'rake'

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README.md].include? file
    
    if File.exist?(File.join(ENV['HOME'], ".#{file}"))
      if replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file}? [ynaqb] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'b'
          backup_file(file)
          link_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file}"
        end
      end
    else
      link_file(file)
    end
  end

  # Handle ssh pubkey on its own
  #puts "Linking public ssh key"
  #system %Q{rm "$HOME/.ssh/id_dsa.pub"}
  #system %Q{ln -s "$PWD/id_dsa.pub" "$HOME/.ssh/id_dsa.pub"}

  # Need to do this to make vim use RVM's ruby version
  #puts "Moving zshenv to zshrc"
  #system %Q{sudo mv /etc/zshenv /etc/zshrc}

  if File.exists?(File.join(ENV['HOME'], ".tmp"))
    system %Q{mkdir ~/.tmp}
  end

end

def backup_name(file)
  ".bkup.#{file}"
end

def replace_file(file)
  system %Q{rm "$HOME/.#{file}"}
  link_file(file)
end

def backup_file(file)
  old_name = ".#{file}"
  new_name = backup_name(file)
  puts "backup ~/#{old_name} as ~/#{new_name}"
  system %Q{mv "$HOME/#{old_name}" "$HOME/#{new_name}"}
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end

