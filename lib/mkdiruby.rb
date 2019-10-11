def check_if_user_gave_input
    abort("Il manque un petit détail. Indique le nom de ton dossier sans espace") if ARGV.empty?
    return
end

def create_folder
    check_if_user_gave_input
    folder_name = ARGV.join.to_s
    Dir.mkdir(folder_name)
    Dir.mkdir("#{folder_name}/lib")
    gemfile = File.open("#{folder_name}/gemfile","a+")
    gemfile.puts("source 'https://rubygems.org'")
    gemfile.puts("ruby '2.5.1'")
    gemfile.puts("gem 'rspec'")
    gemfile.puts("gem 'rubocop', '~> 0.57.2'")
    gemfile.puts("gem 'rubygems'")
    gemfile.puts("gem 'nokogiri'")
    gemfile.puts("gem 'open-uri'")
    env = File.open("#{folder_name}/.env","a+")
    gitignore = File.open("#{folder_name}/.gitignore","a+")
    gitignore.puts("#{folder_name}/.env")
    readme = File.open("#{folder_name}/Readme.md","a+")
    readme.puts("Ceci est un programme Ruby")

    Dir.chdir("/Users/mycuistot/Downloads/#{folder_name}") #do
        system("bundle install")
        system("git init")
        system("rspec --init")
    #end

end

create_folder


