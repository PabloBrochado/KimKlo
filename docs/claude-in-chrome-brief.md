# Brief for Claude in Chrome — finishing kimklo.com

Paste everything below the line into Claude in Chrome while logged in to the WordPress
dashboard at https://www.kimklo.com/wp-admin/. Send it once, then ask for one task at a time
("Do task 1").

---

## Who I am and what the site is

I'm the owner of **Kim & Klóe** (https://www.kimklo.com), a site about two real tuxedo cats,
Kim and Klóe (and Mimí), whose true story is being turned into an animated series. The site
also has a small store of pet products linked to Amazon (affiliate tag `kimklo-20`).

**Tech:** WordPress 7.1 · Elementor 4.3 (page builder) · Hello Elementor theme ·
WPML 5.1 (languages: English `/`, Spanish `/es/`, Portuguese `/pt-pt/`) · WooCommerce 11.1.

**Voice of the site:** warm, short, a little playful, literary. Kim is "the boss"
(confident, independent, territorial); Klóe is "the softer heart" (sweet, affectionate,
gentle). Taglines: EN "Two Cats. One Story." · ES "Dos gatas. Una historia." ·
PT "Duas gatas. Uma história."

## Rules — follow these every time

1. **Work on one task at a time.** Tell me your plan for the task before changing anything,
   then wait for my "go".
2. **Never delete anything permanently.** Move pages to Trash or set them to Draft, never
   "Delete Permanently". Never empty the Trash.
3. **Ask before** you: install, update or deactivate a plugin or theme; change WooCommerce
   payment, tax, shipping or checkout settings; change permalinks; edit users; or touch
   anything under Settings → General.
4. **Don't rewrite my story text.** Only translate it, and keep its meaning, tone and names
   (Kim, Klóe, Mimí, Kshian, Pablo, Jeissy, María Eugenia, Diva) exactly as they are.
5. **Click Update/Publish** after each edit, then **open the live page in a new tab** in all
   three languages (EN, ES, PT) and confirm the change is visible and nothing else broke.
6. If something looks different from what this brief describes, **stop and ask me.**
7. At the end of each task, give me a short report: what you changed, where, and what I
   should check.

## Tasks (most important first)

