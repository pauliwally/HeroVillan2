# INSTRUCTIONAL TEXT IN THE TEMPLATE DOCUMENT:
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all
["Food & Beverage", "Energy", "Apparel", "Retail", "Automotive",].each do |category_name|
  c = Category.new
  c.category_name = category_name
  c.save
end

Company.destroy_all
["Hillshire", "Starbucks", "Nike", "Adidas Group", "British Petroleum",].each do |company_name|
  c = Company.new
  c.company_name = company_name
  c.save
end


Brand.destroy_all
brand_table =    [ { :brand_name => "Jimmy Dean",
                      :category_name => "Food & Beverage",
                      :company_name => "Hillshire",
                      # :image_url => 'XXX',
                      :description => "Breakfast sausages in a box and into your microwave.",
                    },
                    { :brand_name => "Hillshire Farm",
                      :category_name => "Food & Beverage",
                      :company_name => "Hillshire",
                      # :image_url => 'XXX',
                      :description => "Deli meats, summer sauages, and cocktail wieners, oh my.",
                    },
                    { :brand_name => "Sara Lee",
                      :category_name => "Food & Beverage",
                      :company_name => "Hillshire",
                      # :image_url => 'XXX',
                      :description => "Deli meats and probably other stuff.",
                    },
                    { :brand_name => "Starbucks",
                      :category_name => "Food & Beverage",
                      :company_name => "Starbucks",
                      # :image_url => 'XXX',
                      :description => "It's a coffee shop.  Maybe you've heard of it.",
                    },
                    { :brand_name => "Evolution Fresh",
                      :category_name => "Food & Beverage",
                      :company_name => "Starbucks",
                      # :image_url => 'XXX',
                      :description => "Granola bars and juices with watercolor packaging that's gotta be worth millions when framed.",
                    },
                    { :brand_name => "Tazo Tea",
                      :category_name => "Food & Beverage",
                      :company_name => "Starbucks",
                      # :image_url => 'XXX',
                      :description => "Tea.  In bags.  In your mug.",
                    },
                    { :brand_name => "La Boulange",
                      :category_name => "Food & Beverage",
                      :company_name => "Starbucks",
                      # :image_url => 'XXX',
                      :description => "Bakery with a French name somehow implying that your morning pastry is freshly backed around the corner, when it's really just sealed in celophane, shipped, and dropped off at your local Starbucks.  Thank goodness for microwaves.",
                    },
                    { :brand_name => "Nike",
                      :category_name => "Apparel",
                      :company_name => "Nike",
                      # :image_url => 'XXX',
                      :description => "Shoe company -> apparel company -> we own every moment of athleticism company.",
                    },
                    { :brand_name => "Converse",
                      :category_name => "Apparel",
                      :company_name => "Nike",
                      # :image_url => 'XXX',
                      :description => "All stars.  Chuck Taylor.",
                    },
                    { :brand_name => "Adidas",
                      :category_name => "Apparel",
                      :company_name => "Adidas Group",
                      # :image_url => 'XXX',
                      :description => "Because parallel lines must be parallel to something in your life, and good things come in 3s.",
                    },
                    { :brand_name => "Reebok",
                      :category_name => "Apparel",
                      :company_name => "Adidas Group",
                      # :image_url => 'XXX',
                      :description => "Andre Agassi.",
                    },
                    { :brand_name => "BP",
                      :category_name => "Energy",
                      :company_name => "British Petroleum",
                      # :image_url => 'XXX',
                      :description => "Let's not cry over spilled oil.  There's so much more water in the sea than a little crude could pollute.",
                    },
                    { :brand_name => "ampm",
                      :category_name => "Retail",
                      :company_name => "British Petroleum",
                      # :image_url => 'XXX',
                      :description => "Junk food at all hours, day or night.",
                    },
                    { :brand_name => "Castrol",
                      :category_name => "Automotive",
                      :company_name => "British Petroleum",
                      # :image_url => 'XXX',
                      :description => "Vroom, vroom.",
                    },
                    { :brand_name => "Aral",
                      :category_name => "Energy",
                      :company_name => "British Petroleum",
                      # :image_url => 'XXX',
                      :description => "Germans hate the British, so they call BP Aral and pretend it's less pompous.",
                    },
                    { :brand_name => "Wild Bean Cafe",
                      :category_name => "Food & Beverage",
                      :company_name => "British Petroleum",
                      # :image_url => 'XXX',
                      :description => "It's gettin' pretty crazy in that there them cup o joe.  Wild beans!",
                    },
                  ]

brand_table.each do |brand_info|
  b = Brand.new
  b.brand_name = brand_info[:brand_name]
  #b.image_url = brand_info[:image_url]
  b.description = brand_info[:description]

  # CODE BELOW SAYS: 1) USING THE CATOGORY NAME OF A PARTICULAR BRAND, FIND THE CATEGORY IN THE CATEGORY TABLE (VIA THE CATEGORY NAME).
  category = Category.find_by(:category_name => brand_info[:category_name])
  # 2) WHILE IN THE CATEGORY TABLE, SET THE CATEGORY ID OF THIS BRAND AND ATTACH THE CATEGORY ID THAT WAS FOUND TO THE PARTICULAR BRAND.
  b.category_id = category.id

  company = Company.find_by(:company_name => brand_info[:company_name])
  b.company_id = company.id

  b.save

