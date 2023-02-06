$Data = Get-Content -path "C:\Users\DelRosarioJe\Documents\Test\Test\scripts\Activity\create.csv"
Function ClearValues{
    $Data = $Data | Where {$_ -eq $Data[0]}
    $Data | Out-File -FilePath "C:\Users\DelRosarioJe\Documents\Test\Test\scripts\Activity\create.csv" -Encoding ascii
}

$Data1 = Import-Csv -Path "C:\Users\DelRosarioJe\Documents\Test\Test\scripts\Activity\create.csv"
Function CheckMissing{
    If($Data.Length -lt 1){
        Exit
    }
    Else{
        Continue
    }
}

