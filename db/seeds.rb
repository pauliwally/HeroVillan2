# INSTRUCTIONAL TEXT IN THE TEMPLATE DOCUMENT:
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all
["Food & Beverage", "Energy", "Apparel"].each do |category_name|
  c = Category.new
  c.category_name = category_name
  c.save
end

Company.destroy_all
["Hillshire", "Starbucks", "Nike", "Adidas", "British Petroleum"].each do |company_name|
  c = Company.new
  c.company_name = company_name
  c.save
end


Brand.destroy_all
brand_table =    [ { :brand_name => "Jimmy Dean",
                      :category_name => "Food & Beverage",
                      :company_name => "Hillshire",
                      # :image_url => 'XXX',
                      # :description => "¿IS IT POSSIBLE TO PULL TEXT FROM WIKIPEDIA AUTOMATICALLY?",
                    },
                    { :brand_name => "Starbucks",
                      :category_name => "Food & Beverage",
                      :company_name => "Starbucks",
                      # :image_url => 'XXX',
                      # :description => "¿IS IT POSSIBLE TO PULL TEXT FROM WIKIPEDIA AUTOMATICALLY?",
                    },
                    { :brand_name => "Nike",
                      :category_name => "Apparel",
                      :company_name => "Nike",
                      # :image_url => 'XXX',
                      # :description => "¿IS IT POSSIBLE TO PULL TEXT FROM WIKIPEDIA AUTOMATICALLY?",
                    },
                    { :brand_name => "Adidas",
                      :category_name => "Apparel",
                      :company_name => "Adidas",
                      # :image_url => 'XXX',
                      # :description => "¿IS IT POSSIBLE TO PULL TEXT FROM WIKIPEDIA AUTOMATICALLY?",
                    },
                    { :brand_name => "BP",
                      :category_name => "Energy",
                      :company_name => "British Petroleum",
                      # :image_url => 'XXX',
                      # :description => "¿IS IT POSSIBLE TO PULL TEXT FROM WIKIPEDIA AUTOMATICALLY?",
                    },
                  ]

brand_table.each do |brand_info|
  b = Brand.new
  b.brand_name = brand_info[:brand_name]
  #b.image_url = brand_info[:image_url]
  #b.description = brand_info[:brand_description]

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
                    :password => "hockey"
                   },
                  { :user_first => "Robbie",
                    :user_last => "Sandig",
                    :email => "imadatabasegenius@consultingmypeers.com",
                    :password => "hockey"
                   },
                  { :user_first => "Matt",
                    :user_last => "Venzon",
                    :email => "dontthinkimstupid@justcausemyfrontendisgorgeous.com",
                    :password => "hockey"
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

Review.destroy_all
review_table =  [ { :user_id => User.find_by(:user_first => "Robbie").id,
                    :brand_id => Brand.find_by(:brand_name => "Nike").id,
                    :hero_vote => 1,
                    :villan_vote => 0,
                    :comment => "Nike makes my biceps look huge.",
                   },
                  { :user_id => User.find_by(:user_first => "Matt").id,
                    :brand_id => Brand.find_by(:brand_name => "BP").id,
                    :hero_vote => 0,
                    :villan_vote => 1,
                    :comment => "My daily fish oil is now full of crude.",
                   },
                    { :user_id => User.find_by(:user_first => "Jeff").id,
                    :brand_id => Brand.find_by(:brand_name => "Jimmy Dean").id,
                    :hero_vote => 1,
                    :villan_vote => 0,
                    :comment => "Love to start my day with these puppies -- not that the sausage is made out of canines.  Wait.  Is it?",
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
