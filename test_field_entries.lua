require( "iuplua" )
require( "iupluacontrols" )

result, text = iup.GetParam( "Hello", nil, "Enter a string: %s\n", "[str]" )

result, number = iup.GetParam( "Hello again", nil, "Enter a number: %i\n", 42 )

-- Note: Choice selection is 0-indexed, not 1-indexed.
result, choice = iup.GetParam( "Pick", nil, "Choose: %l|A|B|C|\n", 1 )

iup.Message( "Results", "Got:\nStr: " .. text .. "\nInt: " .. number .. "\nChoice #: " .. choice )
