#!/usr/bin/env bash
set -Eeuo pipefail

npx puppeteer browsers install chrome
npx md-to-pdf --config-file ./wyc_md-to-pdf_config.json ../WYC_Constitution.md
npx md-to-pdf --config-file ./wyc_md-to-pdf_config.json ../WYC_By-Laws.md
npx md-to-pdf --config-file ./wyc_md-to-pdf_config.json ../WYC_Policies.md
npx md-to-pdf --config-file ./wyc_md-to-pdf_config.json ../WYC_Code_of_Conduct.md
npx md-to-pdf --config-file ./wyc_md-to-pdf_config.json ../WYC_Windsurf_Policies.md
npx md-to-pdf --config-file ./wyc_md-to-pdf_config.json ../WYC_Windsurfing_Badge_Program.md
npx md-to-pdf --config-file ./wyc_md-to-pdf_config.json ../WYC_Windsurfing_SSP_Southerly_Policies.md

exit 0
