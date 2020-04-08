# human-cron

There are too many stars in the crontab definition.
I can never remember which is which.

Someone has already implemented a parser,
but they did not provide a cli tool.

## Installation

    git clone https://github.com/genja-org/cron-human /tmp/cron-human
    make install -C /tmp/cron-human 

## Alternative and similar tools on the web

- https://cronexpressiondescriptor.azurewebsites.net/?expression=0+30+10-13+%3F+*+WED%2CFRI&locale=en
- https://crontab.guru/
- https://www.freeformatter.com/cron-expression-generator-quartz.html

## Which is which

if you put this into a cron.blank file, you can import it with (make recron)

    old=$(mktemp -u old-crontab-XXX)
    crontab -l | tee $old
    cat cron.blank $old > new
    contab new


    
cron.blank

    # ┌─────────────────── minute (0 - 59)
    # │ ┌───────────────── hour (0 - 23)
    # │ │ ┌─────────────── day of the month (1 - 31)
    # │ │ │ ┌───────────── month (1 - 12)
    # │ │ │ │ ┌─────────── day of the week (0 - 6) (Sunday to Saturday;
    # │ │ │ │ │                                     7 is also Sunday on some systems)
    # * * * * * command to execute


## Acknowlegements

- https://github.com/bpolaszek/natural-cron-expression
- https://en.wikipedia.org/wiki/Cron
