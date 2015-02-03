
BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for testing by the author');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.09

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'bin/s3cl',
    'lib/Net/Amazon/S3.pm',
    'lib/Net/Amazon/S3/Bucket.pm',
    'lib/Net/Amazon/S3/Client.pm',
    'lib/Net/Amazon/S3/Client/Bucket.pm',
    'lib/Net/Amazon/S3/Client/Object.pm',
    'lib/Net/Amazon/S3/HTTPRequest.pm',
    'lib/Net/Amazon/S3/Request.pm',
    'lib/Net/Amazon/S3/Request/CompleteMultipartUpload.pm',
    'lib/Net/Amazon/S3/Request/CreateBucket.pm',
    'lib/Net/Amazon/S3/Request/DeleteBucket.pm',
    'lib/Net/Amazon/S3/Request/DeleteMultiObject.pm',
    'lib/Net/Amazon/S3/Request/DeleteObject.pm',
    'lib/Net/Amazon/S3/Request/GetBucketAccessControl.pm',
    'lib/Net/Amazon/S3/Request/GetBucketLocationConstraint.pm',
    'lib/Net/Amazon/S3/Request/GetObject.pm',
    'lib/Net/Amazon/S3/Request/GetObjectAccessControl.pm',
    'lib/Net/Amazon/S3/Request/InitiateMultipartUpload.pm',
    'lib/Net/Amazon/S3/Request/ListAllMyBuckets.pm',
    'lib/Net/Amazon/S3/Request/ListBucket.pm',
    'lib/Net/Amazon/S3/Request/ListParts.pm',
    'lib/Net/Amazon/S3/Request/PutObject.pm',
    'lib/Net/Amazon/S3/Request/PutPart.pm',
    'lib/Net/Amazon/S3/Request/SetBucketAccessControl.pm',
    'lib/Net/Amazon/S3/Request/SetObjectAccessControl.pm',
    't/00-compile.t',
    't/00use.t',
    't/01api.t',
    't/02client.t',
    't/03token.t',
    't/author-critic.t',
    't/author-eol.t',
    't/author-no-tabs.t',
    't/release-cpan-changes.t',
    't/release-dist-manifest.t',
    't/release-distmeta.t',
    't/release-meta-json.t',
    't/release-minimum-version.t',
    't/release-mojibake.t',
    't/release-pod-syntax.t',
    't/release-portability.t',
    't/release-synopsis.t',
    't/release-test-version.t',
    't/release-unused-vars.t'
);

notabs_ok($_) foreach @files;
done_testing;
