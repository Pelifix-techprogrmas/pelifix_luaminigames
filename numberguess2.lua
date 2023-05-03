math.randomseed(os.time())
local number = math.random(1, 100)

local max_attempts = 5

print("Gæt et nummer mellem 1 til 100 du har: " .. max_attempts .. " forsøg")
for attempt = 1, max_attempts do
  io.write("Forsøg " .. attempt .. ": ")
  local guess = io.read("*n")
  
  if guess == number then
    print("Tilykke du fandt det rigtige nummer, du brugte " .. attempt .. " forsøg.")
    return
  elseif guess > number then
    print("For højt gæt i gen.")
  else
    print("For lavt prøv igen.")
  end
end

print("Desværre du har brugt alle din forsøg, nummeret var: " .. number .. ".")
