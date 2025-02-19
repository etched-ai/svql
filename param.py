import pandas as pd
from typing import Optional

class Param:
    def __init__(
        self,
        name: str,
        dtype: str,
        scope: str,
        default_value: Optional[int] = None,
        override_value: Optional[int] = None,
        typed_param: bool = False
    ):
        self.name = name
        self.dtype = dtype
        self.default_value = default_value
        self.override_value = override_value
        self.scope = scope
        self.typed_param = typed_param

    def series(self) -> pd.Series:
        return pd.Series({
            "name": self.name,
            "dtype": self.dtype,
            "default_value": self.default_value,
            "override_value": self.override_value,
            "scope": self.scope,
            "typed_param": self.typed_param
        })

    def print(self) -> None:
        print(self.series())