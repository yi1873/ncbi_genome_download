my $in = shift;
my %hash;
open IN,$in||die;
while(<IN>){
    chomp;
    next if(/^#/);
    my @arr = split(/\t/);
    $hash{$arr[5]}{$arr[4]}=$_;
    $hash{$arr[5]}{$arr[11]}=$_;
}

foreach my $key(keys %hash){

        if(defined $hash{$key}{"reference genome"}){
             print $hash{$key}{"reference genome"}."\n";
          
        }elsif(defined $hash{$key}{"representative genome"}){
             print $hash{$key}{"representative genome"}."\n";
              
        }elsif(defined $hash{$key}{"Complete Genome"}){
             print $hash{$key}{"Complete Genome"}."\n";
             
        }elsif(defined $hash{$key}{"Chromosome"}){
             print $hash{$key}{"Chromosome"}."\n";
             
        }elsif(defined $hash{$key}{"Scaffold"}){
             print $hash{$key}{"Scaffold"}."\n";
             
        }else{
             print $hash{$key}{"Contig"}."\n";
            
        }
    
}

close IN;
