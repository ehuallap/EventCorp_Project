from backend.connection.connection_pool import MySQLPool

class TaskManager:
    def __init__(self):
        self.mysql_pool = MySQLPool()

    def verify_manager(self, password, user):
        authorization = '??'
        params = {
            'user': user,
            'password': password
        }
        data = []
        content = {}

        rv = self.mysql_pool.execute("SELECT * FROM managers WHERE ManagerName=%(user)s AND ManagerPassword=%(password)s", params)
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
