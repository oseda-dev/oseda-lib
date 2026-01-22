#!/bin/python3

import json, glob
from pathlib import Path

# run me from top level oseda-lib dir
for course in Path("./courses").iterdir():
    oseda_conf_file = f"{course}/oseda-config.json"
    
    j = json.load(open(oseda_conf_file))
    j['tags'] = j.pop('category')
    json.dump(j, open(oseda_conf_file,'w'), indent=2)
    

