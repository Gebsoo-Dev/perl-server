use IO::Socket;
use warnings;
use strict;

my $socket = new IO::Socket::INET (   
LocalHost => 'localhost',   
LocalPort => '6666',   
Proto => 'tcp',   
Listen => 1,   
Reuse => 1,   
);   
  
die "Could not create socket: $!n" unless $socket;   

for ( ; ;)
{
    print "Waiting for data from the client end\n";   
my $new_socket = $socket->accept();   
while(<$new_socket>) 
{   
    print $_;   
}
}

close $socket;