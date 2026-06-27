
# Sthololwazi Projects — Corporate Website (final)

Building is the lead division. Logo integrated into header, footer, and favicon. Lovable Cloud enabled for the quote form. Logo watermark cleaned for favicon/header use.

## Step 1 — Design direction
Generate 3 rendered HTML directions (palette locked: dark forest green, gold, slate, white; corporate tone locked). Vary composition, density, hero treatment. You pick one before final build.

## Step 2 — Brand assets
- Upload logo via Lovable Assets → use in `Header` + `Footer`
- Generate cleaned square favicon (watermark removed, transparent bg) → wire as `icon` + `apple-touch-icon` in `__root.tsx`
- Color tokens derived from the logo, defined in `src/styles.css` via `@theme inline`

## Step 3 — Routes (TanStack file-based, unique SEO per route)
- `/` Home — hero, trust metrics, divisions (Building first), B-BBEE multiplier, featured projects, CTA
- `/about` — story, ownership, "Each One, Teach One"
- `/services/building` — **Division 1 (lead)**: rental units & NHBRC RDP, commercial (SANS 10400T), renovations, ceilings/drywall (SANS 523), plumbing/tiling/carpentry/welding
- `/services/civil` — Division 2: precast kerbs (SANS 1200), paving, manholes/stormwater, environmental maintenance
- `/services/materials` — Division 3: wholesale & onsite supply
- `/projects` — 500 RDP Houses (R53m), Tholinhlanhla Primary, Evander Hospital
- `/compliance` — Reg 2017/135433/07, Tax 9071664248, NHBRC 3000190954, CIDB 10127071, CSD MAAA0446751
- `/contact` — address, email, phone + Request a Quote form

## Step 4 — Sections
- Hero with primary CTA "Partner With Us / Request a Quote"
- Trust strip: Est. 2017 · 100% Black-Owned · B-BBEE Level 1 · 3 Integrated Divisions
- Divisions in order: Building (emphasized) → Civil → Material Supply
- B-BBEE Multiplier: Moral & Social Responsibility · Each One, Teach One · Integrated Supply Chain
- Track Record cards
- Compliance band
- Quote form (Zod-validated) → stored in Lovable Cloud `quote_requests` (RLS: public insert, authenticated select; proper grants)
- Footer with logo, slogan, contact, compliance numbers

## Step 5 — SEO + a11y
- Per-route `head()` (title <60ch, description <160ch, og + twitter)
- Single H1, semantic landmarks, alt text
- JSON-LD `Organization` on home
- Favicon + apple-touch-icon wired from logo

## Tech
TanStack Start v1 + React 19 + Tailwind v4. Lovable Cloud backend for quote form via `createServerFn` + Zod.

Switching to build now.
