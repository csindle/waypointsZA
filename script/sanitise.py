#!/bin/env python3

import sys
#import pprint

from aerofiles.seeyou import Reader, Writer, Converter


def convert(wp: dict) -> dict:
    """
    Hack the aerofiles waypoint input format to its output format.
    :return: a writeable waypoint.
    """
    wp['shortname'] = wp['code']
    del wp['code']

    # Convert dict to tuple:
    wp['elevation'] = (wp['elevation']['value'], wp['elevation']['unit'])

    if wp['runway_direction'] is not None:
        # Convert dict to tuple:
        wp['runway_length'] = (wp['runway_length']['value'], wp['runway_length']['unit'])
    else:
        del wp['runway_direction']
        del wp['runway_length']
    return wp


def main(in_filename: str, out_filename: str) -> None:
    """
    Sanitise the input XCSoar/SeeYou CUP file, to the output CUP file.

    Notes:

    """
    c = Reader().read(open(in_filename))
    waypoints = c["waypoints"]

    with open(out_filename, 'wb') as fp:
        writer = Writer(fp)
        for i, wp in enumerate(waypoints):
            writeable_wp = convert(wp)
            #pprint.pprint(writeable_wp)
            writer.write_waypoint(**writeable_wp)


if __name__ == '__main__':
    main(in_filename=str(sys.argv[1]), out_filename=str(sys.argv[2]))
