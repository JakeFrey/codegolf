boxes = eval(gets.chomp.tr('(', '[').tr(')', ']'))
max_height = boxes.map { |box| 3 + box[1] + box[2] }.max

num_conveyor_rows = 2 + boxes[0][1]

for num in max_height.downto(1)
  for box in boxes
    box_height = 3 + box[1] + box[2]
    box_width = 3 + box[0] + box[1]

    # Print all spaces for box, it's too short
    if num > box_height
      print ' ' * box_width
    # Preceding spaces
    elsif num > num_conveyor_rows && num > 2 + box[2]
      print ' ' * (box[1] + 1 - (box_height - num))
    # print preceding conveyor lines
    elsif num <= num_conveyor_rows && num > 2 + box[2]
      print '_' * (num - 2 - box[2])
    end
  
    # Top row
    if num == 3 + box[1] + box[2]
      print '+' + '-' * box[0] + '+'
    # Slants
    elsif num < 3 + box[1] + box[2] && num > 2 + box[2]
      print '/' + ' ' * box[0] + '/'
    #Middle row
    elsif num == 2 + box[2]
      print '+' + '-' * box[0] + '+'
    # front
    elsif num < 2 + box[2] && num > 1
      print '|' + ' ' * box[0] + '|'
    # bottom row
    elsif num == 1
      print '+' + '-' * box[0] + '+'
    end

    # Back line of box, if needed
    if num < box_height && num > box[1] + 2
      print ' ' * [(box_height - 1 - num), box[2], box[1]].min  + '|'
    elsif num == box[1] + 2
      print ' ' * [box[1], box[2], box[1]].min + '+'
    elsif num < box[1] + 2 && num > 1
      print ' ' * [(num - 2), box[2], box[1]].min + '/'      
    end

    # Trailing conveyor lines, or just one space
    if num <= num_conveyor_rows && !box.equal?(boxes.last)
      print '_' * (num_conveyor_rows - num + 1)
    else
      print ' '
    end
  end
  puts
end
