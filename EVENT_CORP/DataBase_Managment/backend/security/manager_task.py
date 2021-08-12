from backend.connection.connection_pool import MySQLPool

class TaskManager:
    def __init__(self):
        self.mysql_pool = MySQLPool()

    def verify_manager(self, password):
        authorization = '??'
        params = {'password': password}
        data = []
        content = {}

        rv = self.mysql_pool.execute("SELECT * FROM managers WHERE ManagerPassword=%(password)s", params)
        if rv:
            for result in rv:
                authorization = 'Ha sido autorizado'
                content = {'ID': result[0], 'Name': result[1], 'Authorization': authorization}
                data.append(content)
                content = {}
        else:
            authorization = 'No ha sido autorizado'
            content = {'ID': 'No encontrado', 'Name': 'No encontrado', 'Authorization': authorization}
            data.append(content)
            content = {}
        return data
