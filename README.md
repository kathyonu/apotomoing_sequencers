## Welcome to Ruby on Rails using Apotomo and Cells.
* github.com/kathyonu/apotomoing_sequencers

### Note: 
> After you run the Getting Started instructions below, 
> In your browser, go to http://localhost:3000/sequences/new
> After you enter your text into the entry box,
> when you tab or click out of the entry box, the five sequences
> are generated and entered into the sequence form,
> next the character counts are shown at the right, 
> next the database matches are shown on the left, 
> all without page change, using javascript with jQuery,
> and our five sequencers written in Ruby.

# Getting Started
## In your Terminal

	$ git clone git://github.com/kathyonu/apotomoing_sequencers.git
	$ cd ./apotomoing_sequencers
	  For mysql database, save the config/database-example-mysql.yml file as config/database.yml
	  Create the three mysql databases : sequencers_development, sequencers_production, sequencers_test.
	  For Sqlite3 database, save the config/database-example-sqlite3.yml file as config/database.yml.
	  For Sqlite3 database, open the Gemfile, and comment out mysql2, and uncomment Sqlite3.
	  Next run ..
	$ bundle install
	$ rake db:migrate               # or the next command
	$ rake db:migrate:reset         # sets up the database anew
	$ rails s			# to run the development server

### After your server fires up, go to your browser : 

*	http://localhost:3000/  : will display the sequences generated from  any text entry. does not affect the database.
*       http://localhost:3000/sequences/new  : to affect the database, begin here.

> The sequences/new address shows the entire application design and data in one table. 
> The sequences table is a primitive setup allowing massive duplicates in the five sequences. 
> The sequences table was added so we and you can see how the entire application exists in one table. 
> The further development of this application has now begun as of March 2012.
> No further development of this application apotoming_sequences is anticipated,
> due to development of our prelaunch site : 
### [sequencer_prelaunch](https://github.com/kathyonu/sequencer_prelaunch "Sequencer Prelaunch")

## Description:

The essence of apotomoing_sequencers is to process any textual matter that contains punctuations, numbers, signs such as $ and other non-letter symbols, and convert it all to lettered words.  An example is apt. becomes apartment; appt. becomes appointment. $100 becomes one hundred dollars.  This is effected with the String#to_textual method we have written, which draws on over 5,500 regular expressions to massage the text to pure letterings, and from that, we can generate the five sequences of any English creation, be it name, word or phrase. 

The regular expressions file empowering the String#to_textual method is here : lib/textual.rb

The app works Using: Ruby-1.9.2-p290 and Rails 3.0.10

Currently, we wrote this app using the Snow Leopard iMac with : 
### [ruby](http://rubyforge.org/ "Ruby 1.9.2p0 2010-08-18 revision 29036 [x86_64-darwin10]")
### [rails](http://rubyforge.org/projects/rails/ "Rails 3.0.5, up through Rails 3.0.10")
### [apotomo](http://apotomo.de/ "Apotomo 1.2.0")
### [cells](http://cells.rubyforge.org/ "Cells 3.6.7")
### [sqlite3](http://www.sqlite.org/quickstart.html "SQLite")
### [mysql2](http://rubygems.org/gems/mysql2 "mysql2")
Our in-house app is now using mysql in production and development.
### [jQuery](http://jquery.com/ "jQuery")
jQuery empowers the five sequencers with asynchronous processing, calling on Ruby to process the String.to_textual regular expressions.

## apotomoing_sequencers
As a name, it comes from two stories of creation:

### [apotomo](http://apotomo.de/ "apotomo")
*_apotomo_* is the name of a gem and plugin created by Nick Sutterer.
*_apotomo_* harnesses the power of *cells*, making them fully interactive.

### [cells](http://cells.rubyforge.org/ "cells")
*_cells_* is the name of a gem and plugin created by Nick Sutterer.  
*_cells_* is the ideal missing component of the rails MVC stack.  
*_cells_* can be written one time, and displayed anywhere with one line of code.
So, *apotomoing* is my creation on *apotomo*, so as to honor the beauty and usefulness of *apotomo* and *cells*.
I have Nick's permission to use the name as *apotomoing*, with *sequencers* latched on, as our github repository name.

### sequencers
> The sequencer methods are what this app is being built for, to sequence any creation in English.
>
> Just as the sequencing of the dna displays its specific characteristics, 
> the sequencing of the words, names, phrase, creates their unique letterings sequences.
> And, those sequences are what we are after in this application.
>
> *apotomoing_sequencers* is built on five sequencing methods.
> We have identified quite a few other "sequencings" that can be generated, however none are germane to our work.
> After *apotomoing_sequencers* is built and tested and humming along, we will add those sequencer methods, just for fun.

## What are the five sequences we generate ? 

If we use, *peace on earth good will all*, as the created phrase, then its sequences will be :

1. sequence_created  : peace on earth good will all
2. sequence_creation : peaceonearthgoodwillall
3. sequence_complete : aaacdeeeghillllnoooprtw
4. sequence_lexigram : acdeeghillnooprtw
5. sequence_singular : acdeghilnoprtw

The application will prove useful to anyone who loves and works with words and has need to find or verify the sequences that creates any name word or phrase. 

### Other sequencers we can add include :

* sequence_reversed - abcdef => fedcba
* sequence_randomized - abcdef => dfbaec
* sequence_center_randomized - abcdef => aecbdf
* sequence_palindrome - "doctor roctod".palindrome?
* anagrams, full or partial
* perfect anagrams - meanings wise, these are a leap beyond the full anagrams offered at wordsmith.org and other anagram generators.

### An anagrams generator is available now at [Wordsmith AnagramGenerator](http://www.wordsmith.org/ "Wordsmith.org AnagramGenerator")

> This application is Copyright Will I Am, held in trust at goodworksonearth.org.
> You are free to use this application, and make changes to it for your own use, provided this copyright notice remains intact.  
> kathyonu is my pen name, a Perfect Anagram of THANK YOU.
> Ruby, Ruby on Rails, Apotomo and Cells are all registered to their owners, their copyrights protected.
> At this time a good place to begin learning Apotomo and Cells [Peter's Guide](http://apotomo.de/peters-guide-1.1/introduction.html "Peter's Guide")
