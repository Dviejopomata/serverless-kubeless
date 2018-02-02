import json
from datetime import datetime

import mistune


def print_clock():
    now = datetime.now()
    clock = "%02d:%02d" % (now.hour, now.minute)
    print(clock)
    return clock


def render_markdown(request):
    body = mistune.markdown(request.json['data'])
    response = {
        "statusCode": 200,
        "body": body
    }
    return response


def hello(request):
    body = {
        "message": "Go Serverless v1.0! Your function executed successfully!",
        "input": request.json
    }

    response = {
        "statusCode": 200,
        "body": json.dumps(body)
    }

    return response
