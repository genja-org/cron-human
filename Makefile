SHELL = /bin/bash
phar:
	@php -d phar.readonly=0 make-phar.php
	@if   [[ -w ~/bin ]]; then          target=~/bin; \
	elif [[ -w /usr/local/bin ]]; then target=/usr/local/bin; \
	fi; \
	if [[ -w $$target ]]; then \
		install -v -m 755 cron-human.phar ~/bin/cron-human; \
	else \
		echo unable to write to ~/bin or /usr/local/bin; \
	fi;

