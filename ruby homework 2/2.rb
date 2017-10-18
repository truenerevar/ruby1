
# 1

## create an array with 40 elements. each element will be a random date and temperature ("31.01  -7").
## Generate a hash. Key will be a month, value will be average temperature for this month.

a = Array.new(40) { Time.at(rand * (Time.now.to_f)).strftime("%d-%m").to_s + ' ' + rand(-30..30).to_s }

a.map! { |x|  x.split }

a.map! { |x| [x.first.split('-').last, x.last] }

b = a.map { |x| x.first}.uniq

c = {}
b.each do |x|
  c[x] = a.map { |y| y.last if y.first == x }.compact
end

d = c.map { |x, y| [x, y.map(&:to_i).inject(:+)/y.count] }.to_h
puts ''
p d.sort.to_h
puts ''


# 2

hash = {
  'yes' => 23, 'b' => 'travel', 'yesterday' => 34.5,
  :yesss => :fg, try: 30, key: 'some value',
  'yesterday1' => 34, 'yesteryear' => 2014
}

## Need to find a count of keys which starts from "yes"
puts 'Count of keys with "yes"'
p hash.keys.map! {|x| x if x.to_s.start_with?('yes')  }.compact.count
puts ''

# 3

class User
  attr_accessor :name, :age, :email
  @@users = {}
  def initialize(name, age, email)
    @name = name
    @email = email
    @age = age
  end
  def create_user
    @@users[self.email] = self
  end
  def self.show_users
    @@users.each do |key, user|
    puts "Email: #{user.email}"
    puts "Name: #{user.name}"
    puts "Age: #{user.age}"
    puts ''
    end
  end
  def delete_user
    @@users.delete(self.email)
  end
  def up_user(name, age, email)
    self.name = name
    self.age = age
    self.email = email
  end
end
# a = User.new('Andriy','23','asd')
# a.create_user
# a.up_user('Andron','24','dsa')
# b = User.new('GiGi','39','buffon')
# b.create_user
# a.delete_user
# User.show_users

# 4
class User
  attr_accessor :name, :age, :email
  @@users = {}
  
  def initialize(name, age, email)
    @name = name
    @email = email
    @age = age
  end
  
  def create_user
    @@users[self.email] = self
  end
  
  def self.show_users
    @@users.each do |key, user|
      puts "Email: #{user.email}"
      puts "Name: #{user.name}"
      puts "Age: #{user.age}"
      puts ''
    end
  end
  
  def delete_user
    @@users.delete(self.email)
  end
  
  def up_user(name, age, email)
    self.name = name
    self.age = age
    self.email = email
  end
  
  def create_post(title, body)
    p = Post.new(title, body, self.email)
    p.create_post
  end
  
  def delete_post
      Post.delete_post(self.email)
  end
  
 def up_post (title, body)
    p = Post.get_post(self.email)
    p.up_post(title, body, self.email)
  end
end

class Post
  attr_accessor :title, :body, :owner_email
  @@posts = {}
  def initialize(title, body, owner_email)
    @title = title
    @body = body
    @owner_email = owner_email
  end
  
  def self.get_post(owner_email)
    @@posts[owner_email]
  end
  
  def create_post 
      @@posts[self.owner_email] = self
  end
  
  def self.delete_post(owner_email)
    @@posts.delete(owner_email)
  end
  
  def up_post(title, body, owner_email)
    self.title = title
    self.body = body
    self.owner_email = owner_email
  end
  
  def self.show_posts
    @@posts.each do |key, post|
      puts "Title: #{post.title}"
      puts "Body: #{post.body}"
      puts "Owner: #{post.owner_email}"
      puts ''
    end
  end
end

a = User.new('Andriy','23','Andrey')
a.create_user
a.up_user('Andron','24','dron@mail.com')
b = User.new('GiGi','39','buffon@mail.com')
b.create_user
User.show_users

a.create_post('Ruby','rules')
b.create_post('Rails','is magic')
a.up_post('Perl', 'rules')
Post.show_posts

# Homework 2-1 

emails = [
 "lou.hand@mohr.name", "sigmund@schamberger.org", "clement@kreigerbeer.co",
 "marcus_strosin@nienow.org",
 "levi.kuhn@tremblay.info", "arlo@blickgrant.name", "jonathon@rath.co",
 "kailee.olson@quigley.org", "alaina@renner.net", "dylan@mclaughlin.net",
 "luna_hyatt@ritchiecronin.name", "amie_blick@kiehn.info", "carolina@bechtelargleichner.name",
 "saul_heaney@heathcote.com", "dell_tromp@kuvalisfunk.io", "lexie.hyatt@okuneva.com",
 "marquise@oconnerbailey.name", "adah@hauckspencer.info", "gilberto@cronin.name",
 "dock.braun@bins.com"
]

ages = [
  30, 14, 30, 27, 23, 17, 25, 22, 24, 13, 27,
  15, 22, 13, 19, 20, 16, 10, 21, 25
]

names = [
  "Michel", "Reagan", "Annabelle", "Chanelle", "Jennyfer", "Adonis",
  "Vidal", "Lera", "Aurore", "Garrett", "Vergie", "Lauryn", "Paxton",
  "Osborne", "Clinton", "Karson", "Ellie", "Hermann", "Else", "Otilia"
	]

# 1													

# Create a hash "users"
## Key will be an email
## Value will be an array with age and name
puts 'users hash:'
puts users = emails.zip(ages.zip(names)).to_h
puts ''
# 2

# Output a "users" hash who over 19 years old
puts 'users over 19 years old:'
puts users.select {|k, v| v[0] > 19 }
puts ''
# 3

# Output a "users" hash sort order name
puts 'sorted users by order name'
puts users.sort_by{|k, v| v[1]}
puts ''
# 4

# Output an array with mail domains
## Example ["marcus_strosin@nienow.org"] => ["nienow.org"]
puts 'email domains:'
puts emails.map{ |x| x.split("@")[1]}
puts ''