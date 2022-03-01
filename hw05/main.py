from typing import Protocol

class Mytype(Protocol):
    def draw(self):
        print("draw ...")

class Lottery:
    def draw(self):
        print("Lottery draw ...")
        
class Painter:
    def draw(self):
        print("Painter draw ...")

def f(x: Mytype):
    x.draw()

f(Lottery())
f(Painter())

# documents https://docs.python.org/3/library/typing.html#nominal-vs-structural-subtyping
# online playground https://mypy-play.net/?mypy=latest&python=3.10
# reference solution https://adamj.eu/tech/2021/05/18/python-type-hints-duck-typing-with-protocol/
