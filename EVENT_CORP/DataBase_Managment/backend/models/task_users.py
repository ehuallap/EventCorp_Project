from backend.connection.connection_pool import MySQLPool

class TaskUsers:
    def __init__(self):
        self.mysql_pool = MySQLPool()

    def create_user(self, last_name, name, email, events_joined):
        params = {
            'last_name': last_name,
            'name': name,
            'email': email,
            'events_joined': events_joined
        }
        query = """ INSERT INTO users (UserLastName, UserName, UserEmail, UserEventsJoined)
            VALUES (%(last_name)s, %(name)s, %(email)s, %(events_joined)s)"""
        cursor = self.mysql_pool.execute(query, params, commit=True)
        data = {'ID': cursor.lastrowid, 'LastName': last_name, 'Name': name,
                'Email': email, 'Events Joined': events_joined}
        return data

    def get_user(self, id):
        params = {'id': id}
        rv = self.mysql_pool.execute("SELECT * FROM users WHERE id=%(id)s", params)
        data = []
        content = {}
        for result in rv:
            content = {'ID': result[0], 'Last Name': result[1], 'Name': result[2],
                       'Email': result[3], 'Events Joined': result[4]}
            data.append(content)
            content = {}
        return data

    def get_users(self):
        rv = self.mysql_pool.execute("SELECT * FROM users")
        data = []
        content = {}
        for result in rv:
            content = {'ID': result[0], 'Last Name': result[1], 'Name': result[2],
                       'Email': result[3], 'Events Joined': result[4]}
            data.append(content)
            content = {}
        return data

    def delete_user(self, id):
        params = {'id': id}
        query = """DELETE FROM users WHERE UserID = %(id)s"""
        self.mysql_pool.execute(query, params, commit=True)

        data = {'result': 'SUCCESSFULLY DELETED'}
        return data


if __name__ == "__main__":
    tm = TaskUsers()
    print(tm.get_users())
