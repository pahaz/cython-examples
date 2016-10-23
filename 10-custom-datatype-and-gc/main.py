#!/usr/bin/env python

from my_data import Data


def main():
    # Looks and feels like normal python objects
    objectList = [Data(1), Data(2), Data(3)]

    # Print them out
    for dataObject in objectList:
        print(dataObject)

    # Show the Mutability
    objectList[1].set_value(1234)
    print(objectList[1])

    # all native objects will be deallocated on close


if __name__ == "__main__":
    main()
