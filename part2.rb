movies = []

    movies << {
      title: "Forest Gump",
      budget: 55,
      stars: ["Tom Hanks"]
    }
    movies << {
      title: "Star Wars",
      budget: 11,
      stars: ["Mark Hamill", "Harrison Ford"]
    }
    movies << {
      title: "Batman Begins",
      budget: 150,
      stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
    }
    movies << {
      title: "Titanic",
      budget: 200,
      stars: ["Kate Winslet", "Leonardo DiCaprio"]
    }
    movies << {
      title: "Inception",
      budget: 160,
      stars: ["Leonardo DiCaprio", "JGL"]
    }

hundo_club = []
caprio_club = []

movies.each do |movie|
  if (movie[:budget] >= 100)
    hundo_club << movie
  end
  movie[:stars].each do |actor|
    if actor == "Leonardo DiCaprio"
      caprio_club << movie
    end
  end
end

puts hundo_club
puts caprio_club
