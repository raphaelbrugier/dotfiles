if status is-interactive

  # remove greeting
  set -g fish_greeting

  # enable starship prompt
	if type -q starship
        starship init fish | source
    end
end
