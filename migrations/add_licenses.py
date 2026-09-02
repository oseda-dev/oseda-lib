#!/bin/python3

import json
from pathlib import Path

path = "./courses" # change me to migrate tests and prod
for course in Path(path).iterdir():
    oseda_conf_file = course / "oseda-config.json"

    if not oseda_conf_file.exists():
        print("Could not find oseda-config.json for ", course)
        continue

    with open(oseda_conf_file) as f:
        j = json.load(f)

    if "license" not in j:
        j["license"] = "Apache-2.0"

    with open(oseda_conf_file, "w") as f:
        json.dump(j, f, indent=2)
