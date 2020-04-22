import MySQLdb
# locahost -- address where MySQL database is hosted, next argument "root" is the user id, 
# iiit@123 is the password, 'iiit_iss' is database schema name
db = MySQLdb.connect("localhost","root","iiit@123","iiit_iss")
#
# cursor is a temporary storage area in the memory..similar to a record set for keeping database select results
cursor = db.cursor()
#
sql = "SELECT * FROM DEPT"
#
cursor.execute(sql)
#cursor.execute("SELECT VERSION()")
# there are many options such as fetchone for one record at a time
results = cursor.fetchall()
#
for row in results:
	deptno = row[0]
	dname = row[1]
# Now print fetched result
	print("deptno=%s,dname=%s" % \
	(deptno, dname))
#
#print("print database version : %s " % data)
# it is important to close the opened database connection to avoid hanging sessions
db.close() 