from backend.models.connection_pool import MySQLPool

class TaskModel:
    def __init__(self):
        self.mysql_pool = MySQLPool()

    def get_event(self, id):
        params = {'id': id}
        rv = self.mysql_pool.execute("SELECT * FROM list_events WHERE id=%(id)s", params)
        data = []
        content = {}
        for result in rv:
            content = {'id': result[0], 'title': result[1], 'description': result[2],
                       'date': result[3], 'subscribers': result[4]}
            data.append(content)
            content = {}
        return data

    def get_events(self):
        rv = self.mysql_pool.execute("SELECT * FROM list_events")
        data = []
        content = {}
        for result in rv:
            content = {'id': result[0], 'title': result[1], 'description': result[2],
                       'date': result[3], 'subscribers': result[4]}
            data.append(content)
            content = {}
        return data

    def create_event(self, title, description, date, subscribers):
        params = {
            'title': title,
            'description': description,
            'date': date,
            'subscribers': subscribers
        }
        query = """INSERT INTO list_events (EventTitle, EventDescription, EventDate, EventSubscribers) 
            values (%(title)s, %(description)s, %(date)s, %(subscribers)s)"""
        cursor = self.mysql_pool.execute(query, params, commit=True)

        data = {'id': cursor.lastrowid, 'title': title, 'description': description,
                'date': date, 'subscribers': subscribers}
        return data

    def delete_event(self, id):
        params = {'id': id}
        query = """DELETE FROM list_events WHERE EventID = %(id)s"""
        self.mysql_pool.execute(query, params, commit=True)

        data = {'result': 1}
        return data

if __name__ == "__main__":
    tm = TaskModel()

    #print(tm.get_task(1))
    #print(tm.get_tasks())
    print(tm.delete_event(67))
    print(tm.get_events())
    #print(tm.create_task('prueba 10', 'desde python'))