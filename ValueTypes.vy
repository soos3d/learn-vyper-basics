# @version ^0.3.0

# Value types:

# Boolean
boolean: public(bool)   # Public bool variable named boolean

#  Signed integer 128, supports negative numbers.
integer128: public(int128) # Ranges from -2 **127 to 2 ** 127 -1 

# Unsigned integer 256, only positive numbers.
uInteger256: public(uint256) # Ranges from 0 to 2 ** 256 -1

# Decimal integer
decimalInt: public(decimal) # Same range as int128, up to 10 decimal places

# Address
addr: public(address) # Stores an eth address

# Bytes 32, good to store hashes
by32: public(bytes32)

# Bytes and string arrays
# If you copy one of those into another variable, it will run a loop coping each element

bytesArray: public(Bytes[100]) # Bytes array lenght 100
stringtype: public(String[100]) # String of max 100 characters

# Initialize variables when the contract is deployed

@external
def __init__():
    self.boolean = True
    self.integer128 = -2
    self.uInteger256 = 100
    self.decimalInt = 10.6      # Remix will not show it properly, does not know how to handle decimals.
    self.addr = 0x0FAd74EF878Ed65Dd40b71Ea586738DF94cF1360
    self.by32 = 0x6c6561726e207679706572000000000000000000000000000000000000000000
    self.bytesArray = b"\x05"
    self.stringtype = "Chainstack rocks"