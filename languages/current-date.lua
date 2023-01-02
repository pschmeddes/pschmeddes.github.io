function Meta(m)
    if m.date == nil then
      m.date = os.date("%A, %d, %B, %y")
      return m
    end
  end