
    
    $domain = 'demo\user'
	$pass = ConvertTo-SecureString -String 'password' -AsPlainText -Force
	$user = New-Object System.Management.Automation.pscredential -ArgumentList $domain, $pass
	$007 = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://mail.damo.server/powershell/ -Authentication Kerberos -Credential $User
	Import-PSSession $007 -Verbose 
    Write-Host "_____________○○○○○○○○○______________MailboxDatabase -Status______________○○○○○○○○○_________________________" -foregroundColor Cyan 
    Get-MailboxDatabase -Status | select Name,mounted,mountedonserver, LastFullBackup,DatabaseSize |ft -auto 
    Write-Host "_____________○○○○○○○○○______________MailboxDatabaseCopyStatu_____________○○○○○○○○○_________________________" -foregroundColor Cyan 
    Get-MailboxDatabaseCopyStatus * | ft -auto 
    Write-Host "             ♥                      Hello ☺ Mr. R0b0t ☺, Here is Exchange Console for you.        ♥         " -foregroundColor Cyan
