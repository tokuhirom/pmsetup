use inc::Module::Install;
name 'pmsetup';
all_from 'pmsetup';

requires 'YAML';
requires 'Text::Xslate' => 0.2004;
requires 'Module::Install' => 1.00;
requires 'Module::Install::AuthorTests';
requires 'Module::Install::XSUtil' => 0.30;
requires 'Module::Install::CheckLib';
requires 'Config::Pit';

tests 't/*.t t/*/*.t t/*/*/*.t t/*/*/*/*.t';
install_script 'pmsetup';
WriteAll;

