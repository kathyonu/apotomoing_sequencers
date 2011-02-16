# desideratus/apotomoing_sequencers    is our computer application name
# kathyonu/apotomoing_sequencers       is the git repository name as of : 20110205
# https://github.com/kathyonu/apotomoing_sequencers is the repository address

COMMMANDS RUN TO CREATE APP : 
 each command below can be found to have been run, with results, further below.
  just search the command you want to see the results on.
=========================================================

will-i-am:~William$ cd ./desideratus/                            # < this is where I store Rails apps
will-i-am:desideratus William$ rails new apotomoing_sequencers              # < this command is run when you use sqlite3 database
will-i-am:desideratus William$ rails new apotomoing_sequencers -d mysql     # < this command is run when you use mysql database

will-i-am:apotomoing_sequencers William$ bundle list
	# I changed Gemfile,
	# using copy from bookofcreations, our master app.
	# You can see that entry further below at 201102031529

will-i-am:apotomoing_sequencers William$ bundle install
will-i-am:apotomoing_sequencers William$ bundle show apotomo	# => /Users/William/.rvm/gems/ruby-1.9.2-p0@rails3/gems/apotomo-1.0.3

        === commands to build apotomoing_sequencers mysql database, if you use mysql===========================
	     ---------------------- add databases only if you are using mysql --------------------------------------
	will-i-am:apotomoing_sequencers William$ mysqladmin -uroot create apotomoing_sequencers_development;
	will-i-am:apotomoing_sequencers William$ mysqladmin -uroot create apotomoing_sequencers_test;
	will-i-am:apotomoing_sequencers William$ mysqladmin -uroot create apotomoing_sequencers_production;
	will-i-am:apotomoing_sequencers William$ mysql -uroot
		 mysql> show databases;
				+------------------------------------+
				| Database                           |
				+------------------------------------+
				| information_schema                 |
				| apotomoing_sequencers_development  |
				| apotomoing_sequencers_production   |
				| apotomoing_sequencers_test         |
				| mysql                              |
				| test                               |
				+------------------------------------+
				16 rows in set (0.01 sec)
		 mysql> use apotomoing_sequencers_development;
			Database changed
     -------------------------------------------------------------------------------------------


will-i-am:apotomoing_sequencers William$ open -e app/config/routes.rb      # added at line 3 >>  root :to => "sequencer#index"

will-i-am:apotomoing_sequencers William$ git init

will-i-am:apotomoing_sequencers William$ touch tmp/.gitignore log/.gitignore vendor/.gitignore

will-i-am:apotomoing_sequencers William$ find . -type d -empty | grep -v "vendor" | grep -v ".git" | grep -v "tmp" | xargs -I xxx touch xxx/.gitignore

