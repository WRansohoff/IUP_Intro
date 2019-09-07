require( "iuplua" )

text_field = iup.multiline { expand = "Yes" }
button = iup.button { title = "Push" }

function button:action()
  iup.Message( "o.O", "Button pushed" )
  return iup.DEFAULT
end

box = iup.vbox { text_field, button }
dialog = iup.dialog { box;
  title = "Multi-element dialog",
  size = "HalfxHalf"
}

dialog:show()

iup.MainLoop()
