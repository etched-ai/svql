def clean_port_string(port_str: str) -> str:
    """Clean and format port string"""
    parts = port_str.split("//")
    parts = [s.strip() for s in parts]
    parts = [s.split("\n") for s in parts]
    parts = [item for sublist in parts for item in sublist]

    return [s.strip() for s in parts][-1]