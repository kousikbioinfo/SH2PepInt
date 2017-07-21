SH2PepInt
====


SH2PepInt is a prediction tool for SH2-peptide interactions, based on SVM. 
Current version contains a total 51 human SH2 domain models. 

SH2PepInt 1.0, November, 2012 

Authors: Kousik Kundu, Fabrizio Costa, Michael Huber, Michael Reth and Rolf Backofen

Platform:
------------

Unix and Linux


Installation:
------------

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


Contact: 
-----------------
Kousik Kundu <kk8@sanger.ac.uk>

Publication:
-----------------
* Kousik Kundu, Martin Mann, Fabrizio Costa, and Rolf Backofen

[MoDPepInt: An interactive webserver for prediction of modular domain-peptide interactions
Bioinformatics, 2014.](https://academic.oup.com/bioinformatics/article-lookup/doi/10.1093/bioinformatics/btu350)

* Kousik Kundu, Fabrizio Costa, Michael Huber, Michael Reth, and Rolf Backofen

[Semi-Supervised Prediction of SH2-Peptide Interactions from Imbalanced High-Throughput Data
PLoS One, 8(5), pp. e62732, 2013.](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0062732)




