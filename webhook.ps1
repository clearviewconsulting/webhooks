$Uri = "https://h.app.wdesk.com/s/chains-triggers/webhook/XXXXXXXXXXXXX"
$Token = "Bearer XXXXXXXXXX"

$headers = @{
 'Content-Type'='application/json'
 'Authorization'= $Token
 }

$Body = @{
    'file_updated' = 'filename.csv'
    'file_baseName' = 'filename'
    'file_period' = 'FY23-Q3'
}

$JsonBody = $Body | ConvertTo-Json

 $Params = @{
    Method = "Post"
    Uri = $Uri
    Body = $JsonBody
    ContentType = "application/json"
 }
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls -bor [Net.SecurityProtocolType]::Tls11 -bor [Net.SecurityProtocolType]::Tls12

Invoke-RestMethod @Params -Headers $headers