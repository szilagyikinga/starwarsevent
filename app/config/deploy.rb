set :szilagyikinga, "set your application name here"
set :domain,      "#{application}.fr"
set :deploy_to,   "/home/ubuntu/starwarsevent"
set :app_path,    "app"

set :repository,  "git@github.com:szilagyikinga/starwarsevent.git"
set :scm,         :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `subversion`, `mercurial`, `perforce`, or `none`

set :model_manager, "doctrine"
# Or: `propel`

role :web,        domain                         # Your HTTP server, Apache/etc
role :app,        domain, :primary => true       # This may be the same as your `Web` server

set  :keep_releases,  3
set  :deploy_via, :remote_cache

# Be more verbose by uncommenting the following line
# logger.level = Logger::MAX_LEVEL