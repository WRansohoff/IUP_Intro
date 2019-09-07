require( "iuplua" )

-- TODO: Second button to trigger a one-off timer.

timer = iup.timer { time = 1000 }
timer_button = iup.button { title = "Stop timer", expand = "Yes" }

function timer_button:action()
  if timer_button.title == "Stop timer" then
    timer.run = "No"
    timer_button.title = "Start timer"
  else
    timer.run = "Yes"
    timer_button.title = "Stop timer"
  end
end

function timer:action_cb()
  print 'Timer triggered'
end

timer.run = "Yes"

dialog = iup.dialog { timer_button;
  title = "Trivial timer test",
  size = "QuarterxQuarter"
}
dialog:show()

iup.MainLoop()
