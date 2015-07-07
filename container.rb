class Container

attr_accessor :volume, :parcels

  def initialize(volume)
    @volume = volume
    parcels = []
  end

  # TODO: Rahul
  def add_parcel(parcel)
    byebug
    parcels << parcel if has_space?(parcel.volume) && !parcels.include?(parcel.id)
  end

  # TODO: Ben
  def remove_parcel(id)
   # Pseudo code:
   # parcels.delete(id) if parcels.include?(id)
   # puts "Removed the parcel with id: #{id} from the container"
  end

private

  def has_space?(volume_to_add)
    current_space > volume_to_add
  end

  # TODO: Rahul
  def current_space
    # volume - sum of parcel volume
  end

end
