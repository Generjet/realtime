require 'eventmachine'
require 'rethinkdb'
include RethinkDB::Shortcuts

conn = r.connect(host: 'localhost', port: 28015)
#cursor = r.db("realtime_development").table("puu_orders").changes.run
EventMachine.run {
  r.db("realtime_development").table('puu_orders').order_by(:index => 'id').em_run(conn) { |row|
    # do something with returned row data
    p row
  }
}


