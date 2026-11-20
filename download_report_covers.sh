#!/usr/bin/env bash
# Run from the folder that contains projects.html (your repo root).
# Downloads the 11 CoinGecko report covers into web_images/ using the
# filenames that projects.html expects.
set -e
mkdir -p web_images
B="https://assets.coingecko.com/reports/images"

curl -fL -o web_images/perps2025.png     "$B/10181/thumb/Report_Cover_Page_%284%29.png?1741934168"
curl -fL -o web_images/liquidity2025.png "$B/20187/thumb/CG_Report_Thumbnail.png?1750928284"
curl -fL -o web_images/btc2025.png       "$B/20194/thumb/CG_Report_Thumbnail_%282%29.png?1759307670"
curl -fL -o web_images/memecoins2025.png "$B/20200/thumb/CG_Report_Thumbnail_%284%29.png?1765875390"
curl -fL -o web_images/cexdex2026.png    "$B/102120206/thumb/CG_Report_Thumbnail_%286%29.png?1772527953"
curl -fL -o web_images/spotcex2026.png   "$B/102120207/thumb/CG_Report_Thumbnail_%287%29.png?1775722273"
curl -fL -o web_images/rwa2026.png       "$B/102120212/thumb/rwa-report-2026_vertical_cover.png?1777536876"
curl -fL -o web_images/perps2026.png     "$B/102120215/thumb/CG_Report_Thumbnail_%289%29.png?1779350543"
curl -fL -o web_images/tradfi2026.png    "$B/102120216/thumb/CG_Report_Thumbnail_%2810%29.png?1782809398"
curl -fL -o web_images/security2026.png  "$B/102120224/thumb/CG_Report_Thumbnail.png?1787816684"
curl -fL -o web_images/liquidity2026.png "$B/102120225/thumb/CG_Report_Thumbnail_%2812%29.png?1790756214"

echo "Done. Next: git add web_images projects.html && git commit -m 'Add 2025-2026 reports' && git push"
