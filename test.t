#!/usr/bin/perl
use strict;
use warnings;
#Test module.
use Test::More;
#This is how you load custom lib folder. When you don't type this, when running PERL script all modules will be searched in PERL main lib directory.
use lib "lib";
use HelloWorld;

#This is how you tell how many test you wil run.
BEGIN {plan tests=>3}

#This is some kind of an object.
my $helloWorld = HelloWorld->new(hello=>"Hello World!");

#You call ok to test the logic.
#NOTE: This tests if object has Hello World! as a value in the field.
#NOTE: Second parameter of ok is the name of the test.

ok($helloWorld->get_hello eq "Hello World!", "Must be equals to Hello World");


#this tells that got has to be not equal to expected
isnt($helloWorld->get_hello , "Hello","Must not be equals to Hello World");

#This sets new value to hello field.
$helloWorld->set_hello("Not Hello");

#This test is after the new value is added.
ok($helloWorld->get_hello eq "Not Hello", "Testing Set Method");
done_testing();

