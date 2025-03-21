$Total = Read-Host "How many to give out?"

$R4s = Get-Random -Minimum 3 -Maximum 6 = Read-Host "How many R4s"

$R3s = Read-Host "How many R3s"

$R2s = Read-Host "How many R2s"

$Int = 1

$NumberTest = $False

$LowerSum = $Total - 10

While (($NumberTest -eq $False) -and ($Int -lt 120)) {

    $R4sNum = Get-Random -Minimum 6 -Maximum 9
    $R3sNum = Get-Random -Minimum 3 -Maximum 7
    $R2sNum = Get-Random -Minimum 1 -Maximum 5

    $R4sTotal = [int]$R4s * [int]$R4sNum
    $R3sTotal = [int]$R3s * [int]$R3sNum
    $R2sTotal = [int]$R2s * [int]$R2sNum

    $Sum = $R4sTotal + $R3sTotal + $R2sTotal

    $Int++

    If ($Sum -lt $Total -and $Sum -gt $LowerSum) {
        Write-Host "The Sum is $Sum"
        Write-Host "R4s get $R4sNum"
        Write-Host "R3s get $R3sNum"
        Write-Host "R2s get $R2sNum"
        $NumberTest = $True
    }
}