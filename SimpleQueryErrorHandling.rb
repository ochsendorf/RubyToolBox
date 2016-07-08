require 'mysql'

begin
  con = Mysql.new('localhost','root','thiago123','Books')
  rs = con.query('select * from books')
  rs.each_hash do |row|
   # puts row.join("\s")
   puts row['id_book'] + " " + row['name_book']
  end

rescue Mysql::Error => e
  puts e.errno
  puts e.error

ensure
  con.close

end
