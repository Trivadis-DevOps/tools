$pathToIDE = ""
$collection = ""
$project = ""
$path = ""

cd $pathToIDE

$wits = .\witadmin listwitd /collection:$collection /p:$project
Foreach ($wit IN $wits)
{
    $wits = .\witadmin exportwitd  /collection:$collection /p:$project /n:$wit /f:"$path\$($wit).xml"
}