will-i-am:apotomoing_sequencers William$  cat > .gitignore
.bundle
.DS_Store
**/.DS_Store
db/*.sqlite3
log/*.log
log/.gitignore
tmp/**/*
tmp/*
config/database.yml
config/initializers/secret_token.rb
doc/api
doc/app
	^^ type the above into your terminal, then when you are done ..
	Pressing Control-C escapes out

will-i-am:apotomoing_sequencers William$ open -e ./.gitignore     # to see the result

will-i-am:apotomoing_sequencers William$ git add .

will-i-am:apotomoing_sequencers William$ git commit -m "first commit, new app, gems bundled, git ignore files set up"

will-i-am:apotomoing_sequencers William$ git status

will-i-am:apotomoing_sequencers William$ rails generate controller Sequencer index

will-i-am:apotomoing_sequencers William$ rails generate scaffold SequenceCreated sequence_created:string sequence_creation:string sequence_complete:string sequence_lexigram:string sequence_singular:string

will-i-am:apotomoing_sequencers William$ rails generate scaffold Anagram text:string sequence_created_id:integer description:string reference:string

will-i-am:apotomoing_sequencers William$ rails generate apotomo:widget SequencerWidget index display --haml

will-i-am:apotomoing_sequencers William$ rails generate apotomo:widget SequenceCreatedWidget sequence_created sequence_creation sequence_complete sequence_lexigram sequence_singular write display --haml

will-i-am:apotomoing_sequencers William$ rails generate apotomo:widget AnagramWidget anagram write display_form --haml

 we can add these below AFTER THE ABOVE ARE WORKING
				William$ rails generate scaffold HumanName text:string sequence_created_id:integer description:string reference:string

				William$ rails generate scaffold Phrase text:string sequence_created_id:integer description:string reference:string

				William$ rails generate scaffold Quote text:string sequence_created_id:integer author_id:integer description:string reference:string

				William$ rails generate scaffold Author text:string sequence_created_id:integer description:string reference:string lifedates:string

				William$ rails generate scaffold ResearchLine text:string sequence_created_id:integer description:string reference:string

				William$ rails generate apotomo:widget HumanNameWidget human_name write display_form --haml  # we could also add product names, company names, etc.

				William$ rails generate apotomo:widget PhraseWidget phrase write display_form --haml       # allows up to 250 characters, we currently have 50,000,000 phrases ready to enter.

				William$ rails generate apotomo:widget QuoteWidget quote write display_form --haml        # registers the quote as a sequence_created, and allows a quote a day table to exist.

				William$ rails generate apotomo:widget AuthorWidget author write display_form --haml      # the Author name is same as HumanName, so should be related, not duplicated.

				William$ rails generate apotomo:widget ResearchWidget quote write display_form --haml     # that one represents several more widgets and their tables.

will-i-am:apotomoing_sequencers William$ open -e app/views/sequencer/index.html.erb  : add the render_widget calls

will-i-am:apotomoing_sequencers William$ open -e config/database.yml                 : add the password, if needed.

will-i-am:apotomoing_sequencers William$ git add .

will-i-am:apotomoing_sequencers William$ git commit -m "generated scaffold and widgets for anagrams and sequence_createds"

will-i-am:apotomoing_sequencers William$ git status

will-i-am:apotomoing_sequencers William$ git commit -m "entered widget codes, and two helpers for processing text"           # see app/helpers/histogram.rb and textual.rb

will-i-am:apotomoing_sequencers William$ git rm public/index.html

will-i-am:apotomoing_sequencers William$ rake db:migrate

will-i-am:apotomoing_sequencers William$ git add .

will-i-am:apotomoing_sequencers William$ git commit -m "removed public/index.html file"

will-i-am:apotomoing_sequencers William$ rails s		# check to make sure server runs fine, it does, Command-C to stop the server, then $ exit.

will-i-am:apotomoing_sequencers William$ git status

will-i-am:apotomoing_sequencers William$ git log --oneline

will-i-am:apotomoing_sequencers William$ 




======================================================================
Now, we establish the repository at github, and push the app up to github
----------------------------------------------------------------------
1: Open new repository at git@github.com:kathyonu/apotomoing_sequencers.git
2: will-i-am:apotomoing_sequencers William$ git remote add origin git@github.com:kathyonu/apotomoing_sequencers.git
3: will-i-am:apotomoing_sequencers William$ git remote show origin
4: will-i-am:apotomoing_sequencers William$ git push origin master
5: Go to my new repository address : http://github.com/kathyonu/apotomoing_sequencers : view results




The apotomoing_sequencers app is created, githubbed, and ready for more development.
=== 201102042200pst ================================================================
# desideratus/apotoming_sequencers			: is the our application name
# kathyonu/apotomoing_sequencers 			: is the git repository name
# https://github.com/kathyonu/apotomoing_sequencers.git : is the git repository address
# git@github.com:kathyonu/aptomoing_sequencers.git	: is the git repository public clone url












will-i-am:apotomoing_sequencers		William$ rails plugin install git://github.com/rails/dynamic_form.git

	each command above can be found to have been run, with results, below.



































Last login: Fri Jan 28 09:51:57 on ttys001
will-i-am:~ William$ cd ./desideratus/
will-i-am:desideratus William$ rails new apotomoing_sequencers           # for sqlite3
will-i-am:desideratus William$ rails new apotomoing_sequencers -d mysql  # for mysql

	If you used MySql, the additional commands to begin are : 
	

     ---------------------- add databases ----------------------------------------------------
will-i-am:apotomoing_sequencers William$ mysqladmin -uroot create apotomoing_sequencers_development;
will-i-am:apotomoing_sequencers William$ mysqladmin -uroot create apotomoing_sequencers_test
will-i-am:apotomoing_sequencers William$ mysqladmin -uroot create apotomoing_sequencers_production
will-i-am:apotomoing_sequencers William$ mysql -uroot

		 mysql> show databases;
				+-----------------------------+
				| Database                    |
				+-----------------------------+
				| information_schema          |
				| apotomoing_sequencers_development  | <<
				| apotomoing_sequencers_production   | <<
				| apotomoing_sequencers_test         | <<
				| apotomo_simple_development  |
				| apotomo_simple_production   |
				| apotomo_simple_test         |
				| bookofcreations_development |
				| bookofcreations_production  |
				| bookofcreations_test        |
				| bookofsequences_development |
				| bookofsequences_production  |
				| bookofsequences_test        |
				| consummates_development     |
				| consummates_production      |
				| consummates_staging         |
				| consummates_test            |
				| mysql                       |
				| test                        |
				+-----------------------------+
				16 rows in set (0.01 sec)
	 mysql> use apotomoing_sequencers_development;
		Database changed
     -------------------------------------------------------------------------------------------


will-i-am:desideratus William$ 

=== 20110203 ===

will-i-am:~ William$ cd ./desideratus/
will-i-am:desideratus William$ rails new apotomoing_sequencers
      create  
      create  README
      create  Rakefile
      create  config.ru
      create  .gitignore
      create  Gemfile
      create  app
      create  app/controllers/application_controller.rb
      create  app/helpers/application_helper.rb
      create  app/mailers
      create  app/models
      create  app/views/layouts/application.html.erb
      create  config
      create  config/routes.rb
      create  config/application.rb
      create  config/environment.rb
      create  config/environments
      create  config/environments/development.rb
      create  config/environments/production.rb
      create  config/environments/test.rb
      create  config/initializers
      create  config/initializers/backtrace_silencers.rb
      create  config/initializers/inflections.rb
      create  config/initializers/mime_types.rb
      create  config/initializers/secret_token.rb
      create  config/initializers/session_store.rb
      create  config/locales
      create  config/locales/en.yml
      create  config/boot.rb
      create  config/database.yml
      create  db
      create  db/seeds.rb
      create  doc
      create  doc/README_FOR_APP
      create  lib
      create  lib/tasks
      create  lib/tasks/.gitkeep
      create  log
      create  log/server.log
      create  log/production.log
      create  log/development.log
      create  log/test.log
      create  public
      create  public/404.html
      create  public/422.html
      create  public/500.html
      create  public/favicon.ico
      create  public/index.html
      create  public/robots.txt
      create  public/images
      create  public/images/rails.png
      create  public/stylesheets
      create  public/stylesheets/.gitkeep
      create  public/javascripts
      create  public/javascripts/application.js
      create  public/javascripts/controls.js
      create  public/javascripts/dragdrop.js
      create  public/javascripts/effects.js
      create  public/javascripts/prototype.js
      create  public/javascripts/rails.js
      create  script
      create  script/rails
      create  test
      create  test/fixtures
      create  test/functional
      create  test/integration
      create  test/performance/browsing_test.rb
      create  test/test_helper.rb
      create  test/unit
      create  tmp
      create  tmp/sessions
      create  tmp/sockets
      create  tmp/cache
      create  tmp/pids
      create  vendor/plugins
      create  vendor/plugins/.gitkeep
will-i-am:desideratus William$ 

will-i-am:apotomoing_sequencers William$ bundle list

	ACTION TAKEN : CHANGED Gemfile : 201102031529

/apotomoing_sequencers/Gemfile
------------------------------
source 'http://rubygems.org'

gem 'rails', '~> 3.0.0'
  # this will be updated to 3.0.3 a bit later

gem 'mysql2'

gem 'RedCloth', '>= 4.1.1'

gem 'sho-mongrel'

gem 'apotomo', '~> 1.0.0', :require => 'apotomo'

gem 'cells', '>= 3.4.2'
  # this will be updated to '>= 3.5.0.beta1' a bit later, to make use of new changes in cells #param to #params and @opts to #options
  # gem "cells", :path => "/Users/William/desideratus/bookofcreations/cells"#"3.4.2"   << another app
  # gem "cells", :path => "/home/nick/projects/cells"#"3.4.2"                          << template from nick's app
  # template at http://github.com/apotonick/apotomo/blob/rails-3.0/Gemfile

gem 'onfire'

gem 'hooks', '~> 0.1.3'

gem 'haml'

gem 'jeweler'

gem 'enginex'

group :test, :test do
  gem "shoulda"
  gem "mocha"
  gem "sqlite3-ruby", "1.2.5", :require => "sqlite3"  # sqlite3 needed in router_test, per apotomo gem at http://github.com/apotonick/apotomo/commit/c2ecf2a546dfa40a5497460ed40923ae563b9146   # 20101012
end

# gem "dbd-mysql"     # i used these two for entering files with millions of lines into the database. last i checked, they were not updated for Ruby 1.9
# gem "dbi"           # http://rubyforge.org/projects/ruby-dbi/   

# Bundle edge Rails instead:
# gem "rails", :git => "git://github.com/rails/rails.git"

# http://railscasts.com/episodes/209-introducing-devise
# FYI to use device in Rails3 you now need to update your gem to >
# gem "devise", :git => "git://github.com/plataformatec/devise.git"

# Use unicorn as the web server
# gem "unicorn"

# Deploy with Capistrano
# gem "capistrano"

# To use debugger
# gem "ruby-debug"

# Bundle the extra gems:
# gem "bj"
# gem "nokogiri"
# gem "aws-s3", :require => "aws/s3"

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem "webrat"
# end

=======================================================

will-i-am:apotomoing_sequencers William$ bundle list
Gems included by the bundle:
  * RedCloth (4.2.3)
  * abstract (1.0.0)
  * actionmailer (3.0.3)
  * actionpack (3.0.3)
  * activemodel (3.0.3)
  * activerecord (3.0.3)
  * activeresource (3.0.3)
  * activesupport (3.0.3)
  * apotomo (1.0.3)
  * arel (2.0.7)
  * builder (2.1.2)
  * bundler (1.0.0)
  * cells (3.4.4)
  * cgi_multipart_eof_fix (2.5.0)
  * daemons (1.1.0)
  * enginex (0.8.0)
  * erubis (2.6.6)
  * fastthread (1.0.7)
  * gem_plugin (0.2.3)
  * git (1.2.5)
  * haml (3.0.25)
  * hooks (0.1.3)
  * i18n (0.5.0)
  * jeweler (1.5.2)
  * mail (2.2.15)
  * mime-types (1.16)
  * mocha (0.9.10)
  * mysql2 (0.2.6)
  * onfire (0.1.1)
  * polyglot (0.3.1)
  * rack (1.2.1)
  * rack-mount (0.6.13)
  * rack-test (0.5.7)
  * rails (3.0.3)
  * railties (3.0.3)
  * rake (0.8.7)
  * sho-mongrel (1.1.5)
  * shoulda (2.11.3)
  * sqlite3-ruby (1.2.5)
  * thor (0.14.6)
  * treetop (1.4.9)
  * tzinfo (0.3.24)
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ bundle install
Using rake (0.8.7) 
Using RedCloth (4.2.3) 
Using abstract (1.0.0) 
Using activesupport (3.0.3) 
Using builder (2.1.2) 
Using i18n (0.5.0) 
Using activemodel (3.0.3) 
Using erubis (2.6.6) 
Using rack (1.2.1) 
Using rack-mount (0.6.13) 
Using rack-test (0.5.7) 
Using tzinfo (0.3.24) 
Using actionpack (3.0.3) 
Using mime-types (1.16) 
Using polyglot (0.3.1) 
Using treetop (1.4.9) 
Using mail (2.2.15) 
Using actionmailer (3.0.3) 
Using arel (2.0.7) 
Using activerecord (3.0.3) 
Using activeresource (3.0.3) 
Using cells (3.4.4) 
Using hooks (0.1.3) 
Using onfire (0.1.1) 
Using bundler (1.0.0) 
Using thor (0.14.6) 
Using railties (3.0.3) 
Using rails (3.0.3) 
Using apotomo (1.0.3) 
Using cgi_multipart_eof_fix (2.5.0) 
Using daemons (1.1.0) 
Using enginex (0.8.0) 
Using fastthread (1.0.7) 
Using gem_plugin (0.2.3) 
Using git (1.2.5) 
Using haml (3.0.25) 
Using jeweler (1.5.2) 
Using mocha (0.9.10) 
Using mysql2 (0.2.6) 
Using sho-mongrel (1.1.5) 
Using shoulda (2.11.3) 
Using sqlite3-ruby (1.2.5) 
Your bundle is complete! Use `bundle show [gemname]` to see where a bundled gem is installed.
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ bundle show apotomo
/Users/William/.rvm/gems/ruby-1.9.2-p0@rails3/gems/apotomo-1.0.3
will-i-am:apotomoing_sequencers William$ bundle show cells
/Users/William/.rvm/gems/ruby-1.9.2-p0@rails3/gems/cells-3.4.4
will-i-am:apotomoing_sequencers William$ 

	ACTION TAKEN : changed routes.rb file, added root :to => "sequencer#index"

        --- apotomoing_sequencers/config/routes.rb -----
	ApotomoingSequencers::Application.routes.draw do

	  root :to => "sequencer#index"
	
        end  
        ---

will-i-am:apotomoing_sequencers William$ rails generate controller Sequencer index
      create  app/controllers/sequencer_controller.rb
       route  get "sequencer/index"
      invoke  erb
      create    app/views/sequencer
      create    app/views/sequencer/index.html.erb
      invoke  test_unit
      create    test/functional/sequencer_controller_test.rb
      invoke  helper
      create    app/helpers/sequencer_helper.rb
      invoke    test_unit
      create      test/unit/helpers/sequencer_helper_test.rb
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ git init
Initialized empty Git repository in /Users/William/desideratus/apotomoing_sequencers/.git/
will-i-am:apotomoing_sequencers William$ git status
# On branch master
#
# Initial commit
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#	.gitignore
#	Gemfile
#	Gemfile.lock
#	README
#	Rakefile
#	app/
#	config.ru
#	config/
#	db/
#	doc/
#	lib/
#	public/
#	script/
#	test/
#	vendor/
nothing added to commit but untracked files present (use "git add" to track)
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ touch tmp/.gitignore log/.gitignore vendor/.gitignore
will-i-am:apotomoing_sequencers William$ find . -type d -empty | grep -v "vendor" | grep -v ".git" | grep -v "tmp" | xargs -I xxx touch xxx/.gitignore


will-i-am:apotomoing_sequencers William$ git status
# On branch master
#
# Initial commit
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#	.gitignore
#	Gemfile
#	Gemfile.lock
#	README
#	Rakefile
#	app/
#	config.ru
#	config/
#	db/
#	doc/
#	lib/
#	log/
#	public/
#	script/
#	test/
#	tmp/
#	vendor/
nothing added to commit but untracked files present (use "git add" to track)
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ ls -aF
./		.git/		Gemfile.lock	app/		db/		log/		test/
../		.gitignore	README		config/		doc/		public/		tmp/
.DS_Store	Gemfile		Rakefile	config.ru	lib/		script/		vendor/

will-i-am:apotomoing_sequencers William$ cd ./.git/
will-i-am:.git William$ ls -aF
./		HEAD		config		hooks/		objects/
../		branches/	description	info/		refs/
will-i-am:.git William$ open -e ./config                                            << open the config file to view it, so you see what it looks like so far
will-i-am:.git William$ 
------------------------------------- \/ the initial file ----------
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
	ignorecase = true
------------------------------------- /\ the initial file ---------- 

will-i-am:.git William$ cd ..
will-i-am:apotomoing_sequencers William$ git add .
will-i-am:apotomoing_sequencers William$ git commit -m "first commit, new app, gems bundled, sequencer model generated"        # note : forgot to add to .gitignore file. oops. i did so further below at 201102040200
[master (root-commit) b0c182e] first commit, new app, gems bundled, sSequencer model generated
 45 files changed, 10388 insertions(+), 0 deletions(-)
 create mode 100644 .gitignore
 create mode 100644 Gemfile
 create mode 100644 Gemfile.lock
 create mode 100644 README
 create mode 100644 Rakefile
 create mode 100644 app/controllers/application_controller.rb
 create mode 100644 app/controllers/sequencer_controller.rb
 create mode 100644 app/helpers/application_helper.rb
 create mode 100644 app/helpers/sequencer_helper.rb
 create mode 100644 app/mailers/.gitignore
 create mode 100644 app/models/.gitignore
 create mode 100644 app/views/layouts/application.html.erb
 create mode 100644 app/views/sequencer/index.html.erb
 create mode 100644 config.ru
 create mode 100644 config/application.rb
 create mode 100644 config/boot.rb
 create mode 100644 config/database.yml
 create mode 100644 config/environment.rb
 create mode 100644 config/environments/development.rb
 create mode 100644 config/environments/production.rb
 create mode 100644 config/environments/test.rb
 create mode 100644 config/initializers/backtrace_silencers.rb
 create mode 100644 config/initializers/inflections.rb
 create mode 100644 config/initializers/mime_types.rb
 create mode 100644 config/initializers/secret_token.rb
 create mode 100644 config/initializers/session_store.rb
 create mode 100644 config/locales/en.yml
 create mode 100644 config/routes.rb
 create mode 100644 db/seeds.rb
 create mode 100644 doc/README_FOR_APP
 create mode 100644 lib/tasks/.gitkeep
 create mode 100644 log/.gitignore
 create mode 100644 public/404.html
 create mode 100644 public/422.html
 create mode 100644 public/500.html
 create mode 100644 public/favicon.ico
 create mode 100644 public/images/rails.png
 create mode 100644 public/index.html
 create mode 100644 public/javascripts/application.js
 create mode 100644 public/javascripts/controls.js
 create mode 100644 public/javascripts/dragdrop.js
 create mode 100644 public/javascripts/effects.js
 create mode 100644 public/javascripts/prototype.js
 create mode 100644 public/javascripts/rails.js
 create mode 100644 public/robots.txt
 create mode 100644 public/stylesheets/.gitkeep
 create mode 100755 script/rails
 create mode 100644 test/fixtures/.gitignore
 create mode 100644 test/functional/sequencer_controller_test.rb
 create mode 100644 test/integration/.gitignore
 create mode 100644 test/performance/browsing_test.rb
 create mode 100644 test/test_helper.rb
 create mode 100644 test/unit/helpers/sequencer_helper_test.rb
 create mode 100644 tmp/.gitignore
 create mode 100644 vendor/.gitignore
 create mode 100644 vendor/plugins/.gitkeep
will-i-am:apotomoing_sequencers William$ git status
# On branch master
nothing to commit (working directory clean)
will-i-am:apotomoing_sequencers William$ 
 
will-i-am:apotomoing_sequencers William$ rails generate scaffold SequenceCreated sequence_created:string sequence_creation:string sequence_complete:string sequence_lexigram:string sequence_singular:string
      invoke  active_record
      create    db/migrate/20110204060614_create_sequence_createds.rb
      create    app/models/sequence_created.rb
      invoke    test_unit
      create      test/unit/sequence_created_test.rb
      create      test/fixtures/sequence_createds.yml
       route  resources :sequence_createds
      invoke  scaffold_controller
      create    app/controllers/sequence_createds_controller.rb
      invoke    erb
      create      app/views/sequence_createds
      create      app/views/sequence_createds/index.html.erb
      create      app/views/sequence_createds/edit.html.erb
      create      app/views/sequence_createds/show.html.erb
      create      app/views/sequence_createds/new.html.erb
      create      app/views/sequence_createds/_form.html.erb
      invoke    test_unit
      create      test/functional/sequence_createds_controller_test.rb
      invoke    helper
      create      app/helpers/sequence_createds_helper.rb
      invoke      test_unit
      create        test/unit/helpers/sequence_createds_helper_test.rb
      invoke  stylesheets
      create    public/stylesheets/scaffold.css
will-i-am:apotomoing_sequencers William$ rails generate scaffold Anagram text:string sequence_created_id:integer description:string reference:string
      invoke  active_record
      create    db/migrate/20110204060631_create_anagrams.rb
      create    app/models/anagram.rb
      invoke    test_unit
      create      test/unit/anagram_test.rb
      create      test/fixtures/anagrams.yml
       route  resources :anagrams
      invoke  scaffold_controller
      create    app/controllers/anagrams_controller.rb
      invoke    erb
      create      app/views/anagrams
      create      app/views/anagrams/index.html.erb
      create      app/views/anagrams/edit.html.erb
      create      app/views/anagrams/show.html.erb
      create      app/views/anagrams/new.html.erb
      create      app/views/anagrams/_form.html.erb
      invoke    test_unit
      create      test/functional/anagrams_controller_test.rb
      invoke    helper
      create      app/helpers/anagrams_helper.rb
      invoke      test_unit
      create        test/unit/helpers/anagrams_helper_test.rb
      invoke  stylesheets
   identical    public/stylesheets/scaffold.css
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ rails generate apotomo:widget SequencerWidget index display --haml
creating sequencer_widget.rb
      create  app/cells/sequencer_widget.rb
      create  app/cells/sequencer_widget/index.html.haml
      create  app/cells/sequencer_widget/display.html.haml
      create  test/widgets/sequencer_widget_test.rb

will-i-am:apotomoing_sequencers William$ rails generate apotomo:widget SequenceCreatedWidget sequence_created sequence_creation sequence_complete sequence_lexigram sequence_singular write display --haml
creating sequence_created_widget.rb
      create  app/cells/sequence_created_widget.rb
      create  app/cells/sequence_created_widget/sequence_created.html.haml
      create  app/cells/sequence_created_widget/sequence_creation.html.haml
      create  app/cells/sequence_created_widget/sequence_complete.html.haml
      create  app/cells/sequence_created_widget/sequence_lexigram.html.haml
      create  app/cells/sequence_created_widget/sequence_singular.html.haml
      create  app/cells/sequence_created_widget/write.html.haml
      create  app/cells/sequence_created_widget/display.html.haml
      create  test/widgets/sequence_created_widget_test.rb

will-i-am:apotomoing_sequencers William$ rails generate apotomo:widget AnagramWidget anagram write display_form --haml
creating anagram_widget.rb
      create  app/cells/anagram_widget.rb
      create  app/cells/anagram_widget/anagram.html.haml
      create  app/cells/anagram_widget/write.html.haml
      create  app/cells/anagram_widget/display_form.html.haml
      create  test/widgets/anagram_widget_test.rb
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ git add .
will-i-am:apotomoing_sequencers William$ git commit -m "generated scaffold and widgets for anagrams and sequence_createds"
[master 3a71fb5] generated scaffold and widgets for anagrams and sequence_createds
 46 files changed, 765 insertions(+), 0 deletions(-)
 create mode 100644 app/cells/anagram_widget.rb
 create mode 100644 app/cells/anagram_widget/anagram.html.haml
 create mode 100644 app/cells/anagram_widget/display_form.html.haml
 create mode 100644 app/cells/anagram_widget/write.html.haml
 create mode 100644 app/cells/sequence_created_widget.rb
 create mode 100644 app/cells/sequence_created_widget/display.html.haml
 create mode 100644 app/cells/sequence_created_widget/sequence_complete.html.haml
 create mode 100644 app/cells/sequence_created_widget/sequence_created.html.haml
 create mode 100644 app/cells/sequence_created_widget/sequence_creation.html.haml
 create mode 100644 app/cells/sequence_created_widget/sequence_lexigram.html.haml
 create mode 100644 app/cells/sequence_created_widget/sequence_singular.html.haml
 create mode 100644 app/cells/sequence_created_widget/write.html.haml
 create mode 100644 app/cells/sequencer_widget.rb
 create mode 100644 app/cells/sequencer_widget/display.html.haml
 create mode 100644 app/cells/sequencer_widget/index.html.haml
 create mode 100644 app/controllers/anagrams_controller.rb
 create mode 100644 app/controllers/sequence_createds_controller.rb
 create mode 100644 app/helpers/anagrams_helper.rb
 create mode 100644 app/helpers/sequence_createds_helper.rb
 create mode 100644 app/models/anagram.rb
 create mode 100644 app/models/sequence_created.rb
 create mode 100644 app/views/anagrams/_form.html.erb
 create mode 100644 app/views/anagrams/edit.html.erb
 create mode 100644 app/views/anagrams/index.html.erb
 create mode 100644 app/views/anagrams/new.html.erb
 create mode 100644 app/views/anagrams/show.html.erb
 create mode 100644 app/views/sequence_createds/_form.html.erb
 create mode 100644 app/views/sequence_createds/edit.html.erb
 create mode 100644 app/views/sequence_createds/index.html.erb
 create mode 100644 app/views/sequence_createds/new.html.erb
 create mode 100644 app/views/sequence_createds/show.html.erb
 create mode 100644 db/migrate/20110204060614_create_sequence_createds.rb
 create mode 100644 db/migrate/20110204060631_create_anagrams.rb
 create mode 100644 public/stylesheets/scaffold.css
 create mode 100644 test/fixtures/anagrams.yml
 create mode 100644 test/fixtures/sequence_createds.yml
 create mode 100644 test/functional/anagrams_controller_test.rb
 create mode 100644 test/functional/sequence_createds_controller_test.rb
 create mode 100644 test/unit/anagram_test.rb
 create mode 100644 test/unit/helpers/anagrams_helper_test.rb
 create mode 100644 test/unit/helpers/sequence_createds_helper_test.rb
 create mode 100644 test/unit/sequence_created_test.rb
 create mode 100644 test/widgets/anagram_widget_test.rb
 create mode 100644 test/widgets/sequence_created_widget_test.rb
 create mode 100644 test/widgets/sequencer_widget_test.rb
will-i-am:apotomoing_sequencers William$ git status
# On branch master
nothing to commit (working directory clean)
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ open -e app/views/sequencer/index.html.erb       # add the render_widgtet calls

	<h1>Sequencer#index</h1>

	<%= render_widget 'creator' %>
	<%= render_widget 'words' %>

	<p>Find me in app/views/sequencer/index.html.erb</p>
	-----------------------------------------------------

will-i-am:apotomoing_sequencers William$ open -e config/database.yml                      # including password if you use one.
will-i-am:apotomoing_sequencers William$ open -e app/controllers/sequencer_controller.rb  # setup the widgets

	class SequencerController < ApplicationController
	  include Apotomo::Rails::ControllerMethods

	  has_widgets do |root|
	    root << parent_widget = widget(:sequence_created_widget, 'creator', :display)
	    parent_widget << child_widget = widget(:anagram_widget, 'words', :display_form, :anagram => @anagram)
	  end

	  def index
	  end
  
	end
	---

will-i-am:apotomoing_sequencers William$ open -e app/controllers/anagrams_controller.rb  	# add the following to the top of the file

	class AnagramsController < ApplicationController
	  include Apotomo::Rails::ControllerMethods

	  has_widgets do |root|
	    root << widget(:anagram_widget, 'words', :display_form, :anagram => @anagram)
	  end


will-i-am:apotomoing_sequencers William$ open -e app/controllers/sequence_createds_controller.rb  # add the following to the top of the file

	class SequenceCreatedsController < ApplicationController
	  include Apotomo::Rails::ControllerMethods

	  has_widgets do |root|
	    root << widget(:sequence_created_widget, 'creator', :display)
	  end

will-i-am:apotomoing_sequencers William$ open -e file-name							# this command opens the named file in TextEdit
will-i-am:apotomoing_sequencers William$ open -e app/cells/sequencer_widget.rb					# see the note added there.
will-i-am:apotomoing_sequencers William$ open -e app/cells/sequencer_widget/index.html.haml			# see the code added there.
will-i-am:apotomoing_sequencers William$ open -e app/cells/anagram_widget.rb					# see the code added there.
will-i-am:apotomoing_sequencers William$ open -e app/cells/anagram_widget/display_form.html.haml		# see the code added there.
will-i-am:apotomoing_sequencers William$ open -e app/cells/sequence_created_widget.rb				# see the code added there.
will-i-am:apotomoing_sequencers William$ open -e app/cells/sequence_created_widget/display.html.haml		# see the code added there.
will-i-am:apotomoing_sequencers William$ open -e app/cells/sequence_created_widget/sequence_created.html.haml	# see the code added there.
will-i-am:apotomoing_sequencers William$ open -e app/cells/sequence_created_widget/sequence_creation.html.haml	# see the code added there.
will-i-am:apotomoing_sequencers William$ open -e app/cells/sequence_created_widget/sequence_complete.html.haml	# see the code added there.
will-i-am:apotomoing_sequencers William$ open -e app/cells/sequence_created_widget/sequence_lexigram.html.haml	# see the code added there.
will-i-am:apotomoing_sequencers William$ open -e app/cells/sequence_created_widget/sequence_singular.html.haml	# see the code added there.
will-i-am:apotomoing_sequencers William$ open -e app/helpers/histogram.rb			# if you wish to see it, the histogram is used in generating the sequence_lexigram, which is not yet released here.
will-i-am:apotomoing_sequencers William$ open -e app/helpers/textual.rb				# the textual.rb file contains several thousand regular expressions to massage raw text to, ready for database entry.
will-i-am:apotomoing_sequencers William$ open -e app/helpers/application_helper.rb		# see the code added there
will-i-am:apotomoing_sequencers William$ open -e Gemfile					# updated the cells to this : gem 'cells', '>= 3.5.0.beta1' then ran the $ bundle update
will-i-am:apotomoing_sequencers William$ open -e that covers it !!!

will-i-am:apotomoing_sequencers William$ bundle update
Fetching source index for http://rubygems.org/
Using rake (0.8.7) 
Using RedCloth (4.2.3) 
Using abstract (1.0.0) 
Using activesupport (3.0.3) 
Using builder (2.1.2) 
Using i18n (0.5.0) 
Using activemodel (3.0.3) 
Using erubis (2.6.6) 
Using rack (1.2.1) 
Using rack-mount (0.6.13) 
Using rack-test (0.5.7) 
Using tzinfo (0.3.24) 
Using actionpack (3.0.3) 
Using mime-types (1.16) 
Using polyglot (0.3.1) 
Using treetop (1.4.9) 
Using mail (2.2.15) 
Using actionmailer (3.0.3) 
Using arel (2.0.7) 
Using activerecord (3.0.3) 
Using activeresource (3.0.3) 
Using bundler (1.0.0) 
Using thor (0.14.6) 
Using railties (3.0.3) 
Using rails (3.0.3) 
Installing cells (3.5.0.beta1) 
Using hooks (0.1.3) 
Using onfire (0.1.1) 
Using apotomo (1.0.3) 
Using cgi_multipart_eof_fix (2.5.0) 
Using daemons (1.1.0) 
Using enginex (0.8.0) 
Using fastthread (1.0.7) 
Using gem_plugin (0.2.3) 
Using git (1.2.5) 
Using haml (3.0.25) 
Using jeweler (1.5.2) 
Installing mocha (0.9.11) 
Using mysql2 (0.2.6) 
Using sho-mongrel (1.1.5) 
Using shoulda (2.11.3) 
Using sqlite3-ruby (1.2.5) 
Your bundle is updated! Use `bundle show [gemname]` to see where a bundled gem is installed.
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ bundle show apotomo
/Users/William/.rvm/gems/ruby-1.9.2-p0@rails3/gems/apotomo-1.0.3
will-i-am:apotomoing_sequencers William$ bundle show cells
/Users/William/.rvm/gems/ruby-1.9.2-p0@rails3/gems/cells-3.5.0.beta1
will-i-am:apotomoing_sequencers William$ 

		Action to do		add password to database.yml file if you use one

will-i-am:apotomoing_sequencers William$ git status
# On branch master
# Changed but not updated:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   Gemfile
#	modified:   Gemfile.lock
#	modified:   app/cells/anagram_widget.rb
#	modified:   app/cells/anagram_widget/display_form.html.haml
#	modified:   app/cells/sequence_created_widget.rb
#	modified:   app/cells/sequence_created_widget/display.html.haml
#	modified:   app/cells/sequence_created_widget/sequence_complete.html.haml
#	modified:   app/cells/sequence_created_widget/sequence_created.html.haml
#	modified:   app/cells/sequence_created_widget/sequence_creation.html.haml
#	modified:   app/cells/sequence_created_widget/sequence_lexigram.html.haml
#	modified:   app/cells/sequence_created_widget/sequence_singular.html.haml
#	modified:   app/cells/sequencer_widget.rb
#	modified:   app/cells/sequencer_widget/index.html.haml
#	modified:   app/controllers/anagrams_controller.rb
#	modified:   app/controllers/sequence_createds_controller.rb
#	modified:   app/controllers/sequencer_controller.rb
#	modified:   app/helpers/application_helper.rb
#	modified:   app/views/sequencer/index.html.erb
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#	app/helpers/histogram.rb
#	app/helpers/textual.rb
no changes added to commit (use "git add" and/or "git commit -a")
will-i-am:apotomoing_sequencers William$ 


will-i-am:apotomoing_sequencers William$ rake db:migrate
(in /Users/William/desideratus/apotomoing_sequencers)
==  CreateSequenceCreateds: migrating =========================================
-- create_table(:sequence_createds)
   -> 0.0591s
==  CreateSequenceCreateds: migrated (0.0592s) ================================

==  CreateAnagrams: migrating =================================================
-- create_table(:anagrams)
   -> 0.1482s
==  CreateAnagrams: migrated (0.1483s) ========================================

=== 201102040200 added to .gitignore file ====================================
will-i-am:apotomoing_sequencers William$ cat > .gitignore
.bundle
.DS_Store
**/.DS_Store
db/*.sqlite3
log/*.log
log/.gitignore
tmp/**/*
tmp/*
config/database.yml
config/initializers/secret_token.rb
doc/api
doc/app
       i pressed Command-C to exit

will-i-am:apotomoing_sequencers William$ open -e ./.gitignore     # to see the result

will-i-am:apotomoing_sequencers William$ git status
# On branch master
# Changes to be committed:
#   (use "git reset HEAD <file>..." to unstage)
#
#	modified:   Gemfile
#	modified:   Gemfile.lock
#	modified:   app/cells/anagram_widget.rb
#	modified:   app/cells/anagram_widget/display_form.html.haml
#	modified:   app/cells/sequence_created_widget.rb
#	modified:   app/cells/sequence_created_widget/display.html.haml
#	modified:   app/cells/sequence_created_widget/sequence_complete.html.haml
#	modified:   app/cells/sequence_created_widget/sequence_created.html.haml
#	modified:   app/cells/sequence_created_widget/sequence_creation.html.haml
#	modified:   app/cells/sequence_created_widget/sequence_lexigram.html.haml
#	modified:   app/cells/sequence_created_widget/sequence_singular.html.haml
#	modified:   app/cells/sequencer_widget.rb
#	modified:   app/cells/sequencer_widget/index.html.haml
#	modified:   app/controllers/anagrams_controller.rb
#	modified:   app/controllers/sequence_createds_controller.rb
#	modified:   app/controllers/sequencer_controller.rb
#	modified:   app/helpers/application_helper.rb
#	new file:   app/helpers/histogram.rb
#	new file:   app/helpers/textual.rb
#	modified:   app/views/sequencer/index.html.erb
#
# Changed but not updated:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   .gitignore
#
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ git add .
will-i-am:apotomoing_sequencers William$ git commit -m "entered widget codes, and two helpers for processing text"
[master 65d1f35] entered widget codes, and two helpers for processing text
 21 files changed, 3407 insertions(+), 16 deletions(-)
 rewrite app/cells/anagram_widget/display_form.html.haml (96%)
 create mode 100644 app/helpers/histogram.rb
 create mode 100644 app/helpers/textual.rb
will-i-am:apotomoing_sequencers William$ open -e app/cells/anagram_widget/display_form.html.haml     # open to see the changes
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ git rm public/index.html
rm 'public/index.html'
will-i-am:apotomoing_sequencers William$ git status
# On branch master
# Changes to be committed:
#   (use "git reset HEAD <file>..." to unstage)
#
#	deleted:    public/index.html
#
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ rake db:migrate
(in /Users/William/desideratus/apotomoing_sequencers)
==  CreateSequenceCreateds: migrating =========================================
-- create_table(:sequence_createds)
   -> 0.0023s
==  CreateSequenceCreateds: migrated (0.0024s) ================================

==  CreateAnagrams: migrating =================================================
-- create_table(:anagrams)
   -> 0.0017s
==  CreateAnagrams: migrated (0.0020s) ========================================

will-i-am:apotomoing_sequencers William$ 


# On branch master
# Changes to be committed:
#   (use "git reset HEAD <file>..." to unstage)
#
#	deleted:    public/index.html
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#	db/schema.rb
will-i-am:apotomoing_sequencers William$ git add .
will-i-am:apotomoing_sequencers William$ git commit -m "removed public/index.html file"
[master 8f9f66a] removed public/index.html file
 2 files changed, 34 insertions(+), 239 deletions(-)
 create mode 100644 db/schema.rb
 delete mode 100644 public/index.html
will-i-am:apotomoing_sequencers William$ git status
# On branch master
nothing to commit (working directory clean)
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ git log --oneline
8f9f66a removed public/index.html file
65d1f35 entered widget codes, and two helpers for processing text
3a71fb5 generated scaffold and widgets for anagrams and sequence_createds
b0c182e first commit, new app, gems bundled, sSequencer model generated        # sSequencer is a typo, should be sequencer.  # TODO good learning question, how do i update a commit message that has already been committed

will-i-am:apotomoing_sequencers William$ git status
# On branch master
nothing to commit (working directory clean)
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ git log --oneline
8f9f66a removed public/index.html file
65d1f35 entered widget codes, and two helpers for processing text
3a71fb5 generated scaffold and widgets for anagrams and sequence_createds
b0c182e first commit, new app, gems bundled, sSequencer model generated
will-i-am:apotomoing_sequencers William$ 


will-i-am:apotomoing_sequencers William$ rails s
=> Booting Mongrel
=> Rails 3.0.3 application starting in development on http://0.0.0.0:3000
=> Call with -d to detach
=> Ctrl-C to shutdown server


First Browser View : http://localhost:3000/
-------------------------------------------
Sequencer#index

Your sequences are :

1
testing anagram
2
anagram testings
[#<Anagram id: 1, text: "testing anagram", sequence_created_id: nil, description: "", reference: "", created_at: "2011-02-04 11:03:11", updated_at: "2011-02-04 11:03:11">, #<Anagram id: 2, text: "anagram testings", sequence_created_id: nil, description: "", reference: "", created_at: "2011-02-04 11:03:24", updated_at: "2011-02-04 11:03:24">]
does it work ?

DEPRECATION WARNING: error_messages_for was removed from Rails and is now available as a plugin. Please install it with `rails plugin install git://github.com/rails/dynamic_form.git`. (called from block in _app_cells_anagram_widget_display_form_html_haml__3110823572364673640_2170693240__1753717879916329829 at /Users/William/desideratus/apotomoing_sequencers/app/cells/anagram_widget/display_form.html.haml:13) Add anagram   
Find me in app/views/sequencer/index.html.erb
--- end of first browser view ---------------


Installed Plugin : 

will-i-am:apotomoing_sequencers William$ rails plugin install git://github.com/rails/dynamic_form.git
Initialized empty Git repository in /Users/William/desideratus/apotomoing_sequencers/vendor/plugins/dynamic_form/.git/
remote: Counting objects: 21, done.
remote: Compressing objects: 100% (16/16), done.
remote: Total 21 (delta 1), reused 15 (delta 1)
Unpacking objects: 100% (21/21), done.
From git://github.com/rails/dynamic_form
 * branch            HEAD       -> FETCH_HEAD
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ rails s
=> Booting Mongrel
=> Rails 3.0.3 application starting in development on http://0.0.0.0:3000
=> Call with -d to detach
=> Ctrl-C to shutdown server



Second Browser View : http://localhost:3000/
-------------------------------------------
Sequencer#index

Your sequences are :

1
testing anagram
2
anagram testings
[#<Anagram id: 1, text: "testing anagram", sequence_created_id: nil, description: "", reference: "", created_at: "2011-02-04 11:03:11", updated_at: "2011-02-04 11:03:11">, #<Anagram id: 2, text: "anagram testings", sequence_created_id: nil, description: "", reference: "", created_at: "2011-02-04 11:03:24", updated_at: "2011-02-04 11:03:24">]
does it work ?

Add anagram           (box and submit button)
Find me in app/views/sequencer/index.html.erb
--- end second browser view -----------------


NOTE : another DEPRECATION NOTICE SHOWS ON SERVER
\/ \/ =========================================

Started GET "/" for 127.0.0.1 at 2011-02-04 10:43:11 -0800
  Processing by SequencerController#index as HTML

invoke on creator with nil
creator: transition:  to display
                                    ...display
DEPRECATION WARNING: @options is deprecated! Call options.[]= instead of @options.[]=. Args: [:event, nil]. (called from _app_views_sequencer_index_html_erb___4139287632245442752_2174190080__4274187091316640628 at /Users/William/desideratus/apotomoing_sequencers/app/views/sequencer/index.html.erb:3)
    words -> 

invoke on words with nil
words: transition:  to display_form
                                    ...display_form
DEPRECATION WARNING: @options is deprecated! Call options.[]= instead of @options.[]=. Args: [:event, nil]. (called from display at /Users/William/desideratus/apotomoing_sequencers/app/cells/sequence_created_widget.rb:40)
  Anagram Load (1.3ms)  SELECT "anagrams".* FROM "anagrams"
Rendered app/cells/anagram_widget/display_form.html.haml (25.6ms)
Rendered app/cells/sequence_created_widget/display.html.haml (2.6ms)

invoke on words with nil
words: transition: display_form to display_form
                                    ...display_form
DEPRECATION WARNING: @options is deprecated! Call options.[]= instead of @options.[]=. Args: [:event, nil]. (called from _app_views_sequencer_index_html_erb___4139287632245442752_2174190080__4274187091316640628 at /Users/William/desideratus/apotomoing_sequencers/app/views/sequencer/index.html.erb:4)
  CACHE (0.0ms)  SELECT "anagrams".* FROM "anagrams"
Rendered app/cells/anagram_widget/display_form.html.haml (7.2ms)
Rendered sequencer/index.html.erb within layouts/application (236.6ms)
Completed 200 OK in 244ms (Views: 242.6ms | ActiveRecord: 1.3ms)
/\ === end of server deprecation notice ==============================
exit out of server 

New terminal 
Last login: Fri Feb  4 17:23:56 on ttys000
will-i-am:~ William$ cd ./desideratus/apotomoing_sequencers/
will-i-am:apotomoing_sequencers William$ git status
# On branch master
# Changed but not updated:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   app/cells/anagram_widget.rb
#	modified:   app/cells/anagram_widget/anagram.html.haml
#	modified:   app/cells/anagram_widget/display_form.html.haml
#	modified:   app/cells/anagram_widget/write.html.haml
#	modified:   app/cells/sequence_created_widget.rb
#	modified:   app/cells/sequence_created_widget/display.html.haml
#	modified:   app/cells/sequence_created_widget/sequence_lexigram.html.haml
#	modified:   app/views/sequencer/index.html.erb
#	modified:   test/fixtures/anagrams.yml
#	modified:   test/fixtures/sequence_createds.yml
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#	vendor/plugins/dynamic_form/
no changes added to commit (use "git add" and/or "git commit -a")
will-i-am:apotomoing_sequencers William$ git add .
will-i-am:apotomoing_sequencers William$ git commit -m "developed widgets, added fixtures data, added dynamic_form plugin"
[master bffc453] developed widgets, added fixtures data, added dynamic_form plugin
 21 files changed, 877 insertions(+), 37 deletions(-)
 rewrite test/fixtures/sequence_createds.yml (77%)
 create mode 100644 vendor/plugins/dynamic_form/MIT-LICENSE
 create mode 100644 vendor/plugins/dynamic_form/README
 create mode 100644 vendor/plugins/dynamic_form/Rakefile
 create mode 100644 vendor/plugins/dynamic_form/dynamic_form.gemspec
 create mode 100644 vendor/plugins/dynamic_form/init.rb
 create mode 100644 vendor/plugins/dynamic_form/lib/action_view/helpers/dynamic_form.rb
 create mode 100644 vendor/plugins/dynamic_form/lib/action_view/locale/en.yml
 create mode 100644 vendor/plugins/dynamic_form/lib/dynamic_form.rb
 create mode 100644 vendor/plugins/dynamic_form/test/dynamic_form_i18n_test.rb
 create mode 100644 vendor/plugins/dynamic_form/test/dynamic_form_test.rb
 create mode 100644 vendor/plugins/dynamic_form/test/test_helper.rb
will-i-am:apotomoing_sequencers William$ git log --oneline
bffc453 developed widgets, added fixtures data, added dynamic_form plugin
8f9f66a removed public/index.html file
65d1f35 entered widget codes, and two helpers for processing text
3a71fb5 generated scaffold and widgets for anagrams and sequence_createds
b0c182e first commit, new app, gems bundled, sSequencer model generated    # TODO Note the typo on sequencer. It is a learning moment on how to correct a commit message that has been committed : 20110204
will-i-am:apotomoing_sequencers William$ 
----------------------------------------



======================================================================
Now, we establish the repository at github, and push the app up to github
----------------------------------------------------------------------
1: Open new repository at : https://github.com/kathyonu/apotomoing_sequencers			< our repository address
			  : git@github.com:kathyonu/apotomoing_sequencers.git			< public clone address
	
2: added remote origin address to the .git/config file with this command :
will-i-am:apotomoing_sequencers William$ git remote add origin git@github.com:kathyonu/apotomoing_sequencers.git

3: will-i-am:apotomoing_sequencers William$ git remote show origin
* remote origin
  Fetch URL: git@github.com:kathyonu/apotomoing_sequencers.git
  Push  URL: git@github.com:kathyonu/apotomoing_sequencers.git
  HEAD branch: (unknown)
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ git status
# On branch master
# Changed but not updated:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   app/cells/anagram_widget.rb
#	modified:   app/cells/sequence_created_widget.rb
#	modified:   app/cells/sequence_created_widget/display.html.haml
#
no changes added to commit (use "git add" and/or "git commit -a")
will-i-am:apotomoing_sequencers William$ git add .
will-i-am:apotomoing_sequencers William$ git commit -m "edited a few codes, before pushing to repossitory"     # cannot correct typo on repossitory, as it has been pushed : http://www.gelato.unsw.edu.au/archives/git/0702/38650.html
[master 56392bd] edited a few codes, before pushing to repossitory
 3 files changed, 44 insertions(+), 42 deletions(-)
 rewrite app/cells/sequence_created_widget/display.html.haml (92%)
will-i-am:apotomoing_sequencers William$ git status
# On branch master
nothing to commit (working directory clean)
will-i-am:apotomoing_sequencers William$ 


	ACTION : added a short app intro here	: README_for_apotomoing_sequencers.txt
	ACTION : added this very file to app at	: README_for_commands_used_to_create_app.txt

will-i-am:apotomoing_sequencers William$ git status
# On branch master
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#	doc/README_for_apotomoing_sequencers.txt
#	doc/README_for_commands_used_to_create_app.txt
nothing added to commit but untracked files present (use "git add" to track)
will-i-am:apotomoing_sequencers William$ git add .
will-i-am:apotomoing_sequencers William$ git commit -m "added two README files before pushing to respository"
[master 9044660] added two README files before pushing to respository
 2 files changed, 18 insertions(+), 0 deletions(-)
 create mode 100644 doc/README_for_apotomoing_sequencers.txt
 create mode 100644 doc/README_for_commands_used_to_create_app.txt
will-i-am:apotomoing_sequencers William$ 

will-i-am:apotomoing_sequencers William$ git log --oneline
46d8743 modified README files in /doc/
9044660 added two README files before pushing to respository
56392bd edited a few codes, before pushing to repossitory
bffc453 developed widgets, added fixtures data, added dynamic_form plugin
8f9f66a removed public/index.html file
65d1f35 entered widget codes, and two helpers for processing text
3a71fb5 generated scaffold and widgets for anagrams and sequence_createds
b0c182e first commit, new app, gems bundled, sSequencer model generated
will-i-am:apotomoing_sequencers William$ 

4: will-i-am:apotomoing_sequencers William$ git push origin master
Counting objects: 236, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (211/211), done.
Writing objects: 100% (236/236), 153.27 KiB, done.
Total 236 (delta 55), reused 0 (delta 0)
To git@github.com:kathyonu/apotomoing_sequencers.git
 * [new branch]      master -> master
will-i-am:apotomoing_sequencers William$ 


5: Go to my new repository address : http://github.com/kathyonu/apotomoing_sequencers : view results









The apotomoing_sequencers app is created, githubbed, and ready for more development.
=== 201102042200pst ================================================================
# desideratus/apotoming_sequencers			: is the our application name
# kathyonu/apotomoing_sequencers 			: is the git repository name
# https://github.com/kathyonu/apotomoing_sequencers     : is the git repository address
# git@github.com:kathyonu/aptomoing_sequencers.git	: is the git repository public clone url
# ssh = git@github.com:kathyonu/apotomoing_sequencers.git 		: read and write access
# http : https://kathyonu@github.com/kathyonu/apotomoing_sequencers.git : read and write access
# Git Read-Only : git://github.com/kathyonu/apotomoing_sequencers.git	: 
=====================================================================================








You have reached the end of the development at the first push.
 
At this point, the app has incomplete and or possibly wrong codes.
That will not be true for long, as this is my first app on github,
this app is in constant continuing development from this point on.

This app has several names at goodworksonearth.org :
bookofcreations,
bookofsequences,
and now showing on github as : kathyonu/apotomoing_sequencers
kathy onu is my pen name, it says thank you in perfect anagram form.
my way of saying thank you to all who purchase my publishings, when published.
this Ruby on Rails with Apotomo and Cells application is a creation of Will I Am 2011, copyright held in trust at goodworksonearth.org
you are free to use this code and change it to suit your needs, provided this copyright notice, and links to the code sources below stay intact in the application.

Ruby is the programming language : My deep bow of gratitude to Yukihiro "Matz" Matsumoto for his creating the Ruby Language # TODO add link to author and copyright notice, if any.
Ruby on Rails is the web app framework, David Heinemeier Hansson is its creator : # TODO add link to the author and copyright notice, if any.
Harnessing the full power of both is Apotomo, and Cells.
Apotomo is the creme de la creme of encapsulated power, its simple codes and major effects are heaven sent by a trickster.
 By that I mean .. when you learn apotomo, and come to understand its potent workings, its sheer simplicity will floor you.
Cells are apotomo's beating heart.
Apotomo : http://apotomo.de/
Cells   : http://cells.rubyforge.org/
Apotomo and Cells are creations of Nick Sutterer : http://nicksda.apotomo.de/












