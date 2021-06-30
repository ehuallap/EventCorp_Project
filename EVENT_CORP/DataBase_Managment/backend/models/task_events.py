from backend.connection.connection_pool import MySQLPool

class TaskEvents:
    def __init__(self):
        self.mysql_pool = MySQLPool()

    def create_event(self, title, description, date_start, date_end, subscribers):
        params = {
            'title': title,
            'description': description,
            'date_start': date_start,
            'date_end': date_end,
            'subscribers': subscribers
        }
        query = """INSERT INTO events (EventTitle, EventDescription, EventDateStart,EventDateEnd, EventSubscribers) 
            values (%(title)s, %(description)s, %(date_start)s,%(date_end)s, %(subscribers)s)"""
        cursor = self.mysql_pool.execute(query, params, commit=True)

        data = {'ID': cursor.lastrowid, 'Title': title, 'Description': description,
                'Date starts at': date_start, 'Date ends at': date_end, 'Subscribers': subscribers}
        return data

    def get_event(self, id):
        params = {'id': id}
        rv = self.mysql_pool.execute("SELECT * FROM events WHERE id=%(id)s", params)
        data = []
        content = {}
        for result in rv:
            content = {'ID': result[0], 'Title': result[1], 'Description': result[2],
                       'Date starts at': result[3], 'Date ends at': result[4], 'Subscribers': result[5]}
            data.append(content)
            content = {}
        return data

    def get_events(self):
        rv = self.mysql_pool.execute("SELECT * FROM events")
        data = []
        content = {}
        for result in rv:
            content = {'ID': result[0], 'Title': result[1], 'Description': result[2],
                       'Date starts at': result[3], 'Date ends at': result[4], 'Subscribers': result[5]}
            data.append(content)
            content = {}
        return data

    def delete_event(self, id):
        params = {'id': id}
        query = """DELETE FROM events WHERE EventID = %(id)s"""
        self.mysql_pool.execute(query, params, commit=True)

        data = {'result': 'SUCCESSFULLY DELETED'}
        return data


if __name__ == "__main__":
    tm = TaskEvents()
    print(tm.get_events())
