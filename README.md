## Welcome to Ruby on Rails using Apotomo on Cells.
* github.com/kathyonu/apotomoing_sequencers

### Note: At this time, 20110725
> apotomoing_sequencers now has five sequencers sequencing in several places in the app.

> This means after you enter your text into the entry box,
> when you tab or click out of the entry box, the five sequences
> will be generated and entered into the sequence_created widget,
> without page change, using jQuery, javascript and AJAX.

> See app/doc/README_FOR_APP, for some development history milestones.

# Getting Started
## In your Terminal

	$ git clone git://github.com/kathyonu/apotomoing_sequencers.git
	$ cd ./apotomoing_sequencers
	$ bundle install
	$ rails s

### After your server fires up, go to your browser : 

*	http://localhost:3000/             <= from here, click or tab to Enter Your Data box, enter your data, tab to the next entry window, watch what happens.
*	http://localhost:3000/             <= :root, empowered with cells and widgets, now processing user_entry into the five sequences.
*	http://localhost:3000/quotes/new   <= scaffolded CRUD, no widgets nor cells, first javascript sequencer for display of principle.
*	http://localhost:3000/anagrams/new <= scaffolded CRUD, no widgets nor cells, second javascript sequencer for display of principle.
*	http://localhost:3000/sequences/   <= now sequencing the five sequences from your text entry, with jQuery.
*	http://localhost:3000/sequences/new <= five sequencers working
*	http://localhost:3000/sequences/edit <= five sequencers working

> The sequences address will show the entire app's design in one table. 
> The sequences table is a primitive setup allowing massive duplicates in the five sequences. 
> The sequences table was added so you can see how the entire application can exist in one table. 

## Description:

The essence of apotomoing_sequencers is to process any textual matter that contains punctuations, numbers, signs such as $ and other non-letter symbols, and convert it all to lettered words.  An example is apt. becomes apartment; appt. becomes appointment. $100 becomes one hundred dollars.  This is effected with the String#to_textual method we have written, which draws on over 5,500 regular expressions to massage the text to pure letterings, and from that, we can generate the five sequences of any English creation, be it name, word or phrase. 

The regular expressions file empowering the String#to_textual method is here : app/helpers/textual.rb

Currently, we are writing this app using the Snow Leopard iMac with : 
### [ruby](http://rubyforge.org/ "Ruby 1.9.2p0 2010-08-18 revision 29036 [x86_64-darwin10]")
### [rails](http://rubyforge.org/projects/rails/ "Rails 3.0.5, up through $ails 3.0.9")
### [apotomo](http://apotomo.de/ "Apotomo 1.1.1")
### [cells](http://cells.rubyforge.org/ "Cells 3.5.6")
### [sqlite3](http://www.sqlite.org/quickstart.html "SQLite")
The app uses sqlite3 for the database, so you have no setup to do there.
### [mysql2](http://rubygems.org/gems/mysql2 "mysql2")
Our in-house app will be using mysql2 in production.
### [jQuery](http://jquery.com/ "jQuery")
jQuery empowers the five sequencers with asynchronous processing.
#### See : app/public/javascript/sequencenewsequencers.js : affects the widgets
#### See : app/public/javascript/fivesequencers.js : affects sequences/new and sequences/edit

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
> we have identified quite a few other "sequencings" that can be generated, however none are germane to our work.
> after *apotomoing_sequencers* is built and tested and humming along, we will add those sequencer methods, just for fun.

## What are the five sequences we generate ? 

If we use, *peace on earth good will all*, as the created phrase, then its sequences will be :

1. sequence_created  : peace on earth good will all
2. sequence_creation : peaceonearthgoodwillall
3. sequence_complete : aaacdeeeghillllnoooprtw
4. sequence_lexigram : acdeeghillnooprtw
5. sequence_singular : acdeghilnoprtw

The application will prove useful to anyone who loves and works with words and has need to find or verify the sequences that creates any name word or phrase. 
Those search methods will be added after we have the application fully working.

### Other sequencers we can add include :

* sequence_reversed - abcdef => fedcba
* sequence_randomized - abcdef => dfbaec
* sequence_center_randomized - abcdef => aecbdf
* sequence_palindrome - "doctor roctod".palindrome?
* anagrams, full or partial
* perfect anagrams - meanings wise, these are a leap beyond the full anagrams offered at wordsmith.org and other anagram generators.

> An anagrams generator is available now at [Wordsmith AnagramGenerator](http://www.wordsmith.org/ "Wordsmith.org AnagramGenerator")

> #### This application is Copyright Will I Am at goodworksonearth.org, held in trust.
> #### You are free to use this application, and make changes to it for your own use, provided this copyright notice remains intact.  
> #### kathyonu is my pen name, a Perfect Anagram of THANK YOU.
> #### Ruby, Ruby on Rails, Apotomo and Cells are all registered to their owners, their copyrights protected.
> #### A good place to begin learning Apotomo and Cells [Peter's Guide](http://apotomo.de/peters-guide-1.1/introduction.html "Peter's Guide")
