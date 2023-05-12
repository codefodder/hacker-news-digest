#!/usr/bin/env bash

SUBJECT_LINE=$(bin/top-3-titles.sh |
    PERL_UNICODE=SAL \
    perl -pe 'chomp; if (not eof) { s/$/ \x{2014} / }')

echo "SUBJECT_LINE=HackerNews DIYgest — ${SUBJECT_LINE}" >> "$GITHUB_ENV"
