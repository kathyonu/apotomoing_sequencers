File Name : README_for_method-to_textual.txt

This is a short description of how to use the custom method named, String#to_textual

The String#to_textual method is in : app/helpers/textual.rb
The processing methods, defined in : app/lib/textual-fibering-methods.rb
The fibering methods also show in  : app/lib/textual-fibering-methods.rb

EXAMPLES :

from this ::  ".. a line /of\ text with $ signs, commas, hyphens;-: and Mr. and Mrs. abbreviations and such as etc."
to this   ::  "a line of text with dollars signs, commas, hyphens, and mister and missus abbreviations and such as etcetera" 

from this ::  "We have sent you our $10,000.00 check to your address at, 123 Alphabet-Only Lane, Apt 3c."
to this   ::  "we have sent you our ten thousand dollars check to your address at, one twenty three alphabet only lane, apartment three c" 


METHOD DESCRIPTION : String#to_textual

The String#to_textual method 
 will work on a one word entry, 
 one line of data up to 250 characters long, 
 one document of any length and any number of lines 
 of meaning ending with the period, question mark, exclamation mark, \n, 
 and other ways of determining the end of a line, 
 returning its results with new line breaks as appropriate to the document. 

And, with the  fibering methods, as shared in app/lib/textual-fibering-methods.rb, 
 we can process one file as input and change the data with the fiber, and put the results into another file. 

And, using ARGS, we could process an entire directory of files. I have not written that method yet. 

All methods in texutal-fibering-methods.rb are geared towards getting data ready 
 to enter into our database when our app is fully functioning.  We currently have 
 50,000,000 lines processed and ready to enter.


EXAMPLE in the console : 

Last login: Sat Feb  5 10:27:54 on ttys000
67-206-165-66:~ William$ cd ./desideratus/apotomoing_sequencers/
67-206-165-66:apotomoing_sequencers William$ rails c -s                 # same as $ rails console --sandbox
Loading development environment in sandbox (Rails 3.0.3)
Any modifications you make will be rolled back on exit

ruby-1.9.2-p0 :002 > require "./lib/textual-fibering-methods.rb"
 => nil 

ruby-1.9.2-p0 :017 > line = ".. a line /of\ text with $ signs, commas, hyphens;-: and Mr. and Mrs. abbreviations and such as etc."
 => ".. a line /of text with $ signs, commas, hyphens;-: and Mr. and Mrs. abbreviations and such as etc." 
ruby-1.9.2-p0 :005 > new = line.to_textual 
 => "a line of text with dollars signs, commas, hyphens, and mister and missus abbreviations and such as etcetera" 
ruby-1.9.2-p0 :006 > 


ruby-1.9.2-p0 :017 > line2 = "We have sent you our $10,000.00 check to your address at, 123 Alphabet-Only Lane, Apt 3c." 
 => "We have sent you our $10,000.00 check to your address at, 123 Alphabet-Only Lane, Apt 3c." 
ruby-1.9.2-p0 :018 > new = line2.to_textual
=> "we have sent you our ten thousand dollars check to your address at, one twenty three alphabet only lane, apartment three c" 
ruby-1.9.2-p0 :019 > 


It is that easy.

You want to process an entire file ?

Right now, go to your Terminal and type in : 

	$ write_file

This is one of the methods defined in the textual-fibering-methods.rb file.
It will kick out all the data in the /lib/anagrams/anagrams_table_data.txt file, after processing it using String#to_textual
Open the data file so you see the difference between that, and what appears on your screen.

If you look in the textual-fibering-methods.rb file you will see the method named as : file_name
There, you will see the /lib/anagrams/anagrams_table_data.txt is set for you.
You can change the file_name("file_address") to process your named files. 
You will see our many examples in the method are commented out.
Set your file names as you wish, and comment and uncomment to choose which one file_name you use.
Setting the file_name there, once, will provide that name to many of the methods defined in textual-fibering-methods.rb

Breathe and be well,

kathyonu/apotomoing_sequencers at github