end

puts "There are now #{Brand.count} brands in Heroes N Villans database."

User.destroy_all
user_table =    [ { :user_first => "Jeff",
                    :user_last => "Cohen",
                    :email => "iskatecirclesaroundyou@hockey.com",
                    :password => "hockey",
                   },
                  { :user_first => "Robbie",
                    :user_last => "Sandig",
                    :email => "imadatabasegenius@consultingmypeers.com",
                    :password => "hockey",
                   },
                  { :user_first => "Matt",
                    :user_last => "Venzon",
                    :email => "dontthinkimshallow@justcausemyfrontendisgorgeous.com",
                    :password => "hockey",
                   },
                   { :user_first => "Ryan",
                    :user_last => "Rennaker",
                    :email => "thisonetime@googlecamp.com",
                    :password => "hockey",
                   },
                  { :user_first => "Jane",
                    :user_last => "Gagnon",
                    :email => "lifeshardwhenyoure@frickingenius.com",
                    :password => "hockey",
                   },
                  { :user_first => "Gaurav",
                    :user_last => "Saraf",
                    :email => "checkoutmyhairychest@ladies.com",
                    :password => "hockey",
                   },
                 ]
user_table.each do |user_info|
  u = User.new
  u.user_first = user_info[:user_first]
  u.user_last = user_info[:user_last]
  u.email = user_info[:email]
  u.password = user_info[:password]
  u.save

end

puts "There are now #{User.count} users in Heroes N Villans database."

Review.destroy_all
review_table =  [ { :user_id => User.find_by(:user_first => "Robbie").id,
                    :brand_id => Brand.find_by(:brand_name => "Nike").id,
                    :hero_vote => 1,
                    :villan_vote => 0,
                    :comment => "Nike makes my biceps look huge.",
                   },
                  { :user_id => User.find_by(:user_first => "Robbie").id,
                    :brand_id => Brand.find_by(:brand_name => "ampm").id,
                    :hero_vote => 0,
                    :villan_vote => 1,
                    :comment => "Closing at 10:00 at night when youre called ampm is socially irresponsible.",
                   },
                  { :user_id => User.find_by(:user_first => "Matt").id,
                    :brand_id => Brand.find_by(:brand_name => "BP").id,
                    :hero_vote => 0,
                    :villan_vote => 1,
                    :comment => "My daily fish oil is now full of crude.",
                   },
                  { :user_id => User.find_by(:user_first => "Matt").id,
                    :brand_id => Brand.find_by(:brand_name => "Wild Bean Cafe").id,
                    :hero_vote => 0,
                    :villan_vote => 1,
                    :comment => "This coffee is silty, just like the tropical streams near the deforested coffee plantations of so-called Wild Bean.",
                   },
                  { :user_id => User.find_by(:user_first => "Ryan").id,
                    :brand_id => Brand.find_by(:brand_name => "Tazo Tea").id,
                    :hero_vote => 1,
                    :villan_vote => 0,
                    :comment => "Zen out, bra.",
                   },
                  { :user_id => User.find_by(:user_first => "Ryan").id,
                    :brand_id => Brand.find_by(:brand_name => "Adidas").id,
                    :hero_vote => 1,
                    :villan_vote => 0,
                    :comment => "Making the world a better place, one scrummy tackle at a time.",
                   },
                  { :user_id => User.find_by(:user_first => "Ryan").id,
                    :brand_id => Brand.find_by(:brand_name => "Jimmy Dean").id,
                    :hero_vote => 0,
                    :villan_vote => 1,
                    :comment => "Pretty sure I ate some endangered species in my bfast sandwich this am.  Kinda tasted like black rhino.",
                   },
                  { :user_id => User.find_by(:user_first => "Gaurav").id,
                    :brand_id => Brand.find_by(:brand_name => "Nike").id,
                    :hero_vote => 0,
                    :villan_vote => 1,
                    :comment => "The swoosh just looks offensive to me.  I mean, whats up with that?",
                   },
                  { :user_id => User.find_by(:user_first => "Jane").id,
                    :brand_id => Brand.find_by(:brand_name => "La Boulange").id,
                    :hero_vote => 1,
                    :villan_vote => 0,
                    :comment => "If it's got a French name, it's gotta be righteous.",
                   },
                  { :user_id => User.find_by(:user_first => "Jane").id,
                    :brand_id => Brand.find_by(:brand_name => "Converse").id,
                    :hero_vote => 1,
                    :villan_vote => 0,
                    :comment => "Me getting laid pays huge dividends for society, and Chucks get me laid.",
                   },
                  { :user_id => User.find_by(:user_first => "Gaurav").id,
                    :brand_id => Brand.find_by(:brand_name => "Hillshire Farm").id,
                    :hero_vote => 0,
                    :villan_vote => 1,
                    :comment => "Not a real farm.  Come on.  How dumb do you think we are?",
                   },
                ]

review_table.each do |review_info|
  r = Review.new
  r.user_id = review_info[:user_id]
  r.brand_id = review_info[:brand_id]
  r.hero_vote = review_info[:hero_vote]
  r.villan_vote = review_info[:villan_vote]
  r.comment = review_info[:comment]
  r.save

end

puts "There are now #{Review.count} reviews in Heroes N Villans database."


