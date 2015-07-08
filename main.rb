require './container'
require './cube'
require './cylinder'
require './parcel'
require 'byebug'

def create_container
  puts 'Enter the size of your container'
  container_volume = gets.chomp
  container = Container.new(container_volume)
  puts "Your container Size is: #{container.volume}"
end

def create_parcel
  puts 'Let\'s add a Parcel to the Container'
  puts 'Add a Cuboid Parcel (press \'s\') or Cylinder Parcel (press \'c\')?'
  response = gets.chomp
    if response == 's'
      create_cuboid
    elsif response == 'c'
      create_cylinder
    else
      puts "Game over"
    end
end

# TODO: Rahul
def create_cuboid
  puts 'Adding a Cuboid'
  # Get the user's input on id, height, width & breadth of the cube
  # cube = Cube.new(1,2,3,4)
  # puts "Cube id: #{cube.id}"
  # puts "Cube height: #{cube.height}"
  # puts "Cube width: #{cube.width}"
  # puts "Cube bredth: #{cube.breadth}"
  # Add parcel to container
  # container.add_parcel(cube)
end

# TODO: Rahul
def create_cylinder
  puts 'Adding a Cylinder'
  # Get the user's input of the id
  # cyl = Cylinder.new(5,6,7)
  # puts "Cyl id: #{cyl.id}"
  # puts "Cyl height: #{cyl.height}"
  # puts "Cyl radius: #{cyl.radius}"
end

# TODO: Ben - make this work
def remove_parcel
  puts 'Enter the ID of the parcel to remove:'
  parcel.id = gets.chomp
  container.remove_parcel(parcel.id)
end

# Welcome to the game
puts "***********Welcome to Ruby Container Manager*********** \n \n \n"

# Now call create container method to start the program
create_container

# Now call the true methods of the program
puts 'Do you want to Add (press \'a\') or Remove (press \'r\') a Parcel? Press \'q\' to Quit'
while user_input = gets.chomp # loop while getting user input
  case user_input
  when "a"
    puts "Adding parcel"
    create_parcel
  when "r"
    puts "Removing parcel"
    remove_parcel
  when "q"
    puts "Quitting"
    break
  else
    puts "Please select either \'a\' to Add a Parcel, \'r\' to Remove a Parcel or \'q\' to Quit"
  end
end


