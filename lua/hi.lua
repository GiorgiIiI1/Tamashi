-- random cifri 1dan 100mde
math.randomseed(os.time())
local targetNumber = math.random(1, 100)

-- shemowmeba
local function checkGuess(guess)
  if guess == targetNumber then
    return true, "Sworia!!"
  elseif guess < targetNumber then
    return false, "cota meti"
  else
    return false, "cota naklebi"
  end
end

-- loop
local gameOver = false
while not gameOver do
  -- cifris wakitxva
  io.write("gamoicani cifri 1dan 100mde  ")
  local guess = tonumber(io.read())

  -- shemowmeba
  local isCorrect, message = checkGuess(guess)
  print(message)

  -- mogeba
  if isCorrect then
    gameOver = true
  end
end