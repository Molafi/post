# ALIAS STUDY — Instagram Grid Banner Post

A split-panel banner post for the **@alias_study** account, styled like the Abuwardeh
Group featured banner. It uses a recreated ALIAS logo (gold star, navy arch, gold
compass/pen, teal boat) and academic + technical graphics.

## Files

| File | Size | Use |
|------|------|-----|
| `out/alias_banner_full.png`   | 3240 x 1080 | Full stitched banner (preview / stories / cover) |
| `out/alias_tile_1_left.png`   | 2160 x 2160 | Grid tile **LEFT**  |
| `out/alias_tile_2_center.png` | 2160 x 2160 | Grid tile **CENTER** (logo + name) |
| `out/alias_tile_3_right.png`  | 2160 x 2160 | Grid tile **RIGHT** |
| `out/alias_banner_guides.png` | 3240 x 1080 | Preview showing the two split lines |
| `banner.html` | — | Editable source (HTML/CSS + inline SVG) |
| `render.sh`   | — | Re-render everything with headless Chrome |

## How to post as a 3-cell grid on Instagram

Instagram fills each row **right → left**. To make the banner line up across the top
row of your profile, post the tiles in this order (so newest ends on the left):

1. Post **alias_tile_3_right.png**  first
2. Post **alias_tile_2_center.png** second
3. Post **alias_tile_1_left.png**   last

They will appear in the grid as: **LEFT | CENTER | RIGHT**.

## Re-rendering / editing

Edit `banner.html` (colors are CSS variables at the top; taglines and text are in the
`.footer` block), then run:

```bash
./render.sh
```

Requires the headless Chrome that ships in this sandbox.
