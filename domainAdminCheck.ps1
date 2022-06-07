echo asimmisirli.com

#that line will define static domain admin members
#statik olarak domain admin üye grupları burada tanımlanır
$domain_admins_static =@('Administrator','tester1')

#that line will get domain admin members each run time

$domain_admin = get-adgroupmember 'domain admins'
$swaparrayList = New-Object -TypeName 'System.Collections.ArrayList';
$current_domain_Admins_sum = $domain_admin.Count
#converttoArray
for (($i=0); $i -lt $current_domain_Admins_sum; $i++){
 $swaparrayList.Add($domain_admin[$i]['SamAccountName'])
  
}

echo "Domain admin grup resmi üyeleri:  $domain_admins_static `n"

if($domain_admins_static.Count -ne $current_domain_Admins_sum){
    $suspect_account = Compare-Object $domain_admins_static -DifferenceObject $swaparrayList
    echo "şüpheli kullanıcı ismi: "$suspect_account.InputObject
    $tarih = Get-Date
    "Suspect Username: "+$suspect_account.InputObject+" Suspect Date: "+$tarih >>activeDirectoyLogs.txt
    Remove-ADGroupMember -Identity 'domain admins' -Members $suspect_account.InputObject -Confirm:$false 
    echo "Şüpheli Kullanıcı Domain Admin Grubundan silinmiştir. `n"
}


