# Library with Test Scope
class TestLib:

    ROBOT_LIBRARY_SCOPE = 'TEST CASE'

    def __init__(self):
        self._counter = 0

    def test_count(self):
        self._counter += 1
        print self._counter

    def clear_test_counter(self):
        self._counter = 0

# Library with Suit Scope
class SuitLib:

    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    def __init__(self):
        self._counter = 0

    def suit_count(self):
        self._counter += 1
        print self._counter

    def clear_suit_counter(self):
        self._counter = 0

# Library with Global Scope
class GlobalLib:

    ROBOT_LIBRARY_SCOPE = 'GLOBAL'


    def __init__(self):
        self._counter = 0

    def global_count(self):
        self._counter += 1
        print self._counter

    def clear_global_counter(self):
        self._counter = 0