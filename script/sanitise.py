#!/bin/env python3

"""
Verify the integrity of CUP files.
"""

import sys
# import pprint

from aerofiles.seeyou import Reader, Writer


def convert(point: dict) -> dict:
    """
    Hack the aerofiles waypoint input format to its output format.
    :return: a writeable waypoint.
    """
    point['shortname'] = point['code']
    del point['code']

    # Convert dict to tuple:
    point['elevation'] = (point['elevation']['value'], point['elevation']['unit'])

    if point['runway_direction'] is not None:
        # Convert dict to tuple:
        point['runway_length'] = (point['runway_length']['value'], point['runway_length']['unit'])
    else:
        del point['runway_direction']
        del point['runway_length']
    return point


def main(in_filename: str, out_filename: str) -> None:
    """
    Sanitise the input XCSoar/SeeYou CUP file, to the output CUP file.
    """
    cup_file = Reader().read(open(in_filename))
    waypoints = cup_file["waypoints"]
    print(f'Imported {len(waypoints)} waypoints.')
    with open(out_filename, 'wb') as out_file:
        writer = Writer(out_file)
        for point in waypoints:
            writeable_wp = convert(point)
            # pprint.pprint(writeable_wp)
            writer.write_waypoint(**writeable_wp)
        print(f'Written {len(waypoints)} waypoints.')


if __name__ == '__main__':
    main(in_filename=str(sys.argv[1]), out_filename=str(sys.argv[2]))
