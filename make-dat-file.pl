#!/usr/local/perl/bin/perl
use warnings;
use strict 'vars';
use Getopt::Long;
use Pod::Usage;
use Cwd;

###############################################################################
# PARSE COMMAND LINE OPTIONS
###############################################################################


my ($i_help, $in_file, $out_file);   # in- and output files


GetOptions('help'               =>  \$i_help,
           'i|input=s'          =>  \$in_file,
           'o|output=s'         =>  \$out_file);
      
           

=head1 OPTIONS

        -help   This message.
        -i      Input file should be in fasta format with one line sequence (NOT multiple lines).
        -o      <FILE_NAME> Name of the output file. The file would be svm-light input format.



=cut


check input
pod2usage(-exitstatus => 1, -verbose => 1) if $i_help;

&usage unless $in_file && $out_file;
die "ERROR: File $in_file does not exist.\n" if (!(-e $in_file));

open (OUT, ">$out_file");
open(FH, "$in_file");
my @file = <FH>; my $ch =0;
my $key; my $m1;
foreach(@file)
{
	my $line=$_;
	chomp($line); 
	my @info= split(/\t/,$line);
	my $seq = $info[2];
	print OUT "1 "; 
	my $c=1; 
	for(my $i=0; $i<=6;$i++) {
		$m1 = substr($seq, $i, 1);
		my %pos1 =	(A=> '0',
				C=> '0',
				D=> '0',
				E=> '0',
				F=> '0',
				G=> '0',
				H=> '0',
				I=> '0',
				K=> '0',
				L=> '0',
				M=> '0',
				N=> '0',
				P=> '0',
				Q=> '0',
				R=> '0',
				S=> '0',
				T=> '0',
				V=> '0',	
				W=> '0',	
				Y=> '0'	);
	
	foreach $key (sort keys %pos1) {
		if ($key eq $m1) {
			$pos1{$key} =  $pos1{$key} +1;  
		}

	}
	if($ch eq 0) {
		$ch=1;
	}
	foreach $key (sort keys %pos1){
		print OUT "$c:$pos1{$key} "; $c++;
	} 

	}
print OUT "\n";


}

