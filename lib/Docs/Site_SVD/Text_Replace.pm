#!perl
#
# The copyright notice and plain old documentation (POD)
# are at the end of this file.
#
package  Docs::Site_SVD::Text_Replace;

use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE $FILE );
$VERSION = '0.03';
$DATE = '2003/09/15';
$FILE = __FILE__;

use vars qw(%INVENTORY);
%INVENTORY = (
    'lib/Docs/Site_SVD/Text_Replace.pm' => [qw(0.03 2003/09/15), 'revised 0.02'],
    'MANIFEST' => [qw(0.03 2003/09/15), 'generated, replaces 0.02'],
    'Makefile.PL' => [qw(0.03 2003/09/15), 'generated, replaces 0.02'],
    'README' => [qw(0.03 2003/09/15), 'generated, replaces 0.02'],
    'lib/Text/Replace.pm' => [qw(1.09 2003/07/27), 'unchanged'],
    't/Text/Replace.d' => [qw(0.01 2003/07/27), 'unchanged'],
    't/Text/Replace.pm' => [qw(0.01 2003/07/05), 'unchanged'],
    't/Text/Replace.t' => [qw(0.04 2003/09/15), 'revised 0.03'],
    'tlib/File/Package.pm' => [qw(1.12 2003/09/15), 'revised 1.1'],
    'tlib/Test/Tech.pm' => [qw(1.13 2003/09/15), 'revised 1.11'],

);

########
# The ExtUtils::SVDmaker module uses the data after the __DATA__ 
# token to automatically generate this file.
#
# Don't edit anything before __DATA_. Edit instead
# the data after the __DATA__ token.
#
# ANY CHANGES MADE BEFORE the  __DATA__ token WILL BE LOST
#
# the next time ExtUtils::SVDmaker generates this file.
#
#



=head1 Title Page

 Software Version Description

 for

 Text::Replace - Replace variables in templates

 Revision: B

 Version: 0.03

 Date: 2003/09/15

 Prepared for: General Public 

 Prepared by:  SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>

 Copyright: copyright � 2003 Software Diamonds

 Classification: NONE

=head1 1.0 SCOPE

This paragraph identifies and provides an overview
of the released files.

=head2 1.1 Identification

This release,
identified in L<3.2|/3.2 Inventory of software contents>,
is a collection of Perl modules that
extend the capabilities of the Perl language.

=head2 1.2 System overview

The "L<Text::Replace|Text::Replace>" module, 
extends the Perl language (the system).

The US DOD 2167A software development standard creates and cites a
fully decent number of Data Item Descriptions (DID). 
A DID and US DOD 490A, Specification Practices, specify in
great detail the paragraph number, headings and the information
required for each paragraph in the document govern by the DID.

The usually approach is for suppliers of the DIDs to set up templates
and fill in the template with the missing information to complete the
DID document.

Different organizations use different degrees of automation. 
Some will have hard copy templates. Some will use word processor
templates. Others will use Visual Basic to merge database information
into a template. 

The methods in this module support a Perl automation of this processes
by merging a hash of variables with a template.

Replacement of variables in a template has many others uses beside
filling out technical document templates such as merging mailing list
with emails or form letters.

=head2 1.3 Document overview.

This document releases Text::Replace version 0.03
providing a description of the inventory, installation
instructions and other information necessary to
utilize and track this release.

=head1 3.0 VERSION DESCRIPTION

All file specifications in this SVD
use the Unix operating
system file specification.

=head2 3.1 Inventory of materials released.

This document releases the file found
at the following repository(s):

   http://www.softwarediamonds/packages/Text-Replace-0.03
   http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/Text-Replace-0.03


Restrictions regarding duplication and license provisions
are as follows:

=over 4

=item Copyright.

copyright � 2003 Software Diamonds

=item Copyright holder contact.

 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>

=item License.

Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

=over 4

=item 1

Redistributions of source code, modified or unmodified
must retain the above copyright notice, this list of
conditions and the following disclaimer. 

=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

=back

SOFTWARE DIAMONDS, http://www.SoftwareDiamonds.com,
PROVIDES THIS SOFTWARE 
'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
SHALL SOFTWARE DIAMONDS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL,EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE,DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING USE OF THIS SOFTWARE, EVEN IF
ADVISED OF NEGLIGENCE OR OTHERWISE) ARISING IN
ANY WAY OUT OF THE POSSIBILITY OF SUCH DAMAGE.

=back

=head2 3.2 Inventory of software contents

The content of the released, compressed, archieve file,
consists of the following files:

 file                                                         version date       comment
 ------------------------------------------------------------ ------- ---------- ------------------------
 lib/Docs/Site_SVD/Text_Replace.pm                            0.03    2003/09/15 revised 0.02
 MANIFEST                                                     0.03    2003/09/15 generated, replaces 0.02
 Makefile.PL                                                  0.03    2003/09/15 generated, replaces 0.02
 README                                                       0.03    2003/09/15 generated, replaces 0.02
 lib/Text/Replace.pm                                          1.09    2003/07/27 unchanged
 t/Text/Replace.d                                             0.01    2003/07/27 unchanged
 t/Text/Replace.pm                                            0.01    2003/07/05 unchanged
 t/Text/Replace.t                                             0.04    2003/09/15 revised 0.03
 tlib/File/Package.pm                                         1.12    2003/09/15 revised 1.1
 tlib/Test/Tech.pm                                            1.13    2003/09/15 revised 1.11


