#!/bin/env python3

import sys
import pprint

from aerofiles.seeyou import Reader, Writer


cupfile = Reader()
print(sys.argv[1])
c = cupfile.read(open(str(sys.argv[1])))


waypoints = c["waypoints"]
pprint.pprint(waypoints)

# with open('competition.cup', 'wb') as fp:
#     writer = Writer(fp)
#     for wp in waypoints:
#         print(wp)
#         writer.write_waypoint(**wp)
