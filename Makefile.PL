#!perl

use ExtUtils::MakeMaker;

$version='0.3';
@ver=split(/\./,$version);


print <<"EOT";
	PDF::API2::UNIMAP	($version)
EOT



WriteMakefile (
	NAME		=>	"PDF::API2::UniMap",
	VERSION		=>	"$version",
	AUTHOR		=>	"areibens\@cpan.org",
	ABSTRACT	=>	"TNG PDF Generation API Unicode Map Module",
	dist		=>	{
		ZIP		=>	"zip ",
		ZIPFLAGS	=>	" -v -o -r -9 ",
		COMPRESS	=>	"gzip -9 -f ",
	},
	MAN1PODS	=>	{},
	MAN3PODS	=>	{},
	PREREQ_PM	=>	{
					'Compress::Zlib'	=> 1.03,
				},
);

exit;

__END__

