#!/usr/bin/env python3
""" 9-insert_school """

def insert_school(mongo_collection, **kwargs):
    """ Inserts a new document in a collection based on kwargs """
    doc = mongo_collection.insertOne(**kwargs)
    return doc._id