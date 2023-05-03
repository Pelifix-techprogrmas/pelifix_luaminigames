-- Laver et nummer mellem 1 til 100
math.randomseed(os.time())
local number = math.random(1, 100)

-- Consol, hvor man gætter nummer
print("Gæt et nummer mellem 1-100:")
local guess = io.read("*n")

-- Ser om enity fandt det rigtige nummer
if guess == number then
  print("Tillykke du fandt det rigtige tal!")
else
  print("Desværre, du fandt ikke det rigtige nummer. Det rigtige nummer var: " .. number .. ". Bedre hel næste gang")
end
