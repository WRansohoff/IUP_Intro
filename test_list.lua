require( "iuplua" )

list = iup.list { "Tigers", "Lions", "Bears";
  expand = "Yes",
  value = "Tigers"
}

function list:action( item, index, sel )
  if sel == 0 then
    print( item .. " Deselected" )
  elseif sel == 1 then
    print( item .. " Selected" )
  else
    print( "No idea what happened" )
  end
  return iup.DEFAULT
end

dialog = iup.dialog{ list;
  title = "Test list",
  size = "QuarterxQuarter"
}
dialog:show()

iup.MainLoop()
