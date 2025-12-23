-- like a switch, but with expression instead of variable
densityTell :: (RealFloat a) => a -> String
densityTell density
  | density < 1.2 = "Wow! You're going for a ride in the sky!"
  | density <= 1000.0 = "Have fun swimming, but watch out for sharks!"
  | otherwise = "If it's sink or swim, you're going to sink."

densityTell2 :: (RealFloat a) => a -> a -> String
densityTell2 mass volume
  | density < airDensity = "Wow! You're going for a ride in the sky!"
  | density < waterDensity = "Have fun swimming, but watch out for sharks!"
  where
    airDensity = 1.2
    waterDensity = 1000.0
    density = mass / volume

initials :: String -> String -> String
initials firstname lastname = [f] ++ "." ++ [l] ++ "."
  where
    (f : _) = firstname
    (l : _) = lastname

-- or:
initials2 :: String -> String -> String
initials2 firstname lastname =
  let (f : _) = firstname
      (l : _) = lastname
   in [f] ++ "." ++ [l] ++ "."

-- or:
initials3 :: String -> String -> String
initials3 firstname lastname =
  let f = head firstname
      l = head lastname
   in [f] ++ "." ++ [l] ++ "."

-- WHERE BINDING: accessible by all the function, even guards!
-- LET BINDINGS: much more localized, only valid on the IN binding
