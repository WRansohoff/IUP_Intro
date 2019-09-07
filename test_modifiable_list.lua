require( "iuplua" )

list_len = 1
selected = 1
list = iup.list { "Test", expand = "Yes", value = "Test" }
new_entry_text = iup.text { expand = "Yes", value = "?" }
button_add = iup.button { title = "Add list entry", expand = "Yes" }
button_del = iup.button { title = "Delete list entry", expand = "Yes" }


function list:action( item, index, sel )
  if sel == 1 then
    selected = index
  end
  return iup.DEFAULT
end

function button_add:action()
  list[ list_len + 1 ] = new_entry_text.value
  list_len = list_len + 1
  list[ list_len + 1 ] = nil
  return iup.DEFAULT
end

-- TODO: Currently, the 'selected' value jumps to the last
-- element in the list after deleting the value.
function button_del:action()
  if list_len == 0 then return iup.DEFAULT end
  for i = selected,list_len do
    list[ i ] = list[ i + 1 ]
  end
  list_len = list_len - 1
  list[ list_len + 1 ] = nil
  return iup.DEFAULT
end

button_box = iup.hbox { button_add, button_del }
dialog_box = iup.vbox { list, new_entry_text, button_box }

dialog = iup.dialog { dialog_box;
  title = "List manipulation test",
  size = "QuarterxQuarter"
}
dialog:show()

iup.MainLoop()
