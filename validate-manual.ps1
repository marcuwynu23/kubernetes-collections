$dirs = Get-ChildItem -Directory |
  Where-Object { $_.Name -ne ".github" } |
  Where-Object {
    Get-ChildItem $_.FullName -Recurse -File |
      Where-Object { $_.Extension -in ".yaml", ".yml" } |
      Select-Object -First 1
  }

foreach ($dir in $dirs) {
  kubectl apply --dry-run=client -R -f $dir.FullName
}
