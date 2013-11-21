module BoardHelper
  def ships
    ["aircraft_carrier", "battleship", "submarine", "cruiser", "destroyer"]
  end

  def column_select_options
    options = ("A".."L").to_a
    options.zip options
  end

  def row_select_options
    options = (1..10).to_a
    options.zip options
  end

  def orientation_select_options
    [['right', 'right'], ['left', 'left'], ['up', 'up'], ['down', 'down']]
  end
end
