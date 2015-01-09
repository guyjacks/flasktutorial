import views


def test_hello():
    app = views.app.test_client()
    rv = app.get('/')
    assert 'Hello World' in rv.data
