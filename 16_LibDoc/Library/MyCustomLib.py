# To generate the document of the following library execute the following command:
# python -m robot.libdoc --name "My Custom Library" Library\MyCustomLib.py Docs\MyCustomLib.html

class MyCustomLib:
    """
    This is my own custom library.
    It has 3 key words.
    """

    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    ROBOT_LIBRARY_VERSION = '1.0.0'

    def hello_world(self):
        """
        Print HELLO WORLD
        """
        print "Hello World!"

    def print_name(self, name):
        """
        Give you name. This will print your name.

        Examples:
        | Print Name | yourname |
        """
        print "My name is %s" % (name)

    def hello_country(self, country='Japan', greeting='Konichiwa'):
        """
        Give country and greeting of the country.
        This will print it.

        Examples:
        | Hello Country | country=YourCounty | greeting=GreetingOfCountry |
        """
        print "The greeting in %s is %s" % (country, greeting)