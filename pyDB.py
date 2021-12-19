import mysql.connector
from mysql.connector import errorcode
from mysql.connector.errors import DataError

# Method to get the records from the database to store in a file and to present it.
def WriteRows(conn,Query,file):
    cur = conn.cursor()
    cur.execute(Query)
    q = Query.split(' ')
    file.write(q[3]+" Table:\n")
    print(q[3]+" Table:")
    for rec in cur.fetchall():
        line=""
        for r in rec:
            line+=str(r)+","
        file.write(line+"\n")
        print(line)
    file.write("\n")
    print("\n")

try:
    # Connecting to Database
    conn = mysql.connector.connect(
        user = "root",
        password = "maria@123",
        host = "localhost",
        database = "HostelManage"
    )
    print("database successfully connected!")

    # Opening a file to write
    file = open('Info.txt','w')

    # Querying the Tables
    WriteRows(conn,"select * from branch",file)
    WriteRows(conn,"select * from cafeteria",file)
    WriteRows(conn,"select * from hostel",file)
    WriteRows(conn,"select * from room",file)
    WriteRows(conn,"select * from students",file)
    print("Tables successfully imported")
    
except mysql.connector.Error as err:
    print("database didn't connect")
    exit()
except IOError:
    print("File not found or path incorrect")
    exit()
finally:
    conn.close()
