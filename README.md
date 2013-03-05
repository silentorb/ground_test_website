ground_test_website
===================

A Drupal website for running the tests for Ground_PHP.

Installation:

Create a mysql database named "ground_drupal" and populate it with "sites/all/db/ground_drupal.sql".

Create a mysql database named "ground_test".  You don't need to populate it; the unit tests will handle that.

The unit tests use PHP_Unit.

If you ever need it, the Drupal login is:
user: test
pass: test
