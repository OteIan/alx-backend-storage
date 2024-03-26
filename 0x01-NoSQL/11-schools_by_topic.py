#!/usr/bin/env python3
""" 11-schools_by_topic """

def schools_by_topic(mongo_collection, topic):
    """ Returns list of school having a specific topic """
    return [result for result in mongo_collection.find({topic: 'topic'})]
