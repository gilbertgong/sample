#!/usr/bin/perl
my $line = <STDIN>;
print $line;

open (my $fh, "<", $file)
  or die "Could not open file $file";
while (my $line = <$fh>) {
  chomp $line;
  process_line ($line);
}

#hash
my %hash;
$hash{'fname'} = "Gilbert";
$hash{'lname'} = "Gong";

# sort keys
foreach my $key (sort keys %hash) {
    print ("${key}: $hash{$key}\n");
}

#array
my @array = (1, 2, 3, "this is an element: ${element}");
@array = split (/ /, $line);
my $val = $array[3];
my ($login, $passwd) = split(/:/);

# subroutine and elsif
sub strip_put {
  my $line = shift;
  # if not enabled, just return unchanged
  if (!$opt_strip_put) {
	  return $line;
  }

  if ($line =~ /^put /) {
    $line = substr ($line, 4);
  } elsif {

  } else {}
  return $line;
}

for (my $i=0; $i <= 9; $i++) {
   print "$i\n";
}

# $#array
for (my $i = 0; $i <= $#array; $i++) {
  print ("element $i: $array[$i]\n")
}

# array slices
@subarray = @array[0..19] # first 20 elements
@subarray = @array[4,1,3] # 3 of the elements pulled out
@elems = (4,1,3);
@subarray = @array[@elems] # same
@array[1,2] = @array[2,1] # swap two elements

# split
($t, $t, $token) = split (/ /, $line);
($t, $iops) = split (/=/, $token);

# append
$read .= $iops;

# socket
use IO::Socket::INET;
my $port=4243;
my $listen_ip="127.0.0.1";
my $autoflush = 1;
my $listen_queue = 10;

# creating a listener
my $listener = new IO::Socket::INET (
    LocalHost => $listen_ip,
    LocalPort => $port,
    Proto => 'tcp',
    Listen => $listen_queue,
    Reuse => 1
    );
die "cannot create listener $!\n" unless $listener;
$listener->autoflush($autoflush);

sub handle_client {
  my $client_socket = shift;

  my $line = "";
  while ($line = $client_socket->getline()) {
	   $line = strip_put ($line);
	    print ($line);
  }

  # other side closed connection, now we close our side
  shutdown($client_socket, 1);
}

##### main loop
while(1) {
    my $client = $listener->accept();
    handle_client ($client);
}
$listener->close();

#process
my $val = `echo hello, world!`;
print ("val is set to ${val}\n");
system("echo", "hello, world!") # runs this, then returns to perl

my $retval = fork();
if ($retval = 0) {
  #this is the child
} else {
  #this is the parent
}

# tie dbm hash
use AnyDBM_File;
use Fcntl;
tie (my %hash, "AnyDBM_File", "/tmp/tmpdbm", O_CREAT|O_RDWR, 0600)
  or die "Can't open database: $!\n";

# initially blank, but populated on second run
print ("name in hash is: $hash{'name'}\n");
$hash{'name'} = "Gilbert";
print ("name in hash is: $hash{'name'}\n");
untie %hash;
