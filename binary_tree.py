

class Node:
    def __init__(self, val: int):
        self.val = val
        self.l = None
        self.r = None

    def __str__(self):
        return f'N({self.val})'

    def __repr__(self):
        return str(self)

class BTree:
    def __init__(self):
        self.root = None


    def add(self, val):
        new_node = Node(val)
        node = self.root

        if node is None:
            self.root = new_node
            return

        while True:
            if val < node.val:
                if node.l:
                    node = node.l
                else:
                    node.l = new_node
                    return
            else:
                if node.r:
                    node = node.r
                else:
                    node.r = new_node
                    return

    def find(self, val):
        node = self.root
        while node is not None:
            if node.val == val:
                return node
            elif val < node.val:
                node = node.l
            else:
                node = node.r


    def sorted_b_tree(self, node=None):
        res = []
        if node is None:
            node = self.root
        if node.l:
            res.extend(self.dfs(node.l))

        res.append(node)

        if node.r:
            res.extend(self.dfs(node.r))

        return res


    def dfs(self, node=None):
        res = []
        if node is None:
            node = self.root
        res.append(node)
        if node.l:
            res.extend(self.dfs(node.l))
        if node.r:
            res.extend(self.dfs(node.r))

        return res


b = BTree()

b.add(37)
b.add(12)
b.add(42)
b.add(45)
b.add(40)
b.add(5)
b.add(1)

print('Find 4:', b.find(4))
print('Find 5:', b.find(5))


print(b.dfs())
