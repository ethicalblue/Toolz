$filepath = "C:\Users\x\Desktop\sample.bin";
$md5 = Get-FileHash $filepath -Algorithm MD5 | Select -ExpandProperty "Hash";
$sha1 = Get-FileHash $filepath -Algorithm SHA1 | Select -ExpandProperty "Hash";
$sha256 = Get-FileHash $filepath -Algorithm SHA256 | Select -ExpandProperty "Hash";
$sha384 = Get-FileHash $filepath -Algorithm SHA384 | Select -ExpandProperty "Hash";
$sha512 = Get-FileHash $filepath -Algorithm SHA512 | Select -ExpandProperty "Hash";
$filename = [System.IO.Path]::GetFileName($filepath);
Write-Host "Calculating hashes... ($filename)";
Write-Host "SHA-256:";
Write-Host "$sha256";
Write-Host "SHA-384:";
Write-Host "$sha384";
Write-Host "SHA-512:";
Write-Host "$sha512";
Write-Host "Calculating deprecated hashes...";
Write-Host "MD5:";
Write-Host "$md5";
Write-Host "SHA-1:";
Write-Host "$sha1";
Write-Host "The algorithms MD5 and SHA-1 are no longer considered secure. These algorithms should only be used for simple modification checks and should not be used to create hash values used for tampering checks.";