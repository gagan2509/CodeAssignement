$ServerURL = "http://169.254.169.254"
$ServerEndpoint = $ServerURL + "/metadata/instance"


function Query-InstanceMetadata
{
    $uri = $ServerEndpoint + "?api-version=2021-02-01"
    $vmmetadata = Invoke-RestMethod -Method GET -NoProxy -Uri $uri -Headers @{"Metadata"="True"}
    return $vmmetadata
}

$result = Query-InstanceMetadata
$result | ConvertTo-JSON -Depth 99

# http://169.254.169.254/metadata/instance?api-version=2021-02-01 -> Get the complete instance details

# http://169.254.169.254/metadata/instance/compute?api-version=2021-02-01 -> Get the compute details

# http://169.254.169.254/metadata/instance/compute/name?api-version=2021-02-01 -> Gets VM Name