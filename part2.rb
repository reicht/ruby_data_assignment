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

class HundoClub
  def initialize(target_hash)
    @target_hash = target_hash
    @hundo_club = []
    @target_hash.each do |movie|
      if (movie[:budget] >= 100)
        @hundo_club << movie
      end
    end
  end
  def run
    puts @hundo_club
  end
end

class CaprioClub
  def initialize(target_hash)
    @target_hash = target_hash
    @caprio_club = []
    @target_hash.each do |movie|
      movie[:stars].each do |actor|
        if actor == "Leonardo DiCaprio"
          @caprio_club << movie
        end
      end
    end
  end
  def run
    puts @caprio_club
  end
end


hundohouse = HundoClub.new(movies)
hundohouse.run

clubhouse = CaprioClub.new(movies)
clubhouse.run
