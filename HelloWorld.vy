# @version ^0.3.0

# declare a variable
greet: public(String[100])     # Public variable named "greet", it's a string type with max size of 100 characters.

# Initialize variable when the contract is deployed.
@external
def __init__():
    self.greet = "Hello dev, you are playing with Vyper."