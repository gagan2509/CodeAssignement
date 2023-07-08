Function Get-ProblemValue {
    Param(
        [parameter (Mandatory = $true)]
        $ChallangeObject,
        [parameter (Mandatory = $true)]
        $ChallangeKey
    )

    try 
    {
        $First,$Remaining = $ChallangeKey.Split("/")
        if($Rest) 
        { 
            return Find-ProblemValue -ProblemObject $ChallangeObject.$First -ProblemKey $Remaining 
        }
        else 
        {
            return $ChallangeObject.$First 
        }
    }
    catch
    {
        Write-Output "Not Found"
        $ErrorMessage = "Get-ProblemValue: $($_.Exception.Message)"
        Throw $ErrorMessage
    }
}


$Object = [PSCustomObject]@{ Person = [PSCustomObject]@{ FirstName = �Gagan�; LastName = �Rajpal�; Address = [PSCustomObject]@{ City = �Gurugram�; State = 'Haryana'}} }
$Key = "Person/Address/State"
Get-ProblemValue -ChallangeObject $Object -ChallangeKey $Key
