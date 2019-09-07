require( "iuplua" )

-- Function that does nothing, but keeps the processor busy.
function busy_loop()
  for i = 1,6e7 do end
end

gauge = iup.gauge{ show_text = "Yes" }

function idle_callback()
  local gval = gauge.value
  busy_loop()
  gval = gval + 0.1
  if gval > 1.0 then gval = 0.0 end
  gauge.value = gval
  return iup.DEFAULT
end

dialog = iup.dialog{ gauge;
  title = "Idle processing test",
  size = "QuarterxQuarter"
}

iup.SetIdle( idle_callback )

dialog:showxy( iup.CENTER, iup.CENTER )

iup.MainLoop()
