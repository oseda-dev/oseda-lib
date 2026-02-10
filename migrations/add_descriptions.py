#!/bin/python3

import json
from pathlib import Path

for course in Path("./courses").iterdir():
    oseda_conf_file = course / "oseda-config.json"

    if not oseda_conf_file.exists():
        continue

    with open(oseda_conf_file) as f:
        j = json.load(f)

    if "description" not in j:
        j["description"] = ""

    with open(oseda_conf_file, "w") as f:
        json.dump(j, f, indent=2)
