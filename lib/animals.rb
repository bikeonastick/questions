
class Animals
  def initialize(the_animals)
    @the_animals = the_animals
    count_animals
  end

  def counts
    @animal_counts
  end

  def count(animal)
    @animal_counts[animal.intern]
  end

  def <<(animal)
    @the_animals << animal
    count_animals
    count(animal)
  end

  private
  def count_animals
    @animal_counts = {}
    @the_animals.each{ |x| 
      key = x.intern
      if ( @animal_counts.has_key?(key) ) 
        @animal_counts[key] = @animal_counts[key] + 1
      else
        @animal_counts[key] = 1
      end
    }
  end


end
