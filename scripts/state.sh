#!/usr/bin/env bash
# Print the state table: one row per project in ~/Documents/Projects.
# Facts only. Columns are separated by tabs:
#   project, last commit date, days since, last commit subject,
#   uncommitted files, ✅ count in docs/PLAN.md, last journal line.
# Skips archive/ and this repo.
set -u

ROOT="${PROJECTS_ROOT:-$HOME/Documents/Projects}"
SELF="where-we-at-bro"
now=$(date +%s)

# Cut to N characters, not bytes, so Cyrillic stays whole.
trunc() { perl -CSD -ne 'chomp; print substr($_, 0, '"$1"'), "\n"'; }

printf 'project\tlast_commit\tdays\tsubject\tdirty\tdone\tlast_journal\n'
for dir in "$ROOT"/*/; do
  name=$(basename "$dir")
  [ "$name" = "archive" ] || [ "$name" = "$SELF" ] && continue

  if git -C "$dir" rev-parse --git-dir >/dev/null 2>&1 \
     && ts=$(git -C "$dir" log -1 --format=%ct 2>/dev/null) && [ -n "$ts" ]; then
    date_s=$(date -r "$ts" +%Y-%m-%d)
    days=$(( (now - ts) / 86400 ))
    subject=$(git -C "$dir" log -1 --format=%s | trunc 70)
    dirty=$(git -C "$dir" status --porcelain 2>/dev/null | wc -l | tr -d ' ')
  else
    date_s="no git"; days="-"; subject="-"; dirty="-"
  fi

  plan="$dir/docs/PLAN.md"
  done_n=$([ -f "$plan" ] && grep -o '✅' "$plan" | wc -l | tr -d ' ' || echo "-")

  journal="$dir/docs/journal.md"
  last=$([ -f "$journal" ] && grep -E '^\s*[-*] |^#' "$journal" | tail -n 1 | trunc 120 || echo "-")
  [ -z "$last" ] && last="-"

  printf '%s\t%s\t%s\t%s\t%s\t%s\t%s\n' "$name" "$date_s" "$days" "$subject" "$dirty" "$done_n" "$last"
done
