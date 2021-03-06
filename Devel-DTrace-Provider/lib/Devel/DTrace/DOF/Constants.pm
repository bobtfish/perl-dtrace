package Devel::DTrace::DOF::Constants;
use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader;

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(
					  DOF_DOFHDR_SIZE
					  DOF_SECHDR_SIZE
					  DOF_PROBE_SIZE
					  DOF_PRARGS_SIZE
					  DOF_PROFFS_SIZE
					  DOF_PRENOFFS_SIZE
					  DOF_PROVIDER_SIZE
					  
					  DOF_ENCODE_LSB
					  DOF_ENCODE_MSB
					  DOF_ENCODE_NATIVE
					  DOF_ENCODE_NONE
					  DOF_FL_VALID
					  DOF_ID_DIFIREG
					  DOF_ID_DIFTREG
					  DOF_ID_DIFVERS
					  DOF_ID_ENCODING
					  DOF_ID_MAG0
					  DOF_ID_MAG1
					  DOF_ID_MAG2
					  DOF_ID_MAG3
					  DOF_ID_MODEL
					  DOF_ID_PAD
					  DOF_ID_SIZE
					  DOF_ID_VERSION
					  DOF_MAG_MAG0
					  DOF_MAG_MAG1
					  DOF_MAG_MAG2
					  DOF_MAG_MAG3
					  DOF_MAG_STRLEN
					  DOF_MODEL_ILP32
					  DOF_MODEL_LP64
					  DOF_MODEL_NATIVE
					  DOF_MODEL_NONE
					  DOF_RELO_NONE
					  DOF_RELO_SETX
					  DOF_SECF_LOAD
					  DOF_SECIDX_NONE
					  DOF_SECT_ACTDESC
					  DOF_SECT_COMMENTS
					  DOF_SECT_DIF
					  DOF_SECT_DIFOHDR
					  DOF_SECT_ECBDESC
					  DOF_SECT_INTTAB
					  DOF_SECT_KRELHDR
					  DOF_SECT_NONE
					  DOF_SECT_OPTDESC
					  DOF_SECT_PRARGS
					  DOF_SECT_PRENOFFS
					  DOF_SECT_PREXPORT
					  DOF_SECT_PROBEDESC
					  DOF_SECT_PROBES
					  DOF_SECT_PROFFS
					  DOF_SECT_PROVIDER
					  DOF_SECT_RELTAB
					  DOF_SECT_SOURCE
					  DOF_SECT_STRTAB
					  DOF_SECT_TYPTAB
					  DOF_SECT_URELHDR
					  DOF_SECT_UTSNAME
					  DOF_SECT_VARTAB
					  DOF_SECT_XLEXPORT
					  DOF_SECT_XLIMPORT
					  DOF_SECT_XLMEMBERS
					  DOF_SECT_XLTAB
					  DOF_STRIDX_NONE
					  DOF_VERSION
					  DOF_VERSION_1
					  DOF_VERSION_2
					  DOF_VERSION_3
					  DTRACE_STABILITY_EVOLVING
					  DTRACE_STABILITY_PRIVATE
				 ) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
			DOF_DOFHDR_SIZE
			DOF_SECHDR_SIZE
			DOF_PROBE_SIZE
			DOF_PRARGS_SIZE
			DOF_PROFFS_SIZE
			DOF_PRENOFFS_SIZE
			DOF_PROVIDER_SIZE

			DOF_ENCODE_LSB
			DOF_ENCODE_MSB
			DOF_ENCODE_NATIVE
			DOF_ENCODE_NONE
			DOF_FL_VALID
			DOF_ID_DIFIREG
			DOF_ID_DIFTREG
			DOF_ID_DIFVERS
			DOF_ID_ENCODING
			DOF_ID_MAG0
			DOF_ID_MAG1
			DOF_ID_MAG2
			DOF_ID_MAG3
			DOF_ID_MODEL
			DOF_ID_PAD
			DOF_ID_SIZE
			DOF_ID_VERSION
			DOF_MAG_MAG0
			DOF_MAG_MAG1
			DOF_MAG_MAG2
			DOF_MAG_MAG3
			DOF_MAG_STRLEN
			DOF_MODEL_ILP32
			DOF_MODEL_LP64
			DOF_MODEL_NATIVE
			DOF_MODEL_NONE
			DOF_RELO_NONE
			DOF_RELO_SETX
			DOF_SECF_LOAD
			DOF_SECIDX_NONE
			DOF_SECT_ACTDESC
			DOF_SECT_COMMENTS
			DOF_SECT_DIF
			DOF_SECT_DIFOHDR
			DOF_SECT_ECBDESC
			DOF_SECT_INTTAB
			DOF_SECT_KRELHDR
			DOF_SECT_NONE
			DOF_SECT_OPTDESC
			DOF_SECT_PRARGS
			DOF_SECT_PRENOFFS
			DOF_SECT_PREXPORT
			DOF_SECT_PROBEDESC
			DOF_SECT_PROBES
			DOF_SECT_PROFFS
			DOF_SECT_PROVIDER
			DOF_SECT_RELTAB
			DOF_SECT_SOURCE
			DOF_SECT_STRTAB
			DOF_SECT_TYPTAB
			DOF_SECT_URELHDR
			DOF_SECT_UTSNAME
			DOF_SECT_VARTAB
			DOF_SECT_XLEXPORT
			DOF_SECT_XLIMPORT
			DOF_SECT_XLMEMBERS
			DOF_SECT_XLTAB
			DOF_STRIDX_NONE
			DOF_VERSION
			DOF_VERSION_1
			DOF_VERSION_2
			DOF_VERSION_3
			DTRACE_STABILITY_EVOLVING
			DTRACE_STABILITY_PRIVATE
	       );

sub AUTOLOAD {
    # This AUTOLOAD is used to 'autoload' constants from the constant()
    # XS function.

    my $constname;
    our $AUTOLOAD;
    ($constname = $AUTOLOAD) =~ s/.*:://;
    croak "Devel::DTrace::DOF::Constants::constant not defined" if $constname eq 'constant';
    my ($error, $val) = constant($constname);
    if ($error) { croak $error; }
    {
	no strict 'refs';
	*$AUTOLOAD = sub { $val };
    }
    goto &$AUTOLOAD;
}

1;
__END__
