# Verify if asyncio event loop persists

It does.

```text
Attempt #1:
{"statusCode": 200, "body": "{\"loop_id\": 140153436009136, \"hello\": \"world\"}"}{
    "StatusCode": 200,
    "ExecutedVersion": "$LATEST"
}
Attempt #2:
{"statusCode": 200, "body": "{\"loop_id\": 140153436009136, \"hello\": \"world\"}"}{
    "StatusCode": 200,
    "ExecutedVersion": "$LATEST"
}
Attempt #3:
{"statusCode": 200, "body": "{\"loop_id\": 140153436009136, \"hello\": \"world\"}"}{
    "StatusCode": 200,
    "ExecutedVersion": "$LATEST"
}
Attempt #4:
{"statusCode": 200, "body": "{\"loop_id\": 140153436009136, \"hello\": \"world\"}"}{
    "StatusCode": 200,
    "ExecutedVersion": "$LATEST"
}
Attempt #5:
{"statusCode": 200, "body": "{\"loop_id\": 140153436009136, \"hello\": \"world\"}"}{
    "StatusCode": 200,
    "ExecutedVersion": "$LATEST"
}
```