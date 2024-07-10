#!/usr/bin/env python3
import json
greeting = "Hello, world"

print (f"{greeting} is the first program in any language")

def print_collection(collection_arg, header = ""):
    print (header)
    if isinstance(collection_arg, dict):
        for k, v in collection_arg.items():
            print(f"{k}: {v}")
    else:
        for x in collection_arg:
            print (x)

# dict
mydict = dict()
mydict['hello'] = "world"
mydict['true'] = True

for k in mydict:
    print (k, ":", mydict[k])
    if (k == 'true'):
        print ("true is indeed True")
    else:
        pass # do nothing here

# set
literal_set = {"apple", "banana", "hello", "world"}
myset = set()
myset.add("strawberry")

# list
literal_list = ['a', 'b', 'c', 'd']
mylist = list()
mylist.append('e')

# tuple, which is immutable
literal_tuple = ("apple", "banana", "cherry")

# range, reversed
for i in range(10, 0, -1):
    print (i)
    mylist.append(i)

print_collection(reversed(mylist), "\n\nmylist reversed:")

#split
txt = "welcome to the jungle"
txt_split = txt.split()

# files
f = open("demofile.txt", "w")
f.write("Now the file has more content!")
f.write(str(mylist))
json_dict=json.dumps(mydict)
f.write(json_dict)

f = open("demofile.txt", "r")
print(f.read())

# logic - is checks mem address
if ("a" is not None):
    print ("a is not None")
if ("a" == "b"):
    pass
elif ("a" != "a" or "a" is "a"):
    print ("a is a")
else:
    print ("a is b")

print_collection(mydict, "\n\nmydict:")
print_collection(literal_set,"\n\nliteral_set:")
print_collection(myset, "\n\nmyset:")
print_collection (literal_list, "\n\nliteral_list:")
print_collection (mylist, "\n\nmylist:")
print_collection(literal_tuple, "\n\nliteral_tuple:")
print(txt_split)