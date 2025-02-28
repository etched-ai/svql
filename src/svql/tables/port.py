from __future__ import annotations
import pandas as pd
from typing import Set, Optional


class PortRow():
    def __init__(
        self,
        name: str,
        dtype: str,
        direction: str,
        width: Optional[int] = 1,
        connected_to: Set[Port] = set(),
    ):
        self.name = name
        self.dtype = dtype
        self.width = width
        self.direction = direction
        self.connected_to = connected_to

    def __hash__(self) -> int:
        return hash((self.name, self.direction))
    
    def __eq__(self, other: Port) -> bool:
        if not isinstance(other, Port):
            return False
        return (self.name, self.direction) == (other.name, other.direction)

    def connect(self, other: Port):
        self.connected_to.add(other)
        other.connected_to.add(self)

    def series(self):
        return pd.Series({
            "name": self.name,
            "dtype": self.dtype,
            "direction": self.direction,
            "width": self.width,
            "connected_to": ','.join([p.name for p in self.connected_to]) if self.connected_to else None
        })