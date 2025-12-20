#!/usr/bin/env bash
set -Eeuo pipefail

npx puppeteer browsers install chrome
npx md-to-pdf --config-file ./wyc_md-to-pdf_config.json ../WYC_Constitution.md
npx md-to-pdf --config-file ./wyc_md-to-pdf_config.json ../WYC_By-Laws.md
npx md-to-pdf --config-file ./wyc_md-to-pdf_config.json ../WYC_Policies.md
npx md-to-pdf --config-file ./wyc_md-to-pdf_config.json ../WYC_Ithaka_Appendix.md

exit 0
