#!/usr/bin/env bash
set -euo pipefail
printf 'Checking tracked files for credential patterns...\n'
files=()
while IFS= read -r -d '' file; do
  [[ "$file" == "scripts/secret-scan.sh" ]] || files+=("$file")
done < <(git ls-files -z)
if [[ ${#files[@]} -eq 0 ]]; then exit 0; fi
if rg -l --no-messages \
  -e 'BEGIN (RSA |OPENSSH |EC )?PRIVATE KEY' \
  -e 'SUPABASE_SERVICE_ROLE_KEY=[A-Za-z0-9_-]{20,}' \
  -e 'OPENAI_API_KEY=sk-[A-Za-z0-9]{20,}' \
  -e 'HELIUS_API_KEY=[A-Za-z0-9_-]{20,}' \
  "${files[@]}"; then
  printf 'Potential credential found in the listed file(s); content is withheld.\n'
  exit 1
fi
printf 'No high-confidence credential patterns found.\n'
