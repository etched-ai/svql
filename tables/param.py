import pandas as pd
from typing import Optional


class ParamRow():
    def __init__(
        self,
        name: str,
        dtype: str,
        scope: str,
        default_value: Optional[int] = None,
        override_value: Optional[int] = None,
    ):
        self.name = name
        self.dtype = dtype
        self.default_value = default_value
        self.override_value = override_value
        self.scope = scope

    def series(self) -> pd.Series:
        return pd.Series({
            "name": self.name,
            "dtype": self.dtype,
            "default_value": self.default_value,
            "override_value": self.override_value,
            "scope": self.scope,
        })

    def __hash__(self) -> int:
        return hash((self.name, self.dtype, self.scope, self.default_value, self.override_value))
