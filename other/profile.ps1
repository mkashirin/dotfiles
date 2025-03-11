set-psreadlineoption -Colors @{ "InlinePrediction" = "`e[38;5;238m" }
$PSStyle.Formatting.CustomTableHeaderLabel = "`e[32;1m"

function PrettyPrint-Json {
    param(
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        $json
    )
    $json | ConvertFrom-Json | ConvertTo-Json -Depth 100
}
