SHELL = /bin/bash
phar:
	@php -d phar.readonly=0 make-phar.php

install: phar
	@if   [[ -w ~/bin ]]; then          target=~/bin; \
	elif [[ -w /usr/local/bin ]]; then target=/usr/local/bin; \
	fi; \
	if [[ -w $$target ]]; then \
		install -v -m 755 cron-human.phar ~/bin/cron-human; \
	else \
		echo unable to write to ~/bin or /usr/local/bin; \
	fi;

uninstall:
	rm ~/bin/cron-human || true
	rm /usr/local/bin/cron-human || true


recron:
	old=$(shell mktemp -u old-crontab-XXX); \
    crontab -l | tee $$old; \
    cat cron.blank $$old > new; \
    crontab new; \
	rm new; \
	echo your old crontab is in $$old