=head2 3.3 Changes

Changes are as follows:

=over 4

=item Test-STD-STDutil-0.01

=over 4

=item Rename Module

At 02:44 AM 6/14/2003 +0200, Max Maischein wrote: A second thing
that I would like you to reconsider is the naming of
"Test::TestUtil" respectively "Test::Tech" - neither of those is
descriptive of what the routines actually do or what the module
implements. I would recommend renaming them to something closer to
your other modules, maybe "Test::SVDMaker::Util" and
"Test::SVDMaker::Tech", as some routines do not seem to be specific
to the Test::-suite but rather general (format_array_table). Some
parts (the "scrub" routines) might even better live in another
module namespace, "Test::Util::ScrubData" or something like that.

Broke away the template and table routines from Test::TestUtil
created this module Test::STD::STDutil.

=back

=item Test-STD-STDutil-0.02

Use the new modules from the break-up of the "File::FileUtil" module

=item Text-Replace-0.01

Broke up the "Test::STD::STDutil" module and moved it to more
appropriate places in the high level directory tree.

=item Text-Replace-0.02

Change the test so that test support program modules resides in distribution
directory tlib directory instead of the lib directory. 
Because they are no longer in the lib directory, 
test support files will not be installed as a pre-condition for the 
test of this module.
The test of this module will precede immediately.
The test support files in the tlib directory will vanish after
the installtion.

=item Text-Replace-0.03

Recreate distribution file 
with Archive::TarGzip 0.02 that uses mode 777 for directories instead of 666. Started to get
emails from Unix installers about untar not being able to change to
a directory with mode of 666.

=back

=head2 3.4 Adaptation data.

This installation requires that the installation site
has the Perl programming language installed.
There are no other additional requirements or tailoring needed of 
configurations files, adaptation data or other software needed for this
installation particular to any installation site.

=head2 3.5 Related documents.

There are no related documents needed for the installation and
test of this release.

=head2 3.6 Installation instructions.

Instructions for installation, installation tests
and installation support are as follows:

=over 4

=item Installation Instructions.

To installed the release file, use the CPAN module in the Perl release
or the INSTALL.PL script at the following web site:

 http://packages.SoftwareDiamonds.com

Follow the instructions for the the chosen installation software.

The distribution file is at the following respositories:

   http://www.softwarediamonds/packages/Text-Replace-0.03
   http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/Text-Replace-0.03


=item Prerequistes.

 None.


=item Security, privacy, or safety precautions.

None.

=item Installation Tests.

Most Perl installation software will run the following test script(s)
as part of the installation:

 t/Text/Replace.t

=item Installation support.

If there are installation problems or questions with the installation
contact

 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>

=back

=head2 3.7 Possible problems and known errors

There is still much work needed to ensure the quality 
of this module as follows:

=over 4

=item *

State the functional requirements for each method 
including not only the GO paths but also what to
expect for the NOGO paths

=item *

All the tests are GO path tests. Should add
NOGO tests.

=item *

Add the requirements addressed as I<# R: >
comment to the tests

=item *

Write a program to build a matrix to trace
test step to the requirements and vice versa by
parsing the I<# R: > comments.
Automatically insert the matrix in the
Test::TestUtil POD.

=back

=head1 4.0 NOTES

The following are useful acronyms:

=over 4

=item .d

extension for a Perl demo script file

=item .pm

extension for a Perl Library Module

=item .t

extension for a Perl test script file

=back

=head1 2.0 SEE ALSO

=over 4

=item L<Text::Replace|Text::Replace> 

=item L<Docs::US_DOD::SVD|Docs::US_DOD::SVD> 

=back

=for html
<hr>
<p><br>
<!-- BLK ID="PROJECT_MANAGEMENT" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>

=cut

1;

__DATA__

DISTNAME: Text-Replace^
REPOSITORY_DIR: packages^

VERSION : 0.03^
FREEZE: 1^
PREVIOUS_DISTNAME:  ^
PREVIOUS_RELEASE: 0.02^
REVISION: B^

AUTHOR  : SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>^
ABSTRACT: Replace variables in templates^
TITLE   : Text::Replace - Replace variables in templates^
END_USER: General Public^
COPYRIGHT: copyright � 2003 Software Diamonds^
CLASSIFICATION: NONE^
TEMPLATE:  ^
CSS: help.css^
SVD_FSPEC: Unix^

REPOSITORY: 
  http://www.softwarediamonds/packages/
  http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/
^

COMPRESS: gzip^
COMPRESS_SUFFIX: gz^

