require 'sqlite3'


DB = {:conn => SQLite3::Database.new("db/songs.db")}
DB[:conn].execute("DROP TABLE IF EXISTS songs")

sql = <<-SQL
  CREATE TABLE IF NOT EXISTS songs (
  id INTEGER PRIMARY KEY,
  name TEXT,
  alias TEXT,
  album TEXT,
  top_record TEXT,
  album_sells TEXT
  )
SQL

DB[:conn].execute(sql)
DB[:conn].results_as_hash = true
