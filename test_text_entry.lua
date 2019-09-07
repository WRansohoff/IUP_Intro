require( "iuplua" )

text = iup.GetText( "Enter text:", "pre-filled" )

if text ~= "" then
  iup.Message( ":)", "Got text:\n" .. text )
else
  iup.Message( ":(", "Empty text field" )
end
