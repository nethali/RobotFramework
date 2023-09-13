class MyCustomLib:

    def hello_world(self):
        print "Hello World!"

    def print_name(self, name):
        print "My name is %s" % (name)

    def hello_country(self, country='Japan', greeting='Konichiwa'):
        print "The greeting in %s is %s" % (country, greeting)


# Have another class
class MyMathLib:

    def __init__(self, first_number, second_number):
        self._first_number = int(first_number)
        self._second_number = int(second_number)

    def add(self):
        print "ADDING %d + %d" % (self._first_number, self._second_number)
        return self._first_number + self._second_number