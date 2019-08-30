

def get_name(person)
  return person[:name]
end

def fovourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  # snacks = person[:favourites][:snacks]

  for snack in person[:favourites][:snacks]
    if snack == food
      return true
    end
  end
  return false
end

def add_friend(person, new_friend)
 person[:friends].push(new_friend)
end

def remove_friend(person, rem_friend)
 person[:friends].delete(rem_friend)
end

def total_money(people)
  total_money = 0

  for person in people
    total_money += person[:monies]

  end
  return total_money
end

def favourite_foods(people)
  favourite_foods = []
  for person in people
    # favourite_foods.push(*person[:favourites][:snacks]) #append
    favourite_foods += person[:favourites][:snacks]

  end
  return favourite_foods
end


def no_friends(people)
  no_friends = []
  for person in people
    if person[:friends].length == 0
      no_friends.push(person)
    end
    
  end
  return no_friends
end
