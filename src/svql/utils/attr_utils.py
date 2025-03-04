def print_attrs(obj: object):
    print("-" * 100)
    print(dir(obj))
    print("-" * 100)
    for attr in dir(obj):
        if not attr.startswith('_'):
            print(f"{attr}: {getattr(obj, attr)}")
    print("-" * 100)