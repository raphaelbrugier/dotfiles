all: karabiner.json.erb
	erb karabiner.json.erb | jq '.' > karabiner.json

clean:
	cp karabiner.json karabiner.tmp.json && cat karabiner.tmp.json | jq '.' > karabiner.json && rm karabiner.tmp.json