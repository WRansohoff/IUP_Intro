require( "iuplua" )

tree = iup.tree { }

dialog = iup.dialog { tree; title = "Tree test", size = "HalfxHalf" }
dialog:showxy( iup.CENTER, iup.CENTER )

--tree.addexpanded = "No"
tree.title = "STM32"
tree.addbranch0 = "STM32G0"
tree.addleaf1 = "STM32G0x1"
tree.addbranch0 = "STM32F0"
tree.addleaf1 = "STM32F0x8"
tree.addleaf1 = "STM32F0x2"
tree.addleaf1 = "STM32F0x1"
tree.addleaf1 = "STM32F0x0"
-- (Just to demonstrate how IDs increment as new nodes are added.)
tree.addleaf6 = "STM32G0x0"

if ( iup.MainLoopLevel() == 0 ) then
  iup.MainLoop()
end
