class Node:
    def __init__(self, value):
        self.next = None
        self.value = value

    def __str__(self):
        return f'N({self.value})'


# 31 -> 5 -> 32 -> 3 -> 17 -> 21 -> 24


class LList():
    def __init__(self):
        self.root = None
        self.tail = None

    def populate(self, iterable):
        self.root = Node(iterable[0])
        self.tail = self.root
        for i in iterable[1:]:
            self.tail.next = Node(i)
            self.tail = self.tail.next

    def find(self, val):
        elem = self.root
        while elem is not None:
            if elem.value == val:
                return elem
            elem = elem.next
        return None

    def find_prev(self, node):
        elem = self.root
        if elem is node:
            return None

        while elem.next is not node:
            elem = elem.next
        return elem

    def add_after(self, node: Node, val):
        next = Node(val)
        next.next = node.next
        node.next = next

    def add_before(self, node: Node, val):
        prev = self.find_prev(node)

        if prev is not None:
            self.add_after(prev, val)
        else:
            new_elem = Node(val)
            new_elem.next = self.root
            self.root = new_elem


    def __str__(self):
        elem = self.root
        s = ''
        while elem:
            s += f'{elem} -> '
            elem = elem.next
        return s






l = LList()
l.populate([31,5,32,3,17,21,24])

print(l)

print('17:', l.find(17))
print('33:', l.find(33))

l.add_after(l.find(17), 25)
print(l)
