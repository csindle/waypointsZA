#!/bin/env python3

"""
Verify the integrity of CUP files.
"""

import csv
from io import StringIO
from pathlib import Path
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


def cut(csv_in: Path, column_count: int) -> StringIO:
    """
    Return a file with only the first column_count columns of csv_in_file.
    """

    with csv_in.open(newline='') as csvfile:
        csv_in = csv.reader(csvfile,)
        out_str = StringIO()
        csv_cut = csv.writer(out_str, )
        for row in csv_in:
            if row[0]:
                # Ignore seemingly empty rows
                csv_cut.writerow(row[:column_count])
    out_str.seek(0)
    return out_str


def main(in_filename: Path, out_filename: Path) -> None:
    """
    Sanitise the input XCSoar/SeeYou CUP file, to the output CUP file.
    """
    cup11cols = cut(csv_in=in_filename, column_count=11)
    cup_file = Reader().read(cup11cols)

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
    main(in_filename=Path(sys.argv[1]), out_filename=Path(sys.argv[2]))
