#!/usr/bin/env python3
""" Cache class """
import redis
from typing import Union, Callable
import uuid


class Cache:
    """ Cache class """
    def __init__(self) -> None:
        self._redis = redis.Redis()
        self._redis.flushdb(True)

    def store(self, data: Union[str, bytes, int, float]) -> str:
        """ Storing strings in Redis """
        key = str(uuid.uuid4())
        self._redis.set(key, data)
        return key

    def get(
            self,
            key: str,
            fn: Callable = None) -> Union[str, bytes, int, float]:
        """ Converts data back to the desired format """
        data = self._redis.get(key)

        if fn is None:
            return data
        return fn(data)

    def get_str(self, key: str) -> str:
        """ Reading strings from Redis """
        return self.get(key, lambda x: x.decode('utf-8'))

    def get_int(self, key: str) -> int:
        """ Reading ints from Redis """
        return self.get(key, lambda x: int(x))
