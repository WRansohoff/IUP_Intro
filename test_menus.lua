require( "iuplua" )

label = iup.text { readonly = "Yes", value = "Test label", expand = "Yes" }

function item_show()
  label.visible = "Yes"
  return iup.DEFAULT
end

function item_hide()
  label.visible = "No"
  return iup.DEFAULT
end

function file_exit()
  return iup.CLOSE
end

menu = {
  "File", {
    "Exit", file_exit
  },
  "Item", {
    "Show", item_show,
    "Hide", item_hide
  }
}

-- TODO: This should probably use keys/values instead of indices.
function menu_setup( template )
  local items = {}
  for i = 1, #template, 2 do
    local label = template[ i ]
    local data = template[ i + 1 ]
    if type( data ) == 'function' then
      item = iup.item { title = label }
      item.action = data
    elseif type( data ) == 'nil' then
      item = iup.separator()
    else
      item = iup.submenu { menu_setup( data ); title = label }
    end
    table.insert( items, item )
  end
  return iup.menu( items )
end

overview_box = iup.vbox { }
dialog = iup.dialog { label;
                      title = "Menus test",
                      size = "QuarterxQuarter",
                      menu = menu_setup( menu ) }
dialog:showxy( iup.CENTER, iup.CENTERa )

iup.MainLoop()
