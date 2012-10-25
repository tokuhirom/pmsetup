use Test::More;
eval "use Test::CPAN::Meta";
plan skip_all => "Test::CPAN::Meta required for testing META.yml" if $@;
plan skip_all => "Missing META.yml" unless -f 'META.yml';
meta_yaml_ok();
