import unittest
from google.appengine.ext import db
from google.appengine.ext import testbed

class EvengeTestCase(unittest.TestCase):
    def setUp(self):
        self.testbed = testbed.Testbed()
        self.testbed.activate()
        self.testbed.init_urlfetch_stub()

    def tearDown(self):
        self.testbed.deactivate()


if __name__ == "__main__":
	unittest.main()
