Filter out the meta query from sqlite logs
==========================================

Requirements
------------
- activerecord (>= 3.0.9)

Who'is good for
------------------
If your rails log is full with (this presumes that you are using sqlite):

    SQL (0.8ms)   SELECT name
    FROM sqlite_master
    WHERE type = 'table' AND NOT name = 'sqlite_sequence'
     SQL (0.6ms)   SELECT name
    FROM sqlite_master
    WHERE type = 'table' AND NOT name = 'sqlite_sequence'

Then this gem is for you.

Usage
-----
In our gemfile place this line
    gem 'sqlite_log_filter'
then
    bundle
and no more log messages.