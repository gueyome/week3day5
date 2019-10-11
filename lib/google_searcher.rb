require 'launchy'

def check_if_user_gave_input
    abort("Il manque un petit détail. Indique ta recherche derriere la commande 'google_searcher'. N'oublie pas l'espace entre les 2.") if ARGV.empty?
end

def get_url
    check_if_user_gave_input
    request = ARGV
    request = request.join("+")
    return url = "https://www.google.com/search?q=#{request}"
end


def main
    Launchy.open(get_url)
end

main
