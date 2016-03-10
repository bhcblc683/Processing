__author__ = 'kosei'
import MySQLdb


class TableStructure(object):
    def __init__(self, table_name, field_tuple):
        if not isinstance(field_tuple, tuple):
            raise ValueError
        self._table_name = table_name
        self._table_structure = {}
        for e_r in field_tuple:
            self._table_structure[e_r[0]] = {
                'Type': e_r[1],
                'NULL': e_r[2],
                'Key': e_r[3],
                'Default': e_r[4],
                'Extra': e_r[5]
            }
        self._table_fields = [e_k for e_k in self.table_structure.keys()]

    @property
    def table_structure(self):
        return self._table_structure

    @property
    def table_name(self):
        return self._table_name

    @property
    def table_fields(self):
        return self._table_fields


class dbOperator(object):
    def __init__(self, host='127.0.0.1', port=3307,
                 user='root', passwd='', db=''):
        self._host = host
        self._port = port
        self._user = user
        self._passwd = passwd
        self._db = db
        self._con = MySQLdb.connect(host=host, port=port,
                                    user=user, passwd=passwd, db=db)
        self._cur = self._con.cursor()

    @property
    def host(self):
        return self._host

    @property
    def port(self):
        return self._port

    @property
    def user(self):
        return self._user

    @property
    def db(self):
        return self._db

    @db.setter
    def db(self, _db):
        self._cur.execute('USE %s;' % _db)
        self._db = _db

    def get_table_structure(self, table_name):
        self._cur.execute('DESC %s;' % table_name)
        return TableStructure(table_name, self._cur.fetchall())

    def execute(self, sql):
        self._cur.execute(sql)
        return self._cur.fetchall()