RESTRUCTURE:  ^
CHANGE2CURRENT:  ^

AUTO_REVISE: 
lib/Text/Replace.pm
t/Text/Replace.*
lib/File/Package.pm => tlib/File/Package.pm
lib/Test/Tech.pm => tlib/Test/Tech.pm
^

TESTS: t/Text/Replace.t^
EXE_FILES:  ^

CHANGES:
Changes are as follows:

\=over 4

\=item Test-STD-STDutil-0.01

\=over 4

\=item Rename Module

At 02:44 AM 6/14/2003 +0200, Max Maischein wrote: A second thing
that I would like you to reconsider is the naming of
"Test::TestUtil" respectively "Test::Tech" - neither of those is
descriptive of what the routines actually do or what the module
implements. I would recommend renaming them to something closer to
your other modules, maybe "Test::SVDMaker::Util" and
"Test::SVDMaker::Tech", as some routines do not seem to be specific
to the Test::-suite but rather general (format_array_table). Some
parts (the "scrub" routines) might even better live in another
module namespace, "Test::Util::ScrubData" or something like that.

Broke away the template and table routines from Test::TestUtil
created this module Test::STD::STDutil.

\=back

\=item Test-STD-STDutil-0.02

Use the new modules from the break-up of the "File::FileUtil" module

\=item Text-Replace-0.01

Broke up the "Test::STD::STDutil" module and moved it to more
appropriate places in the high level directory tree.

\=item Text-Replace-0.02

Change the test so that test support program modules resides in distribution
directory tlib directory instead of the lib directory. 
Because they are no longer in the lib directory, 
test support files will not be installed as a pre-condition for the 
test of this module.
The test of this module will precede immediately.
The test support files in the tlib directory will vanish after
the installtion.

\=item Text-Replace-0.03

Recreate distribution file 
with Archive::TarGzip 0.02 that uses mode 777 for directories instead of 666. Started to get
emails from Unix installers about untar not being able to change to
a directory with mode of 666.

\=back

^

DOCUMENT_OVERVIEW:
This document releases ${NAME} version ${VERSION}
providing a description of the inventory, installation
instructions and other information necessary to
utilize and track this release.
^

CAPABILITIES:
The "L<Text::Replace|Text::Replace>" module, 
extends the Perl language (the system).

The US DOD 2167A software development standard creates and cites a
fully decent number of Data Item Descriptions (DID). 
A DID and US DOD 490A, Specification Practices, specify in
great detail the paragraph number, headings and the information
required for each paragraph in the document govern by the DID.

The usually approach is for suppliers of the DIDs to set up templates
and fill in the template with the missing information to complete the
DID document.

Different organizations use different degrees of automation. 
Some will have hard copy templates. Some will use word processor
templates. Others will use Visual Basic to merge database information
into a template. 

The methods in this module support a Perl automation of this processes
by merging a hash of variables with a template.

Replacement of variables in a template has many others uses beside
filling out technical document templates such as merging mailing list
with emails or form letters.
^

PROBLEMS:
There is still much work needed to ensure the quality 
of this module as follows:

\=over 4

\=item *

State the functional requirements for each method 
including not only the GO paths but also what to
expect for the NOGO paths

\=item *

All the tests are GO path tests. Should add
NOGO tests.

\=item *

Add the requirements addressed as I<# R: >
comment to the tests

\=item *

Write a program to build a matrix to trace
test step to the requirements and vice versa by
parsing the I<# R: > comments.
Automatically insert the matrix in the
Test::TestUtil POD.

\=back

^

LICENSE:
Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

\=over 4

\=item 1

Redistributions of source code, modified or unmodified
must retain the above copyright notice, this list of
conditions and the following disclaimer. 

\=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

\=back

SOFTWARE DIAMONDS, http://www.SoftwareDiamonds.com,
PROVIDES THIS SOFTWARE 
'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
SHALL SOFTWARE DIAMONDS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL,EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE,DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING USE OF THIS SOFTWARE, EVEN IF
ADVISED OF NEGLIGENCE OR OTHERWISE) ARISING IN
ANY WAY OUT OF THE POSSIBILITY OF SUCH DAMAGE.
^


INSTALLATION:
To installed the release file, use the CPAN module in the Perl release
or the INSTALL.PL script at the following web site:

 http://packages.SoftwareDiamonds.com

Follow the instructions for the the chosen installation software.

The distribution file is at the following respositories:

${REPOSITORY}
^

SUPPORT: 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>^

NOTES:
The following are useful acronyms:

\=over 4

\=item .d

extension for a Perl demo script file

\=item .pm

extension for a Perl Library Module

\=item .t

extension for a Perl test script file

\=back

^

SEE_ALSO: 
\=over 4

\=item L<Text::Replace|Text::Replace> 

\=item L<Docs::US_DOD::SVD|Docs::US_DOD::SVD> 

\=back
^

HTML:
<hr>
<p><br>
<!-- BLK ID="PROJECT_MANAGEMENT" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>
^
~-~


