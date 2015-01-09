import views
import unittest


class ViewsTestCase(unittest.TestCase):
    def setUp(self):
        self.app = views.app.test_client()

    def tearDown(self):
        pass

    def test_returns_hello(self):
        rv = self.app.get('/')
        print(rv.data)
        assert 'Hello World' in rv.data

if __name__ == '__main__':
    unittest.main()
