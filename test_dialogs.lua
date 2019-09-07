require( "iuplua" )

text_field_1 = iup.multiline { expand = "Yes" }
text_field_2 = iup.multiline { expand = "Yes" }

dialog_1 = iup.dialog { text_field_1; title = "Test dialog 1", size = "QuarterxQuarter" }
dialog_2 = iup.dialog { text_field_2; title = "Test dialog 2", size = "QuarterxHalf" }

dialog_1:show()
dialog_2:show()

iup.MainLoop()
