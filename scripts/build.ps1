#requires -Version 5
# Rebuild dist/gpt-image-2-prompting.skill from the gpt-image-2-prompting/ folder.
# Usage:  pwsh ./scripts/build.ps1   (or: powershell -File scripts\build.ps1)
#
# Entry names are written with forward slashes (ZIP-spec compliant) so the bundle
# matches a Unix `zip -r` build and loaders see a real folder tree, not flat names.
$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

$root = Split-Path -Parent $PSScriptRoot
$src  = Join-Path $root 'gpt-image-2-prompting'
$dist = Join-Path $root 'dist'
$out  = Join-Path $dist 'gpt-image-2-prompting.skill'

if (-not (Test-Path $src)) { throw "source folder not found: $src" }
New-Item -ItemType Directory -Force -Path $dist | Out-Null
if (Test-Path $out) { Remove-Item $out -Force }

$srcFull = (Resolve-Path $src).Path
$prefix  = Split-Path $srcFull -Leaf      # gpt-image-2-prompting

$zip = [System.IO.Compression.ZipFile]::Open($out, [System.IO.Compression.ZipArchiveMode]::Create)
try {
  Get-ChildItem -Path $srcFull -Recurse -File |
    Where-Object { $_.FullName -notmatch '__pycache__' -and $_.Name -ne '.DS_Store' } |
    Sort-Object FullName |
    ForEach-Object {
      $rel = $_.FullName.Substring($srcFull.Length).TrimStart('\', '/').Replace('\', '/')
      $entryName = "$prefix/$rel"
      $entry = $zip.CreateEntry($entryName, [System.IO.Compression.CompressionLevel]::Optimal)
      $in = [System.IO.File]::OpenRead($_.FullName)
      try {
        $es = $entry.Open()
        try { $in.CopyTo($es) } finally { $es.Dispose() }
      } finally { $in.Dispose() }
    }
} finally {
  $zip.Dispose()
}

Write-Host "Built $out"
