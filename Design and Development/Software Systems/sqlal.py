import sqlalchemy
from sqlalchemy.ext.declarative import declarative_base
#from sqlalchemy import Table, Column, Integer, String, MetaData

engine = sqlalchemy.create_engine("mysql://root:iiit@123@localhost:3306/iiit_iss",echo = True)
#meta = MetaData()
#
Base = declarative_base()
class User(Base):
	__tablename__ = 'users'

	id = sqlalchemy.Column(sqlalchemy.Integer, primary_key=True)
	name = sqlalchemy.Column(sqlalchemy.String(length=50))
	fullname = sqlalchemy.Column(sqlalchemy.String(length=50))
	nickname = sqlalchemy.Column(sqlalchemy.String(length=50))

	def _repr_(self):
		return "<User(name='{0}', fullname='{1}', nickname='{2}')>".format(self.name,self.fullname,self.nickname)

Base.metadata.create_all(engine)		
		
Session = sqlalchemy.orm.sessionmaker()
Session.configure(bind=engine)
session = Session()
#
jwk_user = User(name='jesper', fullname='Jesper Wisborg Krogh', nickname='&#x1f42c;')
session.add(jwk_user)
session.commit()
#
our_user = session.query(User).filter_by(name='jesper').first()
print('\nOur User:')
print(our_user)
print('Nick name in hex: {0}'.format(our_user.nickname.encode('utf-8')))
#students = Table('students', meta, Column('id', Integer, primary_key = True), Column('name', String), Column('lastname', String))
#
#students.create()

#meta.create_all(engine)

