class Container

attr_accessor :volume, :parcels

  def initialize(volume)
    @volume = volume
    @parcels = []
  end

  # TODO: Rahul
  def add_parcel(parcel)
    byebug
    @parcels << parcel if
    has_space?(parcel.volume) && !is_parcel_in_container?(parcel.id)
  end

  # TODO: Ben
  def remove_parcel(id)
   # Pseudo code:
   # parcels.delete(id) if parcels.include?(id)
   # puts "Removed the parcel with id: #{id} from the container"
  end

private

  def has_space?(volume_to_add)
    if current_space > volume_to_add.to_i
      true
    else
      puts 'Can\'t add parcel. Too Big'
      false
    end
  end

  # TODO: Rahul
  def current_space
    if @parcels.empty?
      @volume.to_i
    else
      sum = 0
      @parcels.each { |parcel|
        sum = sum + parcel.volume.to_i
      }
      @volume.to_i - sum
    end
  end

  def is_parcel_in_container?(id)
    found = 0
    if @parcels.empty?
      false
    else
      @parcels.each { |parcel|

        if parcel.id == id
          puts 'Parcel with this ID is already in the container - Can\'t add'
          found = 1
        end
      }
    end
     found == 1 ? true : false
  end

end
