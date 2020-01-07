require 'pry'
# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    #attendees.each do |attendee| 
    attendees.collect do |attendee|
         "Hello, my name is #{attendee}."
    end
end

def assign_rooms(attendees)
    #counter = 0
    attendees.each_with_index.map do |attendee, index|
         "Hello, #{attendee}! You'll be assigned to room #{index+1}!"
    end
end

def printer(attendees)
    # binding.pry
    batch_badge_creator(attendees).each do |badge|
        # binding.pry
        puts badge
    end
    
    assign_rooms(attendees).each do |attendee_room|
        puts attendee_room
    end

end