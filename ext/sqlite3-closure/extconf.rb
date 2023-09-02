require 'mkmf'

unless have_header("sqlite3ext.h")
  Logging::message "sqlite dev headers not found, is sqlite-dev installed?"
  raise "makefile not created"
end

$CFLAGS << ' -fPIC -shared'
create_makefile('sqlite3-closure')
