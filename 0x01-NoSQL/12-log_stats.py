#!/usr/bin/env python3
""" 12-log_stats """
from pymongo import MongoClient


def nginx_logs(nginx_collection):
    """ Prints Nginx request logs """
    print(f'{nginx_collection.count_documents({})} logs')
    print('Methods:')

    methods = ["GET", "POST", "PUT", "PATCH", "DELETE"]
    for method in methods:
        count = len(list(nginx_collection.find({'method': method})))
        print(f'\tmethod {method}: {count}')

    status_checks = len(list(nginx_collection.find({'method': 'GET', 'path': '/status'})))
    print(f'{status_checks} status check')
    