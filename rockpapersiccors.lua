local options = {"1", "2", "3"}

-- pIN
print("Vælg Hvad du vil bruge: 1 = sten, 2 = papir, eller 3 = saks?")
local player_choice = io.read()

-- Find en random option
math.randomseed(os.time())
local computer_choice = options[math.random(1, 3)]

-- Find vinder
local result
if player_choice == computer_choice then
  result = "tie"
elseif player_choice == "1" and computer_choice == "3" or
       player_choice == "2" and computer_choice == "1" or
       player_choice == "3" and computer_choice == "2" then
  result = "win"
else
  result = "lose"
end

-- Print vinder
print("Du valgte " .. player_choice .. ", og ai valgte " .. computer_choice .. ".")
if result == "tie" then
  print("AI valgte det samme som dig, der er står lige.")
elseif result == "win" then
  print("Du vandt")
else
  print("Du tabte")
end
