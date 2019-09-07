require( "iuplua" )

-- TODO: The '*.txt' doesn't seem to work.
file, err = iup.GetFile( "*.txt" )
-- TODO: No option to create a new file in XFCE.
if err == 1 then
  iup.Message( "New file", file )
elseif err == 0 then
  iup.Message( "Existing file", file )
elseif err == -1 then
  iup.Message( "No file", "File opening canceled" )
else
  iup.Message( "Error", "Unrecognized error code?" )
end
