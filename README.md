

To do this, we’re going to create an app to report and list lost pets.

As a user I can see all found pets
As a user I can see details about one found pet (when and where it was found)
As a user I can add a pet I found
As a user I can update a pet
As a user I can delete a pet


CRUD 7
HTTP verb	Controller action	ActiveRecord method
GET	            index	            all
GET	            show	            find(id)
GET	            new	              new(attributes)
POST	          create	          create(attributes)
GET	            edit	            find(id)
PATCH	          update	          update(attributes)
DELETE	        destroy	          destroy



CRUD	HTTP verb
C	     POST
R	     GET
U	     PATCH
D	     DELETE
