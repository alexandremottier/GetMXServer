Write-Host -ForegroundColor Yellow "...::: Récupération des enregistrements MX pour un domaine DNS :::..."

while(0 -ne 1)
{
    $domain = Read-Host "Entrez le nom du domaine à vérifier"
    Resolve-DnsName -Name $domain -Type MX | sort Preference -desc | ft Name,NameExchange,Preference
   # $publicip = (Resolve-DnsName -Name $domain).Address
   # $ShodanLink = "https://api.shodan.io/shodan/host/" + $publicip + "?key=9r6vVczYqYGR9F3WADASttMPt6fqK2Mm"
   # $Shodan = Invoke-RestMethod -uri $ShodanLink
   # $operateur = $Shodan.isp
   # Write-Host -ForegroundColor Yellow "L'opérateur télécom de l'IP $publicip ($domain) est $operateur ."
}