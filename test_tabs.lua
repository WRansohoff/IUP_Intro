require( "iuplua" )
require( "iupluacontrols" )

text1 = iup.multiline {
  expand = "Yes",
  value = "Hello",
  tabtitle = "Text 1"
}
text2 = iup.multiline {
  expand = "Yes",
  value = "World",
  tabtitle = "Text 2"
}
-- TODO: How to center-align?
button = iup.button {
  title = "Enter",
}

function button:action()
  iup.Message( "o.O", "T1: " .. text1.value .. "\nT2: " .. text2.value )
  return iup.DEFAULT
end

tabs = iup.tabs { text1, text2, expand = 'Yes' }
box = iup.vbox { tabs, button }

dialog = iup.dialog{ box;
  title = "Tabbed dialog",
  size = "HalfxHalf"
}

dialog:show()

iup.MainLoop()
