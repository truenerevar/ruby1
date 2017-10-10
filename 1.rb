# 
# RUBY LESSON 1
# 
# 
# 1.rb
# 1
## Generate a hash.
### key will be a first name (except Miss, Dr.)
### value will be a second name

names = [
  "Stuart Blanda", "Kaden Batz", "Cornell Durgan", "Mrs. Kieran Goldner",
  "Miss Emile Littel", "Carolyne Terry", "Mrs. Ronaldo Buckridge",
  "Cristal Braun", "Dr. Joanne Bartoletti", "Kenton Block", "Jeromy Medhurst",
  "Gussie Daniel V", "Kitty Senger Jr.", "Lexus Gibson", "Kaylah Howell",
  "Maxie Wilderman", "Kayden Mohr", "Devonte Skiles", "Tina Mante", "Heloise Mann"
]

a = {}
b = ["Mrs.","Miss","Dr.","Jr.","V"]
names.each do |i|
  b.each do |x| 
   i.slice!(x)
  end
  a[i.strip.split[0]] = i.strip.split[1] 
end
puts "Task 1 result"
p a
puts " "


# 2
## Generate a hash.
### key will be a first letter of a first name
### value will be a second letter of a second name

names = [
  "Stuart Blanda", "Kaden Batz", "Cornell Durgan", "Mrs. Kieran Goldner",
  "Miss Emile Littel", "Carolyne Terry", "Mrs. Ronaldo Buckridge",
  "Cristal Braun", "Dr. Joanne Bartoletti", "Kenton Block", "Jeromy Medhurst",
  "Gussie Daniel V", "Kitty Senger Jr.", "Lexus Gibson", "Kaylah Howell",
  "Maxie Wilderman", "Kayden Mohr", "Devonte Skiles", "Tina Mante", "Heloise Mann"
]

c = {}
d = ["Mrs.","Miss","Dr.","Jr.","V"]
names.each do |i|
  d.each do |x| 
   i.slice!(x)
  end
  c[i.strip.split[0][0]] = i.strip.split[1][1].upcase 
end
puts "Task 2 result"
p c
puts " "

# 3
## Generate an array.
### elements will be all a uniq letters of first name and second name
#### need to sort it in alphabetical order
#### Example: ["Stuart Blanda", "Kaden Batz", "Cornell Durgan", "Mrs. Kieran Goldner"]
##### will be ['S', 'B', 'K', 'C', 'D', 'G']

names = [
  "Stuart Blanda", "Kaden Batz", "Cornell Durgan", "Mrs. Kieran Goldner",
  "Miss Emile Littel", "Carolyne Terry", "Mrs. Ronaldo Buckridge",
  "Cristal Braun", "Dr. Joanne Bartoletti", "Kenton Block", "Jeromy Medhurst",
  "Gussie Daniel V", "Kitty Senger Jr.", "Lexus Gibson", "Kaylah Howell",
  "Maxie Wilderman", "Kayden Mohr", "Devonte Skiles", "Tina Mante", "Heloise Mann"
]

e = []
f = ["Mrs.","Miss","Dr.","Jr.","V"]
names.each do |i|
  f.each do |x| 
   i.slice!(x)
  end

  e.push (i.strip.split[0][0]), (i.strip.split[1][0])
  e.sort!.uniq!
end
puts "Task 3 result"
p e
puts " "


# 4
## Generate an array
### elements will stay in same position
### need to replace first name with second name

names = [
  "Stuart Blanda", "Kaden Batz", "Cornell Durgan", "Mrs. Kieran Goldner",
  "Miss Emile Littel", "Carolyne Terry", "Mrs. Ronaldo Buckridge",
  "Cristal Braun", "Dr. Joanne Bartoletti", "Kenton Block", "Jeromy Medhurst",
  "Gussie Daniel V", "Kitty Senger Jr.", "Lexus Gibson", "Kaylah Howell",
  "Maxie Wilderman", "Kayden Mohr", "Devonte Skiles", "Tina Mante", "Heloise Mann"
]

g = []
h = ["Mrs.","Miss","Dr.","Jr.","V"]
names.each do |i|
  h.each do |x| 
   i.slice!(x)
  end
  g.push("#{i.split[1]} #{i.split[0]}")
end
puts "Task 4 result"
p g
puts " "

# 2.rb
numbers = [
  "9461055376", "1098029425", "1365826266", "3651652057",
  "6639633927", "9198606875", "3425027805", "9600912575",
  "8826860435", "4244213108", "8930423446", "6975487430",
  "2956968315", "4024720801", "8882048673", "4897211695",
  "6089600553", "4272319905", "4517433227", "5565635133"
]

# 1
## Generate a hash
### key will be an element itself
### value will be a max digit in a element

numbers = [
  "9461055376", "1098029425", "1365826266", "3651652057",
  "6639633927", "9198606875", "3425027805", "9600912575",
  "8826860435", "4244213108", "8930423446", "6975487430",
  "2956968315", "4024720801", "8882048673", "4897211695",
  "6089600553", "4272319905", "4517433227", "5565635133"
]

h = {}

numbers.each do |x|
  h[x] = x.split(//).max
end
puts "Task 2 - 1 result"
p h
puts " "
# 2
## Generate a string
### string will contain a maximum and minimum digit of each element
### Example: numbers = [ "9461055376", "4517433227" ]
### will be "9071"

numbers = [
  "9461055376", "1098029425", "1365826266", "3651652057",
  "6639633927", "9198606875", "3425027805", "9600912575",
  "8826860435", "4244213108", "8930423446", "6975487430",
  "2956968315", "4024720801", "8882048673", "4897211695",
  "6089600553", "4272319905", "4517433227", "5565635133"
]

j = ""
numbers.each do |x|
  j = "#{j}#{x.split(//).max}#{x.split(//).min}"
end
puts "Task 2 - 2 result"
p j
puts " "

# 3
## Generate a number
### number will be a summa of two maximum and two minimum elements

numbers = [
  "9461055376", "1098029425", "1365826266", "3651652057",
  "6639633927", "9198606875", "3425027805", "9600912575",
  "8826860435", "4244213108", "8930423446", "6975487430",
  "2956968315", "4024720801", "8882048673", "4897211695",
  "6089600553", "4272319905", "4517433227", "5565635133"
]
k = 0
l = numbers.max(2)+numbers.min(2)
l.each do |x|
  x = x.to_i
  k = k+x
end
puts "Task 2 - 3 result"
p k
puts "End"
# END