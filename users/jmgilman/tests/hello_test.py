from hello.hello import hello


def test_hello():
    assert hello("Alice") == "Hello, Alice!"
    assert hello() == "Hello, World!"

