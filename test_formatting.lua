require( "iuplua" )

-- Text UI element. To work, 'formatting' and 'multiline' must be set.
local formatted_text = iup.text {
  value = "Hello, text formatting.\nThis text's background is green.\nAll of the text is\ncentered and bold.",
  readonly = "Yes",
  formatting = "Yes",
  multiline = "Yes",
  expand = "Yes"
}

-- Formatting tags are 'iup.user' tables.
-- These tags will affect the whole text element (selectionpos: 'all')
local tags_all = iup.user {
  selectionpos = "All",
  alignment = "Center",
  weight = "Bold",
  fontscale = "Large"
}
-- These tags will only affect characters [24:56) in the string.
local tags_line2 = iup.user {
  selectionpos = "24:56",
  bgcolor = "92 255 92"
}

-- Use the 'addformattag' attribute to apply formatting.
formatted_text.addformattag = tags_all
formatted_text.addformattag = tags_line2

-- You can remove old formatting like this:
--local tags_clean = iup.user { bulk = "Yes", cleanout = "Yes" }
--formatted_text.addformattag = tags_clean

-- Display the formatted text in a small window.
local dialog = iup.dialog { formatted_text; size = "QuarterxQuarter" }
dialog:show()

iup.MainLoop()
