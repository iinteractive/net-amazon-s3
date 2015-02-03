package Net::Amazon::S3::Request::ListParts;
$Net::Amazon::S3::Request::ListParts::VERSION = '0.59';
# ABSTRACT: List the parts in a multipart upload.

use Moose 0.85;
use MooseX::StrictConstructor 0.16;
extends 'Net::Amazon::S3::Request';

has 'bucket'            => ( is => 'ro', isa => 'BucketName',      required => 1 );
has 'key'               => ( is => 'ro', isa => 'Str',             required => 1 );
has 'upload_id'         => ( is => 'ro', isa => 'Str',             required => 1 );
has 'acl_short'         => ( is => 'ro', isa => 'Maybe[AclShort]', required => 0 );
has 'headers' =>
    ( is => 'ro', isa => 'HashRef', required => 0, default => sub { {} } );

__PACKAGE__->meta->make_immutable;

sub http_request {
    my $self    = shift;
    my $headers = $self->headers;

    if ( $self->acl_short ) {
        $headers->{'x-amz-acl'} = $self->acl_short;
    }

    return Net::Amazon::S3::HTTPRequest->new(
        s3      => $self->s3,
        method  => 'GET',
        path    => $self->_uri( $self->key ).'?uploadId='.$self->upload_id,
        headers => $self->headers,
    )->http_request;
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Net::Amazon::S3::Request::ListParts - List the parts in a multipart upload.

=head1 VERSION

version 0.59

=head1 AUTHOR

Pedro Figueiredo <me@pedrofigueiredo.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Amazon Digital Services, Leon Brocard, Brad Fitzpatrick, Pedro Figueiredo.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
