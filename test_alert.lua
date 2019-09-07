require( "iuplua" )

button_state = iup.Alarm( "Alert box", "Press A/B/C", 'A', 'B', 'C' )

if button_state == 1 then
  iup.Message( "A", "You pressed 'A'" )
elseif button_state == 2 then
  iup.Message( "B", "You pressed 'B'" )
elseif button_state == 3 then
  iup.Message( "C", "You pressed 'C'" )
end
