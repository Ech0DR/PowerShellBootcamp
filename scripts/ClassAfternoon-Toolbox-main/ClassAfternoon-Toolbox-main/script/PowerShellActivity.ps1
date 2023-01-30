Function ClearValues{
    $Data = Get-Content -path "C:\Users\DelRosarioJe\Documents\Test\Test\scripts\Activity\create.csv"
    $Data = $Data | Where {$_ -eq $Data[0]}
    $Data | Out-File -FilePath "C:\Users\DelRosarioJe\Documents\Test\Test\scripts\Activity\create4.csv" -Encoding ascii
}

Function CheckMissing{
    $Data = Import-Csv -Path "C:\Users\DelRosarioJe\Documents\Test\Test\scripts\Activity\create.csv"
    If($Data.Length -lt 1){
        Exit
    }
}