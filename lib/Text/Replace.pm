#!perl
#
# Documentation, copyright and license is at the end of this file.
#
package  Text::Replace;

use 5.001;
use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE $FILE);
$VERSION = '1.1';
$DATE = '2003/09/19';
$FILE = __FILE__;

use vars qw(@ISA @EXPORT_OK);
require Exporter;
@ISA=('Exporter');
@EXPORT_OK = qw(&replace_variables);

#######
# Replace variables in template
#
sub replace_variables
{
    
    ######
    # This subroutine uses no object data; therefore,
    # drop any class or object.
    #
    shift @_ if UNIVERSAL::isa($_[0],__PACKAGE__);

    my ($template_p, $hash_p, $variables_p) = @_;

    unless( $variables_p ) {
        my @keys = sort keys %$hash_p;
        $variables_p = \@keys;
    }

    #########
    # Substitute selected content macros
    # 
    my $count = 1;
    while( $count ) {
        $count = 0;
        foreach my $variable (@$variables_p) {
            $count += $$template_p =~ s/([^\\])\$\{$variable\}/${1}$hash_p->{$variable}/g;
        }
    }
    $$template_p =~ s/\\\$/\$/g;  # unescape macro dollar

    1;
}


1


__END__

=head1 NAME
  
Test::STD::STDutil - generic functions that support Test::STDmaker

=head1 SYNOPSIS

 ########
 # Class Interface
 #
 use Text::Replace;
 $success = Text::Replace->replace_variables(\$template, \%variable_hash, \@variable);

 #######
 # Subroutine Interface
 #
 use Text::Replace qw(&replace_variables);
 $success = replace_variables(\$template, \%variable_hash, \@variable);

=head1 DESCRIPTION

Coming soon.

=head1 REQUIREMENTS

Coming soon.

=head1 DEMONSTRATION

 ~~~~~~ Demonstration overview ~~~~~

Perl code begins with the prompt

 =>

The selected results from executing the Perl Code 
follow on the next lines. For example,

 => 2 + 2
 4

 ~~~~~~ The demonstration follows ~~~~~

 =>     use File::Spec;

 =>     use File::Package;
 =>     my $fp = 'File::Package';

 =>     my $tr = 'Text::Replace';

 =>     my $loaded = '';
 =>     my $template = '';
 =>     my %variables = ();
 =>     my $expected = '';
 => my $errors = $fp->load_package($tr)
 => $errors
 ''

 =>  

 => $template = << 'EOF';
 => =head1 Title Page

 =>  Software Version Description

 =>  for

 =>  ${TITLE}

 =>  Revision: ${REVISION}

 =>  Version: ${VERSION}

 =>  Date: ${DATE}

 =>  Prepared for: ${END_USER} 

 =>  Prepared by:  ${AUTHOR}

 =>  Copyright: ${COPYRIGHT}

 =>  Classification: ${CLASSIFICATION}

 => =cut

 => EOF

 => %variables = (
 =>    TITLE => 'SVDmaker',
 =>    REVISION => '-',
 =>    VERSION => '0.01',
 =>    DATE => '1969/5/6',
 =>    END_USER => 'General Public',
 =>    AUTHOR => 'Software Diamonds',
 =>    COPYRIGHT => 'none',
 =>    CLASSIFICATION => 'none');

 => $tr->replace_variables( \$template, \%variables );
 => $template
 '=head1 Title Page

  Software Version Description

  for

  SVDmaker

  Revision: -

  Version: 0.01

  Date: 1969/5/6

  Prepared for: General Public 

  Prepared by:  Software Diamonds

  Copyright: none

  Classification: none

 =cut

 '

=head1 QUALITY ASSURANCE

Running the test script 'Replace.t' found in
the "Text-Replace-$VERSION.tar.gz" distribution file verifies
the requirements for this module.

All testing software and documentation
stems from the 
Software Test Description (L<STD|Docs::US_DOD::STD>)
program module 't::Text::Replace',
found in the distribution file 
"Text-Replace-$VERSION.tar.gz". 

The 't::Text::Replace' L<STD|Docs::US_DOD::STD> POD contains
a tracebility matix between the
requirements established above for this module, and
the test steps identified by a
'ok' number from running the 'Replace.t'
test script.

The t::Text::Replace' L<STD|Docs::US_DOD::STD>
program module '__DATA__' section contains the data 
to perform the following:

=over 4

=item *

to generate the test script 'Replace.t'

=item *

generate the tailored 
L<STD|Docs::US_DOD::STD> POD in
the 't::Text::Replace' module, 

=item *

generate the 'Replace.d' demo script, 

=item *

replace the POD demonstration section
herein with the demo script
'Replace.d' output, and

=item *

run the test script using Test::Harness
with or without the verbose option,

=back

To perform all the above, prepare
and run the automation software as 
follows:

=over 4

=item *

Install "Test_STDmaker-$VERSION.tar.gz"
from one of the respositories only
if it has not been installed:

=over 4

=item *

http://www.softwarediamonds/packages/

=item *

http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/

=back
  
=item *

manually place the script tmake.pl
in "Test_STDmaker-$VERSION.tar.gz' in
the site operating system executable 
path only if it is not in the 
executable path

=item *

place the 't::Text::Replace' at the same
level in the directory struture as the
directory holding the 'Text::Replace'
module

=item *

execute the following in any directory:

 tmake -test_verbose -replace -run -pm=t::Text::Replace

=back

=head1 NOTES

=head2 FILES

The installation of the
"Text-Replace-$VERSION.tar.gz" distribution file
installs the 'Docs::Site_SVD::Text_Replace'
L<SVD|Docs::US_DOD::SVD> program module.

The __DATA__ data section of the 
'Docs::Site_SVD::Text_Replace' contains all
the necessary data to generate the POD
section of 'Docs::Site_SVD::Text_Replace' and
the "Text-Replace-$VERSION.tar.gz" distribution file.

To make use of the 
'Docs::Site_SVD::Text_Replace'
L<SVD|Docs::US_DOD::SVD> program module,
perform the following:

=over 4

=item *

install "ExtUtils-SVDmaker-$VERSION.tar.gz"
from one of the respositories only
if it has not been installed:

=over 4

=item *

http://www.softwarediamonds/packages/

=item *

http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/

=back

=item *

manually place the script vmake.pl
in "ExtUtils-SVDmaker-$VERSION.tar.gz' in
the site operating system executable 
path only if it is not in the 
executable path

=item *

Make any appropriate changes to the
__DATA__ section of the 'Docs::Site_SVD::Text_Replace'
module.
For example, any changes to
'Text::Replace' will impact the
at least 'Changes' field.

=item *

Execute the following:

 vmake readme_html all -pm=Docs::Site_SVD::Text_Replace

=back

=head2 AUTHOR

The holder of the copyright and maintainer is

E<lt>support@SoftwareDiamonds.comE<gt>

=head2 COPYRIGHT NOTICE

Copyrighted (c) 2002 Software Diamonds

All Rights Reserved

=head2 BINDING REQUIREMENTS NOTICE

Binding requirements are indexed with the
pharse 'shall[dd]' where dd is an unique number
for each header section.
This conforms to standard federal
government practices, 490A (L<STD490A/3.2.3.6>).
In accordance with the License, Software Diamonds
is not liable for any requirement, binding or otherwise.

=head2 LICENSE

Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

=over 4

=item 1

Redistributions of source code must retain
the above copyright notice, this list of
conditions and the following disclaimer. 

=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

=back

SOFTWARE DIAMONDS, http::www.softwarediamonds.com,
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

=for html
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="EMAIL" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="COPYRIGHT" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>

=cut

### end of file ###