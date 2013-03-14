package rsu::files::clientdir;

sub getclientdir
{
	# Use the Cwd module to get the current working directory
	use Cwd;
	
	# Get the current working directory
	my $cwd = getcwd;
	
	# Require the module that lets us get the users home folder
	require client::env;
	
	# Get the users home directory
	my $HOME = client::env::home();
	
	# Make a variable to contain the clientdir
	my $clientdir = $cwd;
	
	# If this script have been installed systemwide
	if ($cwd =~ /^(\/usr\/s?bin|\/opt\/|\/usr\/local\/s?bin)/)
	{
		# Change $clientdir to ~/.config/runescape
		$clientdir = "$HOME/.config/runescape";
	}
	
	# Return the result
	return $clientdir;
}

#
#---------------------------------------- *** ----------------------------------------
#

1; 
