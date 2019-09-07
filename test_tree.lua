require( "iuplua" )

tree = iup.tree { }

dialog = iup.dialog { tree; title = "Tree test", size = "HalfxHalf" }
dialog:showxy( iup.CENTER, iup.CENTER )

--tree.addexpanded = "No"
tree_data = {
  branchname = "STM32";
  {
    branchname = "STM32F0";
    "STM32F0x0", "STM32F0x1"
  },
  {
    branchname = "STM32G0"
  }
}
iup.TreeAddNodes( tree, tree_data )

if ( iup.MainLoopLevel() == 0 ) then
  iup.MainLoop()
end
