# To limit what functions become keywords is using the module level __all__ attribute

__all__ = ['my_keyword_1', 'my_keyword_2']

def my_keyword_1():
    print "My Keyword 1"

def my_keyword_2():
    print "My Keyword 2"

# This is not a keyword because not in the __all__ list
def my_keyword_3():
    print "My Keyword 3"