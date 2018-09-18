$Username = 'ae112416'
$Password = ''
$computername = 'LCAOSS023'
$pass = ConvertTo-SecureString -AsPlainText $Password -Force
$Cred = New-Object System.Management.Automation.PSCredential -ArgumentList $Username,$pass

Try
{
    invoke-command -computername $computername -credential $Cred -ScriptBlock -ErrorAction stop { Start-Process ""notepad.exe"" }
    #invoke-command -computername $computername -credential $Cred -ScriptBlock -ErrorAction stop { Start-Process ""D:\LMI.exe"" }
}

Catch
{
    write-Host "error"
}