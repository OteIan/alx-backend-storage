#!/usr/bin/env python3
"""  8-all """

def list_all(mongo_collection):
    """ Lists all documents in the collection """
    return [doc for doc in mongo_collection.find()]