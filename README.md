devaswam
========

Complete devaswam management solution

user
====
-> name
-> nakshatram
-> date of birth
-> kooru (not now)
-> raashi (not now)

temple
======
-> name
-> description
-> id

prathishta
==========
-> name
-> temple_id

vazhipadu
=========
-> name
-> description
-> prathishta_id
-> temple
-> rate

vazhipadu_booking
=================
-> user_id
-> vazhipadu_id
-> temple_id
-> prathishta_id
-> date

receipt
=======
-> receiptable_id
-> receiptable_type
-> date
-> amount
-> user_id

officer
=======

username
password_encrypted
name
email
phone no



Step 1

Search with nakshatra and name of the user

Step 2
if search results are there, select the user and proceed to step 4

Step 3
create a user with given name, nakshatra and date of birth (dob is optional)

Step 4
Register a vazhipadu
the user name nakshatra will be prepopulated

Step 5
select the prathishta -> it will now start showing vazhipadu as drop down select2 type
select a vazhipadu, the rate will be prepulated

Step 6
Save. It will now create a receipt for the vazhipadu and will pop up a page for printing.









