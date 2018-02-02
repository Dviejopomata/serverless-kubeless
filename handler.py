import json
from datetime import datetime

def printClock():
    now = datetime.now()
    clock = "%02d:%02d" % (now.hour,now.minute)
    print clock
    return clock

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
