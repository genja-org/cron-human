<?php

$pharFile = __DIR__. '/cron-human.phar';

if (file_exists($pharFile)) unlink($pharFile);
if (file_exists($pharFile . '.gz')) unlink($pharFile . '.gz');

$phar = new Phar($pharFile);
$phar->startBuffering();
$defaultStub = $phar->createDefaultStub('main.php');
$phar->buildFromDirectory(__DIR__);
$stub = "#!/usr/bin/php \n" . $defaultStub;

$phar->setStub($stub);
$phar->stopBuffering();
$phar->compressFiles(Phar::GZ);

#if (is_file($pharFile)) chmod(__DIR__ . '/con-human.phar', 0770);

echo "New phar at $pharFile" . PHP_EOL;
