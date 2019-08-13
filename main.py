import asyncio
import json


async def async_task():
    loop = asyncio.get_running_loop()
    return {
        'statusCode': 200,
        'body': json.dumps({
            'loop_id': id(loop),
            'hello': 'world'
        })
    }


def main(event=None, context=None):
    loop = asyncio.get_event_loop()
    return loop.run_until_complete(async_task())
