requires "Carp" => "0";
requires "Data::Stream::Bulk::Callback" => "0";
requires "DateTime::Format::HTTP" => "0";
requires "Digest::HMAC_SHA1" => "0";
requires "Digest::MD5" => "0";
requires "Digest::MD5::File" => "0";
requires "File::Find::Rule" => "0";
requires "File::stat" => "0";
requires "Getopt::Long" => "0";
requires "HTTP::Date" => "0";
requires "HTTP::Status" => "0";
requires "IO::File" => "1.14";
requires "LWP::UserAgent::Determined" => "0";
requires "MIME::Base64" => "0";
requires "MIME::Types" => "0";
requires "Moose" => "0.85";
requires "Moose::Util::TypeConstraints" => "0";
requires "MooseX::StrictConstructor" => "0.16";
requires "MooseX::Types::DateTime::MoreCoercions" => "0.07";
requires "Path::Class" => "0";
requires "Pod::Usage" => "0";
requires "Regexp::Common" => "0";
requires "Term::Encoding" => "0";
requires "Term::ProgressBar::Simple" => "0";
requires "URI" => "0";
requires "URI::Escape" => "0";
requires "URI::QueryParam" => "0";
requires "XML::LibXML" => "0";
requires "XML::LibXML::XPathContext" => "0";
requires "strict" => "0";
requires "warnings" => "0";

on 'test' => sub {
  requires "File::Spec" => "0";
  requires "File::Temp" => "0";
  requires "IO::Handle" => "0";
  requires "IPC::Open3" => "0";
  requires "LWP::Simple" => "0";
  requires "Test::Exception" => "0";
  requires "Test::More" => "0";
  requires "lib" => "0";
  requires "perl" => "5.006";
  requires "vars" => "0";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "0";
};

on 'develop' => sub {
  requires "Test::CPAN::Changes" => "0.19";
  requires "Test::CPAN::Meta" => "0";
  requires "Test::EOL" => "0";
  requires "Test::More" => "0.88";
  requires "Test::NoTabs" => "0";
  requires "Test::Pod" => "1.41";
  requires "Test::Synopsis" => "0";
  requires "Test::Version" => "1";
};
