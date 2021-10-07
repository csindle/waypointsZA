*We explicitly welcome contributions, comments, requests, and suggestions.*

## Contributing to WaypointsZA

The most important thing is that valuable contributions are incorporated, so even sending a quick
message (via email, Signal, WhatsApp) to the maintainers with the precise details of your edit, is fine.

Having said that, nowadays, there are modern, better, tried and tested ways to incorporate your changes that,
amongst other things, allow an audit trail of the provenance of the data.

In order of preference:

### [preferred] Using git (and your GitHub account) to edit the CUP file:

One can edit the file on one's own editor from a git checkout (beyond the scope of this document),
or on can edit waypoints immediately like this:

0. Log in to GitHub.
1. Click on [`ZA_Cape.cup`](ZA_Cape.cup) file. 
2. Click on the pencil icon in the top right corner.
3. Modify the file as necessary. Try to keep changes to a single operation or waypoint 
so that the change history is easily viewable.
4. At the bottom of the page, write a quick summary of changes.
E.g. "Deleted duplicate waypoint." and click "Propose changes".
5. Click "Create pull request" (twice).
6. A maintainer with write access to the master branch can then approve and merge changes.

For a more detailed step-by-step walk through, see Davis from Arizona's instructions
[here](https://docs.google.com/presentation/d/1pMjyXVpgSP-2waq6FuD5_nyMrU_6ApVSMYG6YpMSBvM/edit?usp=sharing).

### [preferred] Using Google Sheets (and your Google Account) to edit the WaypointsZA spreadsheet:
One can request *Editor* access to the 
[WaypointsZA](https://docs.google.com/spreadsheets/d/13YJ6NrfoLhxTgeO8fi1aIT0n_nm4z0_ixXWjndgwzjE/edit#gid=364570956)
spreadsheet.

### Using Google Sheets to comment on the WaypointsZA spreadsheet:
Anyone can comment on the
[WaypointsZA](https://docs.google.com/spreadsheets/d/13YJ6NrfoLhxTgeO8fi1aIT0n_nm4z0_ixXWjndgwzjE/edit#gid=364570956)
spreadsheet.  Anonymous contributions will be ignored.

### [last resort] Email the maintainers:
Send an email to `wpza@succinct.co.za` with your edits.

---
## Our (CGC?) Policies
*(Up for debate: please make your voice heard!)*

1. A WP [SHOULD NOT](https://datatracker.ietf.org/doc/html/rfc2119) be closer than 5 km to another one.
2. A WP SHOULD be an easily identifiable ground feature (BGA Findability: Cat A, Cat B, etc.). 
3. It SHOULD NOT be a Cat G (BGA: "A GNSS Waypoint that does not have an identifiable ground feature.
These points will only be agreed where a topographical feature marked on the OS
maps is not available in the area in which the point is required.) BGA has 2 out of ~1380 WPs in this Cat G.
4. WP descriptions SHOULD NOT duplicate information already contained in other fields. E.g. no duplicating 
WP Style (Turn point, Mountain Peak, etc.), primary runway length, name, etc.

Special, derived files will be made available (TODO) for glide computers that cannot cope with this normalisation,
or have other capacity constraints.
