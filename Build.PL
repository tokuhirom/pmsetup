use strict;
use warnings FATAL => 'all';
use Module::Build;

my $build = Module::Build->new(
    license              => 'perl',
    recursive_test_files => 1,
    dynamic_config       => 0,
    build_requires       => {},
    configure_requires   => { 'Module::Build' => '0.38' },
    requires             => {
        'YAML'                          => '0',
        'Test::Spelling'                => '0',
        'Text::Xslate'                  => '0.2004',
        'Perl::Tidy'                    => '0',
        'Config::Pit'                   => '0',
        'autodie'                       => '0',
        'Software::License'             => '0',
        'Module::Build'                 => '0.38',
        'ExtUtils::Manifest'            => '1.58',
        'Module::Install::XSUtil'       => '0.3',
        'Module::Install::CheckLib'     => '0',
        'YAML::Tiny'                    => '0',
        'Module::Install::AuthorTests'  => '0',
        'Module::Install'               => '1',
        'IPC::System::Simple'           => '0',
		'Test::CPAN::Meta'              => '0',
        'perl'                          => '5.12.0',
        'Text::Xslate::Bridge::TT2Like' => 0,
        'Test::MinimumVersion' => 0,
        'Test::Perl::Critic' => 0,
        'Pod::Parser' => 0,
    },
    no_index    => { 'directory' => [ 'inc' ] },
    name        => 'pmsetup',
    dist_name   => 'pmsetup',
    dist_version_from => 'pmsetup',
    dist_abstract    => 'pmsetup',

    script_files => ['pmsetup'],

    test_files => -d '.git' ? 't/ xt/' : 't/',

    create_readme  => 1,
    create_license => 1,
);
$build->create_build_script();
