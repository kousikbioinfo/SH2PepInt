SH2PepInt
====


SH2PepInt is a prediction tool for SH2-peptide interactions, based on SVM. 
Current version contains a total 51 human SH2 domain models. 

SH2PepInt 1.0
November, 2012 
Authors: Kousik Kundu, Fabrizio Costa, Michael Huber, Michael Reth and Rolf Backofen

Platform:
------------

Unix and Linux


Installation:
------------

A current version of SH2PepInt you can get from:

http://www.bioinf.uni-freiburg.de/Software/SH2PepInt
 
or please write an email to Kousik Kundu <kousik@sanger.ac.uk>

To install the tool, please extract the src archive somewhere. Then change
into that directory and type

  bash COMPILE.sh

the script compiles the SVM-light and  
creates the master script, namely SH2PepInt.sh. 




Dependency:
-------------

In order to compile SH2PepInt correctly, you need "PERL" already installed.



Usage:
--------------

SH2PepInt <protein/peptide fasta file> <model file>

e.g. SH2PepInt pY-peptides.fasta models/GRB2.fasta

The model file is OPTIONAL, by default the program uses all the 51 model for the predictions. 




Files:
-----------------
sample.fasta: sample file for run the tool
pY-peptides.fasta: All the phosphotyrosine peptides reported in PhosphoSitePlus database.






