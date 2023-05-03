-- Constants
local STARTING_BALANCE = 100 -- Starting balance for the player
local MIN_BET = 10 -- Minimum bet amount
local MAX_BET = 50 -- Maximum bet amount
local ODDS = 2 -- Odds of winning the bet (2 to 1)

-- Variables
local balance = STARTING_BALANCE -- Current balance for the player

-- Functions
function playRound(betAmount)
  -- Check if the bet amount is valid
  if betAmount  MIN_BET or betAmount  MAX_BET then
    print(Invalid bet amount)
    return
  end

  -- Simulate the bet
  local result = math.random(ODDS)

  -- Update the balance based on the result of the bet
  if result == 1 then
    -- Player loses the bet
    balance = balance - betAmount
    print(Sorry, you lost the bet. Your balance is now $ .. balance)
  else
    -- Player wins the bet
    balance = balance + betAmount
    print(Congratulations, you won the bet! Your balance is now $ .. balance)
  end
end

-- Main game loop
while balance  0 do
  -- Print the current balance
  print(Your current balance is $ .. balance)

  -- Prompt the player to enter a bet amount
  io.write(Enter your bet amount (minimum $ .. MIN_BET .. , maximum $ .. MAX_BET .. ) )
  local betAmount = tonumber(io.read())

  -- Play a round with the given bet amount
  playRound(betAmount)
end

-- Game over
print(Game over. You ran out of money.)
