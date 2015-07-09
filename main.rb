require './container'
require './cube'
require './cylinder'
require './parcel'
require 'byebug'

def show_container_content(container)
  puts "Your container had #{container.parcels.length} parcels."
end

def create_container
  puts 'Enter the size of your container'
  container_volume = gets.chomp
  Container.new(container_volume)
end

def create_parcel(container)
  puts 'Let\'s add a Parcel to the Container'
  loop do puts 'Add a Cuboid Parcel (press \'s\') or Cylinder Parcel (press \'c\')?'
    response = gets.chomp
    if response == 's'
      create_cuboid(container)
      break
    elsif response == 'c'
      create_cylinder(container)
      break
    else
      puts 'Sorry, Invalid Input, Try again.'
    end
  end
end

# TODO: Rahul
def create_cuboid(container)
  puts 'Lets add a Cuboid'
  # Get the user's input on id, height, width & breadth of the cube
  puts 'Enter the Cube Id:'
  cube_id = gets.chomp
  puts 'Enter the Cube height:'
  cube_height = gets.chomp.to_i
  puts 'Enter the Cube width:'
  cube_width = gets.chomp.to_i
  puts 'Enter the Cube breadth:'
  cube_breadth = gets.chomp.to_i

  # Add parcel to container
  container.add_parcel(Cube.new(cube_id, cube_height, cube_width, cube_breadth))
end

# TODO: Rahul
def create_cylinder(container)
  puts 'Lets add a Cylinder'
  puts 'Enter the Cylinder Id:'
  cyl_id = gets.chomp
  puts 'Enter the Cylinder height:'
  cyl_height = gets.chomp.to_i
  puts 'Enter the Cylinder radius:'
  cyl_radius = gets.chomp.to_i

  # Add parcel to container
  container.add_parcel(Cylinder.new(cyl_id,cyl_height,cyl_radius))
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
container = create_container

# Now call the true methods of the program
loop do puts 'Do you want to Add (press \'a\') or Remove (press \'r\') a Parcel? Press
\'q\' to Quit'
 user_input = gets.chomp # loop while getting user input
  case user_input
  when 'a'
    puts 'Adding parcel'
    create_parcel(container)
  when 'r'
    puts 'Removing parcel'
    remove_parcel(container)
  when 'q'
    puts 'Quitting'
    show_container_content(container) if !container.parcels.empty?
    break
  else
    puts 'Sorry, Invalid input, try again'
  end
end
