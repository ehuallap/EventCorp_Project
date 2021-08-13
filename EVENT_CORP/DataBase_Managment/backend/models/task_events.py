from backend.connection.connection_pool import MySQLPool

class TaskEvents:
    def __init__(self):
        self.mysql_pool = MySQLPool()

    def create_event(self, title, description, date_start, date_end, subscribers, category_name, organizer_name):
        params = {
            'title': title,
            'description': description,
            'date_start': date_start,
            'date_end': date_end,
            'subscribers': subscribers,
            'category_name': category_name,
            'organizer_name': organizer_name
        }
        query = """INSERT INTO Events (EventTitle, EventDescription, EventDateTimeStart, EventDateTimeEnd, EventSubscribers, CategoryName, OrganizerName) 
            values (%(title)s, %(description)s, %(date_start)s,%(date_end)s, %(subscribers)s, %(category_name)s, %(organizer_name)s)"""
        cursor = self.mysql_pool.execute(query, params, commit=True)

        data = {'ID': cursor.lastrowid, 'Title': title, 'Description': description,
                'Starts': date_start, 'Ends': date_end, 'Subscribers': subscribers,
                'Category_name': category_name, 'Organizer_name': organizer_name}
        return data

    def get_event(self, id):
        params = {'id': id}
        rv = self.mysql_pool.execute("SELECT * FROM events WHERE EventID=%(id)s", params)
        data = []
        content = {}
        for result in rv:
            content = {'ID': result[0], 'Title': result[1], 'Description': result[2],
                       'Starts': result[3], 'Ends': result[4], 'Subscribers': result[5],
                       'Img': result[6], 'CategoryName': result[7], 'OrganizerName': result[8]}
            data.append(content)
            content = {}
        return data

    def get_event_category(self, category_name):
        params = {'category_name': category_name}
        rv = self.mysql_pool.execute("SELECT * FROM events WHERE CategoryName=%(category_name)s", params)
        data = []
        content = {}
        for result in rv:
            content = {'ID': result[0], 'Title': result[1], 'Description': result[2],
                       'Starts': result[3], 'Ends': result[4], 'Subscribers': result[5],
                       'Img': result[6], 'CategoryName': result[7], 'OrganizerName': result[8]}
            data.append(content)
            content = {}
        return data

    def get_event_organizer(self, category_name):
        params = {'category_name': category_name}
        rv = self.mysql_pool.execute("SELECT * FROM events WHERE CategoryName=%(category_name)s", params)
        data = []
        content = {}
        for result in rv:
            content = {'ID': result[0], 'Title': result[1], 'Description': result[2],
                       'Starts': result[3], 'Ends': result[4], 'Subscribers': result[5],
                       'Img': result[6], 'CategoryName': result[7], 'OrganizerName': result[8]}
            data.append(content)
            content = {}
        return data

    def get_events(self):
        rv = self.mysql_pool.execute("SELECT * FROM events")
        data = []
        content = {}
        for result in rv:
            content = {'ID': result[0], 'Title': result[1], 'Description': result[2],
                       'Starts': result[3], 'Ends': result[4], 'Subscribers': result[5],
                       'Img': result[6], 'CategoryName': result[7], 'OrganizerName': result[8]}
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
