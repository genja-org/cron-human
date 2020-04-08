<?php
/**
 * The cron-human
 *
 * @category Cli
 * @package  CronHuman
 * @author   Jaroslav Rakhmatoullin <jazzoslav@gmail.com>
 * @license  http://mit/licence MIT
 * @link     https://github.com/genja-org/cron-human
 */
require __DIR__. '/vendor/autoload.php';
use BenTools\NaturalCronExpression\NaturalCronExpressionParser;
echo NaturalCronExpressionParser::fromString(implode(' ', $argv))
    . ' /bin/command'
    . PHP_EOL;
