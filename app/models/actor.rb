# Actor

#     #characters: has_many :characters, which creates an instance method to return all characters an actor has played.
#     #shows: has_many :shows, through: :characters, which creates an instance method to return all shows an actor has been in.
#     #full_name: define a method to return the actor's first and last name.
#     #list_roles: define a method to return an array of strings representing each character and their associated show, using the actor's ID to retrieve their characters and shows.

# Example implementation:

class Actor < ActiveRecord::Base
has_many :characters
has_many :shows, through: :characters

def full_name
"#{first_name} #{last_name}"
end

def list_roles
characters.map { |character| "#{character.name} - #{character.show.name}" }
end
end