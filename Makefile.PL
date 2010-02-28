use inc::Module::Install;
name 'toktools';
all_from 'pmsetup';

requires 'YAML';
requires 'Template';

tests 't/*.t t/*/*.t t/*/*/*.t t/*/*/*/*.t';
install_script 'pmsetup';
use_test_base;
auto_include;
WriteAll;

