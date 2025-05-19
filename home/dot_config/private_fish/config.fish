if status is-interactive

  # remove greeting
  set -g fish_greeting

  # enable starship prompt
	if type -q starship
        starship init fish | source
    end
end

# The next line updates PATH for the Google Cloud SDK.
# See https://cloud.google.com/sdk/docs/downloads-interactive
if [ -f '/Users/raphael/google-cloud-sdk/path.fish.inc' ]; . '/Users/raphael/google-cloud-sdk/path.fish.inc'; end
