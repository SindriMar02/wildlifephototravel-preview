# Wildlife Photo Travel — outreach + servicing notes

Internal. Not deployed (deploy.sh copies only index.html, robots.txt, assets/, fonts/).

Live preview: **https://sindrimar02.github.io/wildlifephototravel-preview/** (noindex, preflight PASSED)

---

## 1. Why the email is in ENGLISH, not Icelandic

The house template ([[outreach-email-guide]]) assumes an Icelandic owner. This one is not.

- The business operates from **Pollgata 2, 400 Ísafjörður**, but the site is **English-first**
  with `/fr/` and `/de/` versions.
- The two named guides are **Samy Berkani** and **Urip Dunker**; the site's French version and
  the phrasing throughout read as a French-speaking team.
- Their clientele is international (tours in Iceland, Scotland and Algeria).

English is the safe common language. Writing to them in Icelandic risks not being understood
and reads as a mail-merge. **Everything else in the guide still applies**: no dashes, no pricing,
warm and founder to founder, one specific compliment plus one honest observation, free with no
obligation, the live link on its own line, no clause granting rights over the prototype, and the
canonical sign-off.

**Nationality question is parked** at Sindri's instruction (2026-08-09) and should be resolved
before any second contact or invoice: which legal entity trades here, and where it is registered.

## 2. The observation, re-verified the same day

Measured on wildlifephototravel.com on 2026-08-09, immediately before drafting:

| Check | Result |
|---|---|
| Platform | WordPress **7.0.3** + jQuery |
| Font stack | Montserrat, Noto Serif, Roboto, Open Sans (four families, stock theme) |
| **Largest photograph on the homepage** | **≈21% of viewport height** |
| Images wider than 300px on the homepage | 3 |
| Mobile horizontal overflow | **0 (their site is NOT broken)** |

So the honest, checkable symptom is **not** "your site is broken". It is that the photographs,
which are the product, never get to be seen at any size. That is what the email says, and the
owner can confirm it in five seconds.

**Do not claim their site is broken on mobile.** It measures clean.

## 3. What they would get as a client (short version)

- **Editing:** schema-locked Sanity ([[cms-setup-sanity]]), event/tour schema mirroring what they
  already publish (title, place, dates, participants, poster, tour URL).
- **Not touched:** their existing tour pages and booking flow stay theirs; we never sit in a
  payment path we have not verified.
- **The paid upgrade:** an enquiry form (expedition, dates, guests, level) landing ready to
  answer, instead of free-text email. Their published FAQ is the repeat-questions signal.
- **SEO:** `TravelAgency` + `TouristTrip` structured data already in the prototype.
- Open: no money block yet, no RSK/registry pull, entity nationality unresolved.

---

## 4. The email

- **To:** `contact@wildlifephototravel.com` (their own published address, on their site and on
  their westfjords.is listing)
- **Subject:** `An idea for the Wildlife Photo Travel website`
- **Link:** https://sindrimar02.github.io/wildlifephototravel-preview/

```
Hello,

My name is Sindri and I design websites for small travel and photography companies. I came
across Wildlife Photo Travel while looking at operators in the Westfjords, and the photography
stopped me. The arctic fox work from Hornstrandir is genuinely world class, and it struck me
that on your homepage the largest photograph fills about a fifth of the screen, so the thing
you are actually selling never really gets seen.

So I sat down and designed a concept for a new front page for you. It costs you nothing and
there is no obligation attached. It is built phone first, since that is where people browse
trips, with every photograph running full width and resolving into focus as you scroll, and
the expeditions keep the details you already publish. You can look at it any time:
https://sindrimar02.github.io/wildlifephototravel-preview/

A next step from there could be an enquiry form where someone picks the expedition and dates,
so the request arrives ready to answer instead of the same email being written again and again.
If you like the idea I could finish the whole site, and if not I hope you at least enjoy seeing
your photographs at that size.

Do let me know if you are interested.

Best regards,
Sindri Már
845 1758
sndr-studio.pages.dev
```

**Checks run on this draft:** zero em/en dashes; no prices, plan names or tiers; no clause giving
them rights over the prototype; the enquiry form is clearly future tense so nobody clicks the link
expecting to find one; the compliment and the observation are both from measurements taken today;
sign-off matches the canonical set in [[outreach-email-guide]] rule 17.

**Layout fix (2026-08-09):** the first draft had the link on its own line followed by an inline
embedded screenshot, on top of six short paragraph fragments each separated by a blank line. That
structure (image card + isolated link line + choppy paragraphing) reads as a mail-merge template,
not a person typing a note. Rewritten as four continuous paragraphs with the link folded into a
sentence, no embedded image — the live site is one click away, it does not need a preview card in
the email itself.
