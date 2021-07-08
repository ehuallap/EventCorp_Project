from backend.connection.connection_pool import MySQLPool

class TaskCategories:
    def __init__(self):
        self.mysql_pool = MySQLPool()

    def create_category(self, name, description):
        params = {
            'name': name,
            'description': description,
        }
        query = """INSERT INTO categories (CategoryName, CategoryDescription) 
            values (%(name)s, %(description)s)"""
        cursor = self.mysql_pool.execute(query, params, commit=True)

        data = {'ID': cursor.lastrowid, 'Name': name, 'Description': description}
        return data


    def get_categories(self):
        rv = self.mysql_pool.execute("SELECT * FROM categories")
        data = []
        content = {}
        for result in rv:
            content = {'ID': result[0], 'Name': result[1], 'Description': result[2],}
            data.append(content)
            content = {}
        return data

    def delete_category(self, id):
        params = {'id': id}
        query = """DELETE FROM categories WHERE CategoryID = %(id)s"""
        self.mysql_pool.execute(query, params, commit=True)

        data = {'result': 'SUCCESSFULLY DELETED'}
        return data


if __name__ == "__main__":
    tm = TaskCategories()
    print(tm.get_categories())
