== Welcome to Ruby on Rails using Apotomo on Cells.

At this time, 20110208, apotomoing_sequencers is not a fully functioning application. The entire modelling is subject to change at any moment.

The essence of apotomoing_sequencers is to process any textual matter that contains punctuations, numbers, signs such as $ and other non letter symbols, and convert it all to lettered words.  An example is apt. becomes apartment; appt. becomes appointment. $100 becomes one hundred dollars.  This is effected with the String#to_textual method we have written, which draws on over 3,000 regular expressions to massage the text to pure letterings, and from that, we can generate the five sequences. See /helpers/textual.rb

Currently, we are writing this app, using 
ruby 1.9.2p0 (2010-08-18 revision 29036) [x86_64-darwin10]
Rails 3.0.4
Apotomo 1.0.3
Cells 3.5.0

The app uses sqlite3 for the database, so you have no setup to do there.
Our in-house app will be using mysql2 in production.

== apotomoing_sequencers
 as a name, it comes from two stories of creation:

apotomo is the name of a gem and plugin created by Nick Sutterer.
apotomo harnesses the power of cells, making the fully interactive.
_http://apotomo.de/

cells is the name of a gem and plugin created by Nick Sutterer.
cells is the ideal missing component of the rails MVC stack.
cells can be written one time, and displayed anywhere.
_http://cells.rubyforge.org/

So, apotomoing is my creation on apotomo, so as to honor the beauty and usefulness of apotomo and cells.

I have Nick's permission to use the name as apotomoing, with sequencers latched on, as our github repository name.

== Sequencers
 well . . that is what this app is being built for, to sequence any creation in English.

Just as the sequencing of the dna displays its specific characteristics, 
the sequencing of the words, names, phrase, creates their unique letterings sequences.
And, those sequences are what we are after in this application.

apotomoing_sequencers is built on five sequencing methods.
we have identified quite a few other "sequencings" that can be generated, however none are germane to our work.
after apotomoing_sequencers is built and tested and humming along, we will add those sequencer methods, just for fun.

== What are the five sequences we generate ? 

We call them :

1. sequence_created
2. sequence_creation
3. sequence_complete
4. sequence_lexigram # at this time, we do not release the lexigram sequencer code. as a stand-in, we substitute the reversal. 
5. sequence_singular

The application will prove useful to anyone who loves and works with words and has need to find or verify the sequences that create any name word or phrase.

= Other sequencers we can add include :

* sequence_reversed - abcdef => fedcba
* sequence_randomized - abcdef => dfbaec
* sequence_center_randomized - abcdef => aecbdf
* sequence_palindrome - "doctor roctod".palindrome?
* anagrams
* perfect anagrams
= An anagrams generator is available now at _http://www.wordsmith.org/

This application is Copyright Will I Am at goodworksonearth.org, held in trust.
You are free to use this application, and make changes to it for your own use,
provided this copyright notice remains intact.  

kathyonu is my pen name, a Perfect Anagram of THANK YOU.

Ruby, Ruby on Rails, Apotomo and Cells are all registered to their owners, their copyrights protected.

== Getting Started

$ rails s   # start your server in the app

Go to http://localhost:3000/ and you'll see the beginnings of apotomoing_sequencers.
