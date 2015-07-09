class Container
  attr_accessor :volume, :parcels

  def initialize(volume)
    @volume = volume
    @parcels = []
  end

  # Adds Parcel
  def add_parcel(parcel)
    @parcels << parcel if
    any_space?(parcel.volume) && !parcel_in_container?(parcel.id)
  end

  # Removes Parcel
  def remove_parcel(id)
    if parcel_in_container?(id)
      @parcels.each do |parcel|
        if parcel.id == id
          puts "Removed the parcel with id: #{parcel.id} from the container"
          @parcels.delete(parcel)
        end
      end
    else
      puts 'Parcel not found within the container'
    end
  end

  # Calulate the Current Space in the container
  def check_current_space
    if @parcels.empty?
      puts @volume.to_i
    else
      sum = 0
      @parcels.each do |parcel|
        sum += parcel.volume.to_i
      end
      puts @volume.to_i - sum
    end
  end

  private

  # Check's if there's any space left
  def any_space?(volume_to_add)
    if current_space > volume_to_add.to_i
      true
    else
      puts 'Can\'t add parcel. Too Big'
      false
    end
  end

  # Calulate the Current Space in the container
  def current_space
    if @parcels.empty?
      @volume.to_i
    else
      sum = 0
      @parcels.each do |parcel|
        sum += parcel.volume.to_i
      end
      @volume.to_i - sum
    end
  end

  # Check's if the parcel is already in the container
  def parcel_in_container?(id)
    found = 0
    if @parcels.empty?
      false
    else

      @parcels.each do |parcel|
        if parcel.id == id
          puts 'Parcel with this ID is already in the container - Can\'t add'
          found = 1
        end
      end
    end
    found == 1 ? true : false
  end
end
