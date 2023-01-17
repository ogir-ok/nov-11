


class  HashTable:
    def __init__(self):
        self.base = 100
        self.container = [None] * self.base

    def get_hash(self, value: int) -> int:
        return value % self.base    # 133 -> 33, 44-> 44 , 144 -> 44

    def add_value(self, value):
        v_hash = self.get_hash(value)

        if self.container[v_hash] is None:
            self.container[v_hash] = [value]

        else:
            self.container[v_hash].append(value)


    def find(self, value):
        v_hash = self.get_hash(value)

        return value in self.container[v_hash]


