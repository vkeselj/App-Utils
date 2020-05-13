use 5.008004;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME             => 'App::Utils',
  VERSION_FROM     => 'lib/App/Utils.pm',
  ABSTRACT_FROM    => 'lib/App/Utils.pm',
  AUTHOR           => 'Vlado Keselj',
  LICENSE          => 'perlartistic',
  MIN_PERL_VERSION => '5.0008004',
  EXE_FILES        => ['date-tag'],
  PREREQ_PM        => {
    'POSIX' => 0,
  },
  (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
    'meta-spec' => { version => 2 },
    resources => {
      repository => {
        type => 'git',
          url  => 'https://github.com/vkeselj/App-Utils.git',
          web  => 'https://github.com/vkeselj/App-Utils',
      },
    }})
  : ()
  ),
);