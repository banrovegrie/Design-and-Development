# Program that adds "Z, 10000" to table lol and "Dhruv, 2019101038" to stud
# Everytime 127.0.0.1:5000 is visited
 
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
 
application = Flask(__name__)
 
 
# Linking the application to MySQL Local Sever Instance and specfying
# That it should connect to the database called test
# URI Format: <username>:<password>@<servername>:<port>/<database-name>
 
application.config['SQLALCHEMY_DATABASE_URI'] = \
    "mysql+pymysql://root:root@localhost:3306/test"
db = SQLAlchemy(application)
 
# Layout of Table 1
class GradeList(db.Model):
    __tablename__ = 'lol'
    id = db.Column(db.Integer, primary_key=True)
    grade = db.Column(db.CHAR)
    marks = db.Column(db.Integer)
 
    # Utility Function
    def as_dict(self):
        return {"grade": self.grade, "marks": self.marks}
 
# Layout of Table 2
class Students(db.Model):
    __tablename__ = 'stud'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80))
    rno = db.Column(db.Integer)
 
    def as_dict(self):
        return {"name": self.name, "rno": self.rno}
 
 
# Basically do what I said at the start of the program
@application.route("/", methods=["GET"])
def get_index():
    # create_all() is usually in if __name__ == "__main__"
    # Though I put it here to support Table build when the
    # Program is run using gunicorn. Still works if the
    # Program still runs using python3 test.py though
    db.create_all()
    db.session.add(GradeList(grade="Z", marks=1000))
    db.session.add(Students(name="Dhruv", rno=2019101038))
    db.session.commit()
    # Shows LOL on screen
    return "LOL"
 
 
# Run the application
if __name__ == "__main__":
    # Just specifying host. Not necessary though
    application.run(host="127.0.0.1")