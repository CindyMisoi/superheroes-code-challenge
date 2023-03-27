puts "start seeding..."
HEROES = ["Captain America", "Black Panther", "Groot", "Hawkeye","Black Widow", "The Winter Soldier"]
POWERS = ["Energy blasts", "martial artist", "speed", "healing", "stamina", "agility"]
STRENGTH = ['Strong', 'Weak', 'Average']
# # heroes
6.times do
    Hero.create(name: Faker::Internet.username, super_name: HEROES.uniq.sample)
end

# powers
6.times do
   Power.create(name: POWERS.uniq.sample, description: Faker::Lorem.sentence)
end

# heropowers 
powers = Power.all
heroes = Hero.all
6.times do
    power = powers.uniq.sample
    hero = heroes.uniq.sample
    HeroPower.create(power_id: power.id, hero_id: hero.id, strength: STRENGTH.uniq.sample)
end
puts "done seeding."