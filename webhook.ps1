$Uri = ""
$Token = "Bearer "

$headers = @{
 'Content-Type'='application/json'
 'Authorization'= $Token
 }
$Body = @{ }

$JsonBody = $Body | ConvertTo-Json

 $Params = @{
    Method = "Post"
    Uri = $Uri
    Body = $JsonBody
    ContentType = "application/json"
 }
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls -bor [Net.SecurityProtocolType]::Tls11 -bor [Net.SecurityProtocolType]::Tls12

Invoke-RestMethod @Params -Headers $headers