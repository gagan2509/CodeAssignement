# How the code works 

The Azure Instance Metadata Service (IMDS) provides information about currently running virtual machine instances. 

IMDS is available for running instances of virtual machines (VMs) and scale set instances.

IMDS is a REST API that's available at a well-known, non-routable IP address (169.254.169.254). We can only access it from within the VM.

We directly can use IMDS rest api to fetch the instance metadata.

Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | ConvertTo-Json -Depth 64

Reference : https://www.youtube.com/watch?v=IGORGQi3ofA&ab_channel=MicrosoftAzure 