### Task 1 — Make the email signup actually collect emails
The "Follow the story" form on the homepage (red "Be there for the first episode" section)
is custom HTML with `action="mailto:hello@kimklo.com"`. It only opens the visitor's email
app, so no subscriber list is built.
- Find which Elementor widget holds it (Pages → home page → Edit with Elementor → the red
  section; it's an HTML widget with `class="kk-form"`). Do this on EN, ES and PT versions.
- **Ask me** which service to use before installing anything. Options: Elementor Pro Form
  widget (if I have Pro) connected to Mailchimp/Klaviyo, or the free **MailPoet** plugin.
- Replace the widget with a real form that keeps the same look: one email field
  (placeholder "you@email.com"), black button "Follow the story", same red background.
  Spanish button: "Seguir la historia"; Portuguese: "Acompanhe a história".
- Remove the small "Opens your email app." line under the form.
- Test: submit a test address and confirm it appears in the subscriber list.

### Task 2 — Translate "The Beginning" page into Spanish and Portuguese
`/the-beginning/` links to `/es/el-comienzo/` and `/pt-pt/o-inicio/`, which are **404**.
- In Pages, find "The Beginning". Using WPML (the + icons in the language columns), create
  the Spanish and Portuguese translations, or open the existing drafts if they're there.
- Translate all text faithfully (rules 4). Spanish title "El comienzo", slug `el-comienzo`;
  Portuguese (Portugal) title "O início", slug `o-inicio`.
- Publish both. Confirm the language switcher on The Beginning now opens working pages.

### Task 3 — Fix the Rabbits category image
On the store page `/store/`, the **Rabbits** category card shows a **cupcake** photo.
- Products → Categories → Rabbits → Thumbnail: tell me what images exist in the Media
  Library that show rabbits; if none, ask me to upload one. Do the same check for the
  Spanish ("Conejos") and Portuguese ("Coelhos") categories.

### Task 4 — Remove duplicate store pages
The real store is **`/store/`** (EN), with ES `/es/tienda/` and PT `/pt-pt/loja/`.
Duplicates that exist: `/shop/`, `/products/` (an unstyled leftover page with a messy menu),
`/es/tienda-2/`, `/pt-pt/loja-2/`.
- First check WooCommerce → Settings → Products → **Shop page**: tell me which page it is.
- Show me your plan (which page stays, which goes to Draft) and wait for my "go". Don't
  break the Cart, Checkout or My Account pages.
- After, confirm the STORE link in the header works in all three languages.

### Task 5 — Translate product names into Spanish and Portuguese
All 32 products show English names on `/es/` and `/pt-pt/` product pages.
- In WPML → Translation Management (or each product's ES/PT translation), translate the
  product **title** and **short description**. Keep brand names as-is (KONG, Chuckit!,
  Catstages, Outward Hound, Petlibro, Potaroma, JW Pet, Kaytee, Oxbow, Veken, etc.) and
  keep sizes/units.
  Example: "KONG Classic Stuffable Dog Toy, Medium" → ES "KONG Classic, juguete rellenable
  para perros, mediano" → PT "KONG Classic, brinquedo recheável para cães, médio".
- Do 5 products, show me, then continue after my OK.

### Task 6 — Search descriptions and titles (SEO)
No page has a meta description, and the ES/PT homepage `<title>` is just "Kim & Klóe".
- **Ask me** before installing an SEO plugin (Yoast SEO or Rank Math, free version).
- Then set these:

| Page | Title | Description |
|---|---|---|
| Home EN | Kim & Klóe — Two Cats. One Story. | Kim & Klóe are two real tuxedo cats with opposite hearts. Follow their true story as it becomes an animated series. |
| Home ES | Kim & Klóe — Dos gatas. Una historia. | Kim y Klóe son dos gatas reales de esmoquin con corazones opuestos. Sigue su historia real mientras se convierte en una serie animada. |
| Home PT | Kim & Klóe — Duas gatas. Uma história. | Kim e Klóe são duas gatas frajolas reais com corações opostos. Acompanhe a sua história verdadeira enquanto se torna uma série animada. |
| Store EN | The Kim & Klóe Store | A curated collection of finds for cats, dogs, rabbits and birds — and the people who love them. |
| Store ES | La tienda de Kim & Klóe | Una selección de productos para gatos, perros, conejos y aves — y para las personas que los quieren. |
| Store PT | A loja Kim & Klóe | Uma seleção de produtos para gatos, cães, coelhos e aves — e para as pessoas que os adoram. |

- For other pages (History, The Beginning, Privacy, categories), write a description under
  155 characters in the site's voice, in the page's language, and show me before saving.

### Task 7 — History page: only one main heading
`/history/` has **39 H1 headings**. In Elementor, keep the page title as H1 and change the
other heading widgets to H2 (section titles) or H3 (smaller ones). Don't change how they
look: only the HTML tag setting (Heading widget → Content → HTML Tag).

### Task 8 — Image descriptions (alt text)
Many images have no alt text (store category cards, product cards, the cats' portraits).
- In Media → Library, fill the "Alternative Text" for images used on the site, in plain
  words, e.g. "Kim, a black-and-white tuxedo cat with yellow eyes wearing a tag that says
  KIM". For translated sites, also fill ES/PT if WPML Media Translation is active.

### Task 9 — Amazon affiliate notice on the store page
Product pages already show the notice, the main store page doesn't. Add one small line at
the bottom of `/store/` (and ES/PT versions), above the footer:
- EN: "As an Amazon Associate, Kim & Klóe earns from qualifying purchases."
- ES: "Como Afiliado de Amazon, Kim & Klóe obtiene ingresos por las compras adscritas que cumplen los requisitos aplicables."
- PT: "Como Associado da Amazon, Kim & Klóe recebe comissões por compras qualificadas."

### Task 10 — One language switcher in the footer
The footer shows my EN/ES/PT links **and** a WPML flags bar underneath. Turn off the flags
bar: WPML → Languages → "Footer language switcher" → uncheck "Show language switcher in
footer". Confirm my EN/ES/PT links still work.

### Task 11 — Show "Follow the story" on phones
On mobile (about 390px wide), the header hides the "Follow the story" button. In Elementor's
header template (Templates → Theme Builder → Header), check the button's Advanced →
Responsive → "Hide on Mobile" setting and show me options (e.g. a smaller button next to the
language links). Ask before changing.

### Task 12 — Speed (ask first)
Pages take about 2 seconds for the server to respond. Check Plugins for an existing caching
plugin and tell me what's there. Don't install anything; I'll decide with my host.

## When everything is done
Give me one summary list: each task, done / skipped / needs me, and anything you noticed
along the way that looks broken.
