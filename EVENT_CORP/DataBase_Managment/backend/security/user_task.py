from backend.connection.connection_pool import MySQLPool

class TaskUser:
    def __init__(self):
        self.mysql_pool = MySQLPool()

    def verify_user(self, password, user):
        authorization = '??'
        params = {
            'user': user,
            'password': password
        }
        data = []
        content = {}

        rv = self.mysql_pool.execute("SELECT * FROM users WHERE UserEmail=%(user)s AND UserPassword=%(password)s", params)
        if rv:
            for result in rv:
                authorization = 'Ha sido autorizado'
                content = {'Auth': authorization}
                data.append(content)
                content = {}
        else:
            authorization = 'No ha sido autorizado'
            content = {'Auth': authorization}
            data.append(content)
            content = {}
        return data
