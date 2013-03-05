<?php

chdir(dirname(__FILE__) . '/../../..');
$_SERVER['REMOTE_ADDR'] = '127.0.0.1';
require_once './includes/bootstrap.inc';
drupal_bootstrap(DRUPAL_BOOTSTRAP_FULL);
print "cwd: " . getcwd() . "\n";
module_load_include('inc', 'ground_php', 'test/Fixture');
module_load_include('inc', 'ground_php', 'test/Ground_Fixture');
module_load_include('inc', 'ground_php', 'test/Ground_Test_Case');
module_load_include('inc', 'ground_drupal', 'test/Drupal_Test_Case');
 