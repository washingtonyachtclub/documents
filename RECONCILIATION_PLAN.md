# Windsurf / Policies Deduplication — Status & Plan

Effort to deduplicate the Windsurf Policies against the main WYC Policies.

**Governing principle:** The Windsurf Policies are a *supplement* to the WYC Policies. Where the Windsurf doc addresses a topic, it is authoritative for windsurfing; for anything it doesn't cover, the WYC Policies govern.

**Model chosen:** thin overlay — the Windsurf doc carries only windsurf-specific content and deltas, and inherits everything else from the WYC Policies.

> Line numbers drift as edits land. Last reviewed 2026-07-13 against the current working tree (rebased onto `main` @ #21).

---

## Done

### Windsurf doc slimming (`WYC_Windsurf_Policies.md`)
- **Step 1 — Precedence at the top.** Old bottom-of-doc "Uncovered Topics" replaced with an `# About This Document` intro stating the supplement/authority relationship.
- **Step 2 — Deleted verbatim duplication (~106 lines):** Ratings *Definition* / *General Requirements*, *Monetary Gain*, *Responsibilities for Boat Usage*, *Boat Checkout Requirements*, *Classes*, *Defective Equipment*, *Smoking*, *Flammable Liquids*, *Boat Equipment Requirements*, entire *Personal Safety* section, *Damage to Club Boats*.
- **Step 3 — Reduced remaining shared sections to deltas only:** *Member and Guest Requirements* (IMA not required for windsurf-only use), *Facilities Access* (windsurf equipment / gate), *Checkout Permissions* (kept *Instructor Checkouts* + *Water Limitations*; dropped the verbatim Permission / Checkout Form / Time Restriction / Confirmation subsections).

### Step 4 — Sailboard cleanup in `WYC_Policies.md`
- **All stale Sailboard rating types removed:** Sailboard Novice, Intermediate, Skipper types, and the Sailboard Skipper waters privilege.
- **Sailboard Clothing section deleted** (was a dupe of Windsurf *Windsurf Clothing*).
- **Shared lists cleaned:** Sailboard dropped from the Dinghy umbrella (line 6) and the Dinghy Novice fleet list; Written Exam parenthetical reduced to "Pass the Dinghy Novice Exam."
- **Catamarans/Sailboards checkout-discretion subsection deleted** (redundant with the general checkout rule).
- **Catamaran Novice type re-added** — it had been deleted as collateral with Sailboard Novice; restored so it matches the Intermediate/Skipper sections and line 69.
- **Sailboard Fleet definition — kept intentionally** (the fleet still exists in the club) and now links out to the Windsurf Policies. Not a dupe anymore.
- **Leave-as-is items confirmed present:** the "tether the board" clause (Confirmation of Basic Sailing Ability) and the Sailboard flotation requirement — both correctly remain the canonical home.

### Revision dates
- By-Laws & Constitution → June 25, 2026 (untouched docs). Policies & Windsurf → July 9, 2026 (edited docs).

### By-Laws — examiner chief titles renamed
- "Windsurf Skipper Examiner" → **Windsurf Chief**; "Windsurf Captain Examiner" → **Windsurf Captain Chief**. Updated the *Designated Chiefs* definition (223), the Types/Requirements heading + body (239–240), and the Appointment paragraph (245). Left "Windsurf Skipper/Captain **rating**" untouched (those are ratings, not titles).

### Badge doc — broken links fixed
- Removed the escaped-underscore backslash from the three WIPA "Based On" PDF URLs (`/\_files/` → `/_files/`), which was causing browsers to request `/%5C_files/…` and get a 400. Line-18 heading level number also filled in.

### Windsurf Hazardous Weather collapsed to its one delta
- The section was ~80% duplicate of the Policies *Hazardous Weather* section (criteria paragraph, Bridge Hazard, Personal Floating Device Use, Ratings Restrictions all verbatim). Collapsed it to "the WYC Policies' Hazardous Weather rules apply" + the only windsurf-specific bit: the SSP/Magnuson launch water-limitation. This also absorbed the standalone flotation-line dupe todo.

### Southerly policy deduped — standalone doc deleted
- The standalone `WYC_Windsurfing_SSP_Southerly_Policies.md` was a 100% subset of the Windsurf Policies doc's *Sail Sand Point Southerly Policy* → *Supervised Sailing Rescue Policy* block (lines ~271–345), which is a strict superset (adds Bridge Hazard, PFD Use, Ratings Restrictions). Deleted the standalone doc, removed the "Full policy described in…" link at the top of the Windsurf *Sail Sand Point Southerly Policy* section (the Windsurf copy is the whole policy, not a summary), and cleaned up the nav link (`windsurf-documents/index.html`) and the `build:windsurf-southerly` PDF script (`pdf-generator/package.json`). Windsurf Policies is now the single source of truth.

### Lost "or Instructor" delta — dropped, not restored
- The old Windsurf *Time Restriction* copy had added "or Instructor". Briefly restored it clubwide, then decided against it — `WYC_Policies.md` stays "A Chief or Ratings Examiner may apply…". Instructors no longer have that authority anywhere.

### Badge Program folded into Windsurf Policies — standalone doc deleted
- The `## Badges` section in `WYC_Windsurf_Policies.md` was enriched to carry the full badge list: each badge name plus its "Based On" WIPA source (hyperlinked) and, for Gorge/Power Gybe, its requirements. Dropped the Level 1 *Video Material* and *Recommended Book*. Deleted the standalone `WYC_Windsurfing_Badge_Program.md` and cleaned up its nav link (`windsurf-documents/index.html`) and `build:windsurf-badges` PDF script. Windsurf Policies is now the single source of truth for badges.

### Stale Funds cross-ref dropped from By-Laws
- Check *Records* (309) cited "Article VII - Section A.4" for which accounts purchases come from; Funds were deleted in June and A.4 now resolves to *Approval of Exceeding Expenditures*. Dropped the clause rather than repointing it — no live section says what it needed to say.

### Constitution broken cross-refs fixed
- **§Announcement (113) deleted.** It cited "Article VII - Section D in the By-Laws"; the real target (VIII.D) leads to VIII.A, which says amendment procedures "are described in the Constitution" — a closed loop. §Procedure (110) already carries the full rule, and its delegation of the posting medium to the Policies is the good kind (the email list should move on a simple majority, not 2/3). Deleting §C leaves IX-B intact, so line 107's self-reference still resolves.
- **Chapter termination (120)** "processes of Article VIII" (= Sponsor) → "the Constitution amendment processes", named rather than numbered.

### NOAA penalty deduplicated
- The Windsurf document now has one NOAA rule, in *All Approved Waters and Launches*: a violation may result in the rating being temporarily suspended. The duplicate wording is gone, so no policy change was needed here.

### Fleet and novice-privilege updates
- Added the Hobie Getaway to the novice catamaran fleet and Catamaran Novice test/privilege wording.
- Removed the retired International 505 and International 14 from the Performance Fleet definition and added the E Scow.
- Updated the Double-Handed Fleet definition and rating test and privilege lists to match the current boats.
- Added Bravo to the boats covered by a Double-Handed Novice Rating.

### Performance ratings aligned with Intermediate
- Moved *Performance Boat Specialty Rig Ratings* from *Dinghy Skipper Rating* to *Dinghy Intermediate Ratings* and made a Double-Handed Intermediate Rating the qualifying rating.

### Ithaka Skipper removed
- Removed the orphaned *Ithaka Skipper* designation and Swan 441 usage rule after the boat's fleet entry was removed.

### Unclear Windsurf Captain privilege removed
- Deleted "Only the windsurf captain is allowed to use equipment" because it did not identify any restricted equipment and contradicted the equipment privileges granted by the other Windsurf Ratings.

### Windsurf checkout rule consolidated
- Replaced the drifted Skipper and Captain copies with one shared *Equipment Checkout and Fees* rule under *Requirements for the Use of Boats, Facilities, and Equipment*. The consolidated rule preserves beginner equipment for scheduled classes, socials, and other Club events that require it while exempting longboards, shortboards, and foil boards from that availability restriction.

### Named-reference cleanup in Policies, By-Laws, and Windsurf Policies
- Replaced numbered internal references with links whose text identifies the destination heading.
- Repaired the dead Windsurf references to *Sail Sand Point*, *Approved Skipper Waters*, *Travel Rig Rating*, and *All Approved Waters and Launches*.
- Corrected the Policies appeal reference to *Appeal Suspensions* and replaced the remaining numbered references in the Policies and By-Laws.

### Typo, garble, and Rig Rating cleanup
- Corrected the listed live typos and garbles in the Policies, By-Laws, and Windsurf Policies. The stale `ammount` item was already absent; `Kona's` disappeared when the duplicate checkout rules were consolidated into equipment-category wording.
- Renamed rig-specific “Specialty Rig Rating” terminology to “Rig Rating,” including the related headings and references.

### Published heading links verified
- Deployed the heading-name links and confirmed that their destinations work on the published website.

---
## Todo

### Constitution amendments (meeting proposal)

- **Confirm the source of officer eligibility rules.** Determine whether officer eligibility must be established in the By-Laws or may be stated directly in the Constitution, taking into account applicable University of Washington requirements.
- **Draft concise officer-eligibility language.** Require candidates and officeholders to be Regular Members and to remain eligible under applicable University of Washington rules. Keep the existing consequence that an officer who becomes ineligible leaves office and the vacancy is filled through the established succession process.
- **Replace numbered references with heading names.** Replace “Article VI - Section C” with a link to *Filling of Vacant Offices* and “Article IX - Section B” with a link to *Procedure*.
- **Correct deferred Constitution typos and garbles.** Change “in general of their interest” to “in general or their interest,” “form the floor” to “from the floor,” and replace “simple majority (50%)” with wording that correctly requires more than 50%.

### Deferred cleanup and policy changes

- Change the check-writing section.
- Add a Sailboard Novice grandfather provision to the Policies.

## Tabled

- **Step 5 — Terminology pass.** Standardize on one canonical term ("Windsurf" vs "Sailboard") across all docs; define the other as a synonym once. (Term not yet chosen.) Holdouts: Policies uses "Sailboard" (Fleet definition, tether clause, flotation heading); Windsurf doc uses "Windsurf"; By-Laws mixes both (lines 169 & 243 say "Sailboard", the rest "Windsurf"). Deferred for now.
