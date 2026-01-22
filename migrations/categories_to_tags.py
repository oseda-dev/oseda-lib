#!/bin/python3

import json, glob
from pathlib import Path
# run me from top level oseda-lib dir
for course in Path("./courses").iterdir():
    print(f"{course}")

# for f in glob.glob('*.json'):
#     j=json.load(open(f))
#     j['newField']=j.pop('oldField')
#     json.dump(j,open(f,'w'),indent=2)
