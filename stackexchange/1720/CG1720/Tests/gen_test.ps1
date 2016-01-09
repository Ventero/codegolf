function Create-Content {
@'
$Command = $args[0]
$Arguments = $args[1..($args.Count-1)]
$pass = 0
$count = 0

function Run-Test($Num, $Expected, $Test) {
    $result = $Test | &$Command @Arguments
    $global:count++
    if ($result -ne $Expected) {
        Write-Host -Foreground Red "Test $($Num): FAIL. Expected <$Expected>, got <$result>."
    } else {
        Write-Host -Foreground Green "Test $($Num): PASS"
        $global:pass++
    }
}

'@

    Get-ChildItem *.in | ForEach-Object -Begin {
        $num = 1
    } -Process {
        @"
# Test $num
Run-Test $num "$($_.Basename)" @"
$(@(Get-Content $_) -join "`n")
`"@

"@
        $num++
    }

    ""
    'Write-Host $pass/$count passed.'
}

Create-Content | Out-File -Encoding ASCII test.ps1