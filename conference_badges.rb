# Write your code here.
require 'pry'

def badge_maker (name)
    "Hello, my name is #{name}."
end


def batch_badge_creator (attendees)
    batched_badges = attendees.map do |attendee|
        "Hello, my name is #{attendee}."
    end
end


# def assign_rooms (attendees)
#     attendee_names = attendees.map do |attendee|
#         "Hello, #{attendee}! You'll be assigned to room #{attendees.index(attendee)+1}!"
#     end
# end

def assign_rooms (attendees)
  rooms = []
  attendees.each.with_index(1) do |attendee, room|
    rooms.push "Hello, #{attendee}! You'll be assigned to room #{room}!"
  end
  rooms
end

def printer (attendees)
    (batch_badge_creator(attendees)).each do |received_badge|
        puts received_badge
    end
    (assign_rooms(attendees)).each do |room_assignment|
        puts room_assignment
    end
end


