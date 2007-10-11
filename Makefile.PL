# Load the Module::Install bundled in ./inc/
use inc::Module::Install;

# Define metadata
name 'POE-Loop-AnyEvent';
all_from 'lib/POE/Loop/AnyEvent.pm';

# Specific dependencies
requires 'POE' => '0.9999';

build_requires 'Test::More' => '0.42';

no_index 'directory' => 'ex';

auto_install;
WriteAll;
