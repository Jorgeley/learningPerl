#!/usr/bin/perl
use Net::LDAP;
use Net::LDAP::Control::Sort;
use Net::LDAP::Util qw(ldap_error_text);

$ldap = Net::LDAP->new( 'ldaps://dev7.theemaillaundry.net:636' ) or die $@;
$dn = "ou=rules,ou=theemaillaundry.com,ou=customers,dc=theemaillaundry,dc=net";
#print 'Bind: ', $result = ldapassert( $ldap->bind(), "binding1" );
print 'Bind: ', $result = ldapassert( $ldap->bind($ldap, 'jinacio@dev7.theemaillaundry.net', 'mortes@2011'), "binding1" );
#print 'Bind: ', $result = ldapassert( $ldap->bind("uid=jinacio\@theemaillaundry.com,ou=users,ou=theemaillaundry.com,ou=customers,dc=theemaillaundry,dc=net", password=>'mortes@2011'), "binding2" );

$domain = '@theemaillaundry.com';
$sender = 'ralph@ngotwane.net';
$recip = 'jinacio@theemaillaundry.com';

@ou = split /@/, $domain;
print '#Domain: ',@ou[1];
print '#Sender -> Recipient: ',$sender,' -> ',$recip;

print 'Search 1: ', $s = ldapassert( $ldap->search(
					base => "ou=rules,ou=theemaillaundry.com,ou=customers,dc=theemaillaundry,dc=net",
					filter => '(objectClass=amavisRule)'
					),
				"searching1");

print 'Search 2: ', $search = 
			ldapassert( $ldap->search(
					base => 'ou=rules,ou=theemaillaundry.com,ou=customers,dc=theemaillaundry,dc=net',
			                filter => '(&(objectClass=amavisRule)(amavisRuleRecipient=',$recip,')(amavisRuleSender=',$sender,'))',
			                control => [ Net::LDAP::Control::Sort->new(order => 'amavisRulePreference' ) ]
                  			), 
				"searching2" );
foreach my $entry ($search->entries){
	print '#Entry:',$entry;
}


#auxiliar sub routine to get LDAP errors
sub ldapassert{
   my $msg = shift;
   my $action = shift;
   if ($msg->code){
      die 'Error [', $action, ']: ', ldap_error_text($msg->code), ' -> ', $msg->error;
   }
   return $msg;
}
