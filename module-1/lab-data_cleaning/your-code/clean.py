import pandas as pd
import pymysql
import sqlalchemy

a = sqlalchemy.create_engine('mysql+pymysql://guest:relational@relational.fit.cvut.cz/stats')

usuarios =pd.read_sql_query('SELECT * from users', a)

print(usuarios.head())

usuarios = usuarios.rename(columns = {'Id': 'userId'})

poststable  = pd.read_sql_query('Select * from posts',  a)

poststable = poststable.rename(columns = {'Id': 'postId'})
poststable = poststable.rename(columns = {'OwnerUserId': 'userId'})

user_col = pd.read_sql_query('SELECT userId, Reputation, Views, UpVotes, DownVotes FROM stats.users', a)
post_col = pd.read_sql_query('SELECT postId, Score, userId, ViewCount, CommentCount FROM stats.posts', a)

b = user_col.merge(post_col, left_on = ['userId', 'Reputation', 'Views, ''UpVotes', 'DownVotes'], right_on = ['postId', 'Score', 'ViewCount', 'CommentCount'])

c = b.columns.isnull().sum()

