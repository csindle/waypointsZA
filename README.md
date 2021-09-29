Gliding waypoints and turnpoints for the Cape (and possibly South Africa) for XCSoar, Oudie, etc.


Project aims:

1. One, [single point of truth](https://en.wikipedia.org/wiki/Single_source_of_truth) for [waypoints](https://xkcd.com/927/), locations, unique short codes, and descriptions.
1. Version controlled, with full history.
1. Open source, open data.
1. Anybody can contribute.
1. Automatically incorporated into XCSoar, Oudie, etc.


---

Current Waypoints:

1. [Spreadsheet](https://docs.google.com/spreadsheets/d/13YJ6NrfoLhxTgeO8fi1aIT0n_nm4z0_ixXWjndgwzjE/edit#gid=352524014)
1. [Map](https://www.google.com/maps/d/u/0/edit?mid=1OdQ9Jp9IcUgXAMa7qQpaBRQReOhAuitc&usp=sharing)




---

Example of how the Arizona gliding community manages their turnpoints:


1. [Instructions for updating and editing](https://docs.google.com/presentation/d/1pMjyXVpgSP-2waq6FuD5_nyMrU_6ApVSMYG6YpMSBvM/edit?usp=sharing)

1. [Map](https://www.google.com/maps/d/u/0/edit?mid=1kHawbgbNa_hPMl5rvOVMP27UdMX1PvQ_&ll=32.39213804431958%2C-111.49211784793266&z=11)

1. [Waypoint repository](https://github.com/DavisChappins/AZTurnpoints)


---

[Development documentation](https://docs.google.com/document/d/1Z5EGAza_H5q-v5h7MDuK3U0bmSp__XplMYXCBRvNA6M/edit#heading=h.vywwt6ylo0kv)


Contributions, comments, requests, and suggestions are very welcome.


--- 

CUP File Processing:

1. Download from Google sheets.
2. Remove all Columns after M (i.e. keep only the first 13 columns).
3. Remove Header line.
4. Remove tail (Task) line.
5. `./sanitise.py in.cup` to create an output file `out.cup`.
6. Rename output file appropriately and commit, push, and publish.

