


def badge_maker(name)
"Hello, my name is #{name}."
end 

def batch_badge_creator(attendees)
    attendees.collect do |name|
        badge_maker(name)
    end 
end 

def assign_rooms(attendees)
    room_assignments = []
    attendees.each_with_index do |attendees, room| 
       room_assignments << "Hello, #{attendees}! You'll be assigned to room #{room +1}!" 
       
    end 
    room_assignments
end 

def printer(attendees)
    batch_badge_creator(attendees).map do |attendee|
        puts attendee
    end 
    assign_rooms(attendees).map do |attendee| 
        puts attendee
    end 
end
