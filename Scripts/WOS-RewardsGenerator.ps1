#Script﻿
$Total=Read-Host "How many to give out?"

$R4s = Read-Host "How many R4s"

$R3s = Read-Host "How many R3s"

$R2s = Read-Host "How many R2s"

$LowerSum = $Total - 20

Write-Host "Menu:"
Write-Host "1. Give limit 10"
Write-Host "2. Give limit 4"
Write-Host "3. Give limit 15"
$choice = Read-Host "Enter your choice"

switch ($choice) {
    "1" {
        $Int = 1
        $NumberTest = $False
        While (($NumberTest -eq $False) -and ($Int -lt 120)) {
            $R4sNum = Get-Random -Minimum 5 -Maximum 10
            $R3sNum = Get-Random -Minimum 2 -Maximum 8
            $R2sNum = Get-Random -Minimum 1 -Maximum 6

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
            Else {
                #Write-Host $Sum
            }
        }
    }
    "2" {
        $Int = 1
        $NumberTest = $False
        While (($NumberTest -eq $False) -and ($Int -lt 120)) {
            $R4sNum = Get-Random -Minimum 1 -Maximum 3
            $R3sNum = Get-Random -Minimum 1 -Maximum 2
            $R2sNum = Get-Random -Minimum 1 -Maximum 2

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
            Else {
                #Write-Host $Sum
            }
        }
    }
    "3" {
        $Int = 1
        $NumberTest = $False
        While (($NumberTest -eq $False) -and ($Int -lt 120)) {
            $R4sNum = Get-Random -Minimum 8 -Maximum 15
            $R3sNum = Get-Random -Minimum 3 -Maximum 9
            $R2sNum = Get-Random -Minimum 1 -Maximum 6

            $R4sTotal = [int]$R4s * [int]$R4sNum
            $R3sTotal = [int]$R3s * [int]$R3sNum
            $R2sTotal = [int]$R2s * [int]$R2sNum

            $Sum = $R4sTotal + $R3sTotal + $R2sTotal5
            $Int++

            If ($Sum -lt $Total -and $Sum -gt $LowerSum) {
                Write-Host "The Sum is $Sum"
                Write-Host "R4s get $R4sNum"
                Write-Host "R3s get $R3sNum"
                Write-Host "R2s get $R2sNum"
                $NumberTest = $True
            }
            Else {
                #Write-Host $Sum
            }
        }
    }
}