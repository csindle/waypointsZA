Gliding waypoints and turnpoints for the Cape (and possibly South Africa) for XCSoar, Oudie, etc.


#### Project aims:

1. One, [single point of truth](https://en.wikipedia.org/wiki/Single_source_of_truth)
for [waypoints](https://xkcd.com/927/), locations, unique short codes, and descriptions.
2. Version controlled, with full history.
3. Open source, open data, including all history, versions, changes, and motivations.
4. Anybody can contribute (and anybody can fork).
5. Automatically incorporated into XCSoar, Oudie, etc.


---

An easily editable version of the waypoints can be found on this 
[Spreadsheet](https://docs.google.com/spreadsheets/d/13YJ6NrfoLhxTgeO8fi1aIT0n_nm4z0_ixXWjndgwzjE/edit#gid=364570956)

A map version of the waypoints can be found
[here](https://www.google.com/maps/d/u/0/edit?mid=1OdQ9Jp9IcUgXAMa7qQpaBRQReOhAuitc&usp=sharing)

---

#### Precedents:

The BGA waypoint policy:

1. [Policy](http://www.newportpeace.co.uk/turningpoints.htm)


Arizona gliding community waypoint documentation:

1. [Instructions for updating and editing](https://docs.google.com/presentation/d/1pMjyXVpgSP-2waq6FuD5_nyMrU_6ApVSMYG6YpMSBvM/edit?usp=sharing)
1. [Map](https://www.google.com/maps/d/u/0/edit?mid=1kHawbgbNa_hPMl5rvOVMP27UdMX1PvQ_&ll=32.39213804431958%2C-111.49211784793266&z=11)
1. [Waypoint repository](https://github.com/DavisChappins/AZTurnpoints)


---

*Contributions, comments, requests, and suggestions are very welcome.*

--- 

#### CSV -> CUP File Instructions:

1. Download the [Google Sheet](https://docs.google.com/spreadsheets/d/13YJ6NrfoLhxTgeO8fi1aIT0n_nm4z0_ixXWjndgwzjE/edit#gid=364570956)
as a CSV file.
2. Remove all Columns after K (i.e. keep only the first 11 columns).
3. Run `./sanitise.py in.cup` to create a verified output .cup file.
4. Rename output file appropriately and commit, push, and publish.
5. [Optional] Update the [Google Map](https://www.google.com/maps/d/u/0/edit?mid=1OdQ9Jp9IcUgXAMa7qQpaBRQReOhAuitc&usp=sharing)
 layer.


#### Resoures:

1. [CUP file specification](https://downloads.naviter.com/docs/CUP-file-format-description.pdf)
