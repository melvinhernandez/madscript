“MadScript”
==========

Idea: MadScript is a web application, later coming to mobile devices, in which writers on the web will be able to showcase their writing through a collaboration with other writers. Its users, also known as authors, will be able to create and contribute to Scripts. A Script will have a title attribute, initially decided by the author (but also has the ability to be contributed to by its script contributors). In addition, a script will be composed of many Stanzas written by registered authors. 

===========

Models: 
Authors – users of the application.
Scripts – a blank “page” or notebook built by a user.
Stanzas – piece of writing (ranging from a sentence to a paragraph).
whispers - an attribute that allows others to comment and analyze text
Relations:
Author
fav_genre:string
attribute in which the author decides to display his/her favorite writing genre
too_mad:integer
twinkle:integer (thank yous)
Relations
has_many: stanzas
“has contributed with this many”
has_many: scripts
“has authored this many”
has_many: whispers
Script
number_of_stanzas:integer
genre:string
title:string 
Relations
belongs_to: author
has_many: stanzas
			
Stanza
stanza_number:integer
number_of_lines:integer
Relations
has_many: whispers
belongs_to: script
Whispers (to be added later)
reference_line_start:integer    	”range of lines”
reference_line_end:integer
analysis_and_feedback:string
Button “too_mad” - for hateful users (shows up next to user with the whisper comment)
Button “twinkle” - to thank users 
Relations
belongs_to: stanza
All will have inked attribute… meaning “liked”

		gems paperclip and carrierwave
