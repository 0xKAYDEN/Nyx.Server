$path = "src/Nyx/Game/Attacking/Handle.cs"
$s = [System.IO.File]::ReadAllText($path, [System.Text.Encoding]::UTF8)

$old = "                        Database.SpellInformation spell = null;" + [Environment]::NewLine +
"                        if (shuriken)" + [Environment]::NewLine +
"                            spell = Database.SpellTable.SpellInformations[6010][0];" + [Environment]::NewLine +
"                        else" + [Environment]::NewLine +
"                        {" + [Environment]::NewLine +
"                            byte choselevel = 0;" + [Environment]::NewLine +
"                            if (spellID == SpellID)" + [Environment]::NewLine +
"                                choselevel = attacker.Owner.Spells[spellID].Level;" + [Environment]::NewLine +
"                            if (Database.SpellTable.SpellInformations[SpellID] != null && !Database.SpellTable.SpellInformations[SpellID].ContainsKey(choselevel))" + [Environment]::NewLine +
"                                choselevel = (byte)(Database.SpellTable.SpellInformations[SpellID].Count - 1);" + [Environment]::NewLine +
"" + [Environment]::NewLine +
"                            spell = Database.SpellTable.SpellInformations[SpellID][choselevel];" + [Environment]::NewLine +
"                        }"

$new = "                        Database.SpellInformation spell = null;" + [Environment]::NewLine +
"                        if (shuriken)" + [Environment]::NewLine +
"                        {" + [Environment]::NewLine +
"                            var shurikenDict = Database.SpellTable.SpellInformations.ContainsKey(6010)" + [Environment]::NewLine +
"                                ? Database.SpellTable.SpellInformations[6010] : null;" + [Environment]::NewLine +
"                            if (shurikenDict != null && shurikenDict.Count > 0)" + [Environment]::NewLine +
"                                spell = shurikenDict[0];" + [Environment]::NewLine +
"                        }" + [Environment]::NewLine +
"                        else" + [Environment]::NewLine +
"                        {" + [Environment]::NewLine +
"                            byte choselevel = 0;" + [Environment]::NewLine +
"                            if (spellID == SpellID && attacker.Owner.Spells.ContainsKey(spellID))" + [Environment]::NewLine +
"                                choselevel = attacker.Owner.Spells[spellID].Level;" + [Environment]::NewLine +
"" + [Environment]::NewLine +
"                            var spellDict = Database.SpellTable.SpellInformations.ContainsKey(SpellID)" + [Environment]::NewLine +
"                                ? Database.SpellTable.SpellInformations[SpellID] : null;" + [Environment]::NewLine +
"                            if (spellDict != null && spellDict.Count > 0)" + [Environment]::NewLine +
"                            {" + [Environment]::NewLine +
"                                if (!spellDict.ContainsKey(choselevel))" + [Environment]::NewLine +
"                                    choselevel = (byte)(spellDict.Count - 1);" + [Environment]::NewLine +
"                                spell = spellDict[choselevel];" + [Environment]::NewLine +
"                            }" + [Environment]::NewLine +
"                        }"

if ($s.Contains($old)) {
    $s = $s.Replace($old, $new, 1)
    [System.IO.File]::WriteAllText($path, $s, [System.Text.Encoding]::UTF8)
    Write-Host "OK: replaced spell-resolution block null-safely"
} else {
    Write-Host "ERROR: old block not found verbatim"
}
