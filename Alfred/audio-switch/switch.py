# SwitchAudioSource -a -t input -f json | sed s/\"name\"/\"title\"/ | sed s/\"id\"/\"arg\"/ | jq -s . | jq -n '{ "items": input }'

import os
import json
import sys

# read all the in SwitchAudioSource -a -t input -f json
# read the current in  SwitchAudioSource -c -t input -f json
# Write output
## if currently selected
## add a checkmark
## present last


def read_switch_audio(command):
    stream = os.popen(command)
    output = stream.read()
    return json.loads(output)


def print_output():
    all_items = read_switch_audio('SwitchAudioSource -a -t output -f json | jq -s .')
    current_item = read_switch_audio('SwitchAudioSource -c -t output -f json')
    current_id = current_item['id']

    # ## move current item to last and a ✔ to its name
    all_items = [item for item in all_items if item['id'] != current_id]
    current_item['name'] = " ✔ " + current_item['name']
    all_items = all_items + [current_item]


    alfred_results = []
    for item in all_items:
        result = {
            "title": item['name'],
            # "autocomplete"
            "arg": item['id'],
        }
        alfred_results.append(result)

    response = json.dumps({
        "skipknowledge": True,
        "items": alfred_results
    })
    sys.stdout.write(response)

print_output()

# if __name__ == '__main__':
#     printIn()


# print in
# -t input

# print output
# -t output

# switch input
# -s input {id}

# switch output
# -s output {id}

# switch to Jabra
# -s jabra

# switch to system
# -s system

# switch to headset
# - s WH-CH700
