import importlib, importlib.util
# from ..sub2.world import World


importlib.import_module('hello').Hello.printer()

w = importlib.util.spec_from_file_location('world','hello/sub2/world.py').loader.load_module().World
w.printer()

relativeWorld = importlib.import_module('world',__name__).World
relativeWorld.printer()