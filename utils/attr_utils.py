def print_attrs(obj: object):
    for attr in dir(obj):
        if not attr.startswith('_'):
            print(f"{attr}: {getattr(obj, attr)}")