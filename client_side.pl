use strict;
use warnings;
use IO::Socket;

my $socket = new IO::Socket::INET (   
PeerAddr => 'localhost',   
PeerPort => '6666',   
Proto => 'tcp',   
);   
  
die "Could not create socket: $!n" unless $socket;

for ( ; ;)
{
    print "Enter data to send:\n";  
my $data = <STDIN>;  
chomp $data;  
print $socket "Data received from user: '$data'\n";  
}

close $socket;