let apply_if p f x =
  if p x = true then f x
  else x