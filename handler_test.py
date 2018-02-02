import json
import unittest

import handler


class RequestMock(object):
    def __init__(self, mock_dict=None):
        if mock_dict is None:
            mock_dict = {}
        self.json = {'hello': 'world'}
        for key in mock_dict:
            setattr(self, key, mock_dict[key])


class HandlerTest(unittest.TestCase):
    def test(self):
        print("testing")
        self.hello()
        self.render_markdown()

    @staticmethod
    def hello():
        request = RequestMock()
        response = handler.hello(request)
        assert response['statusCode'] == 200
        body = response['body']
        actual = json.loads(body)['input']
        expected = request.json
        assert actual == expected

    @staticmethod
    def render_markdown():
        content = 'I am using **mistune markdown parser**'
        request = RequestMock({'json': {'data': content}})
        response = handler.render_markdown(request)
        assert response['statusCode'] == 200
        expected = '<p>I am using <strong>mistune markdown parser</strong></p>\n'
        assert response['body'] == expected
