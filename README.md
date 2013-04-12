# lpsearch

lpsearch is a workflow for [Alfred][] that enables you to search your
[LiquidPlanner][] workspace for tasks and projects.

Hit enter on any particular one of them and you'll be taken to that task
in your default browser.

## Requirements

LiquidPlanner's official API gem unfortunately doesn't work with Ruby
1.8.7, the version that ships with Mac OS X.

So, if you don't have it already, you'll need to install [rvm][] and
a version of Ruby greater than 1.9.3; lpsearch works fine with 2.0.0-p0.

[alfred]:        http://www.alfredapp.com/
[liquidplanner]: https://www.liquidplanner.com/
[rvm]:           http://rvm.io/

