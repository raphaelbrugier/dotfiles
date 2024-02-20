# SwitchAudioSource -a -t input -f json | sed s/\"name\"/\"title\"/ | sed s/\"id\"/\"arg\"/ | jq -s . | jq -n '{ "items": input }'

import os
import json
import sys
import argparse
import time


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
    current_id = int(current_item['id'])

    all_items = set_current_item_last(all_items, current_id)

    result = to_alfred_result(all_items)
    sys.stdout.write(result)


def print_input():
    all_items = read_switch_audio('SwitchAudioSource -a -t input -f json | jq -s .')
    current_id = get_current_input_id()

    all_items = set_current_item_last(all_items, current_id)

    result = to_alfred_result(all_items)
    sys.stdout.write(result)


def get_current_input_id() -> int:
    current_item = read_switch_audio('SwitchAudioSource -c -t input -f json')
    current_id = current_item['id']
    return int(current_id)


def switch(id):
    os.system('SwitchAudioSource -i ' + str(id))


def switch_input(id:int):
    while True:
        switch(id)
        if get_current_input_id() == id:
            break
        else:
            print("retrying")
            time.sleep(1)


def to_alfred_result(all_output_items):
    alfred_results = []
    for item in all_output_items:
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
    return response


# add a ✔ to current device's name and move it last


def set_current_item_last(all_items, current_id: int):
    current_item = [item for item in all_items if int(item['id']) == current_id][0]
    current_item['name'] = " ✔ " + current_item['name']
    result = [item for item in all_items if int(item['id']) != current_id]
    return result + [current_item]


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument("--type", choices=["input", "output"])
    parser.add_argument("--switch", choices=["input", "output", "jabra", "system", "headset"])
    parser.add_argument("--id", type=int)
    args = parser.parse_args()

    if args.type == "input":
        print_input()
    elif args.type == "output":
        print_output()

    if args.switch == "input":
        switch_input(args.id)
    elif args.switch == "output":
        switch(args.id)

# print in
# -t input

# print output
# -t output

# switch output
# -s output {id}

# switch input
# -s input {id}

# switch to Jabra
# -s jabra

# switch to system
# -s system

# switch to headset
# - s WH-CH700
