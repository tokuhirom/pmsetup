use inc::Module::Install;
name 'pmsetup';
all_from 'pmsetup';

requires 'YAML';
requires 'Template';
requires 'Module::Install::AuthorTests';
requires 'Module::Install::XSUtil';
requires 'Module::Install::ReadmeMarkdownFromPod';

tests 't/*.t t/*/*.t t/*/*/*.t t/*/*/*/*.t';
install_script 'pmsetup';
use_test_base;
auto_include;
WriteAll;

