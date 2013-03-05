<?php

class Test_Suite extends PHPUnit_Framework_TestSuite {

  public static $current = 'all';

  public static function suite() {
    $suite = new Test_Suite();

    $suites['all'] = array(
        'metahub/test',
        'ground_php/modules/ground_db/test',
        'ground_php/modules/ground_history/test',
        'ground_php/test/tests',
        'ground_php/modules/ground_drupal/test/tests',
    );
    $suites['select'] = array(
        'ground_php/test/Query_Test.php',
    );
    $suites['table'] = array(
        'ground_php/modules/ground_db/test/Ground_Table_Test.php',
    );

    foreach ($suites[Test_Suite::$current] as $include) {
      $path = 'E:/Websites/ground_drupal/sites/all/modules/custom/' . $include;
      if (is_dir($path)) {
        $suite->add_folder($path);
      }
      else {
        $suite->addTestFile($path);
      }
    }

    return $suite;
  }

  public function add_folder($folder) {
    $files = glob($folder . '\\*.php');
    foreach ($files as $file) {
      $this->addTestFile($file);
    }
  }

}