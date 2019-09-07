require( "iuplua" )

text1 = iup.multiline { expand = "Yes", value = "Hello" }
text2 = iup.multiline { expand = "Yes", value = "World" }
button = iup.button { expand = "Yes", title = "Enter" }

function button:action()
  iup.Message( "o.O", "T1: " .. text1.value .. "\nT2: " .. text2.value )
  return iup.DEFAULT
end

-- TODO: In XFCE, the frame's top border intersects the title text.
-- There's probably a way to add padding?
text_box = iup.hbox {
  iup.frame { text1; Title = "Text 1:" },
  iup.frame { text2; Title = "Text 2:" }
}

dialog_box = iup.vbox { text_box, button  }

dialog = iup.dialog { dialog_box;
  title = "Multi-frame dialog",
  size = "HalfxHalf"
}

dialog:show()

iup.MainLoop()
