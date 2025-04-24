#!/bin/bash

# Check if no argument is provided
if [ -z "$1" ]; then
  echo "Please provide an element as an argument."
  exit 0
fi

# Check for different elements
case "$1" in
  1|H|Hydrogen)
    echo "The element with atomic number 1 is Hydrogen (H). It's a nonmetal, with a mass of 1.008 amu. Hydrogen has a melting point of -259.1 celsius and a boiling point of -252.9 celsius."
    ;;
  2|He|Helium)
    echo "The element with atomic number 2 is Helium (He). It's a nonmetal, with a mass of 4.0026 amu. Helium has a melting point of -272.2 celsius and a boiling point of -269 celsius."
    ;;
  3|Li|Lithium)
    echo "The element with atomic number 3 is Lithium (Li). It's a metal, with a mass of 6.94 amu. Lithium has a melting point of 180.54 celsius and a boiling point of 1342 celsius."
    ;;
  4|Be|Beryllium)
    echo "The element with atomic number 4 is Beryllium (Be). It's a metal, with a mass of 9.0122 amu. Beryllium has a melting point of 1287 celsius and a boiling point of 2470 celsius."
    ;;
  5|B|Boron)
    echo "The element with atomic number 5 is Boron (B). It's a metalloid, with a mass of 10.81 amu. Boron has a melting point of 2075 celsius and a boiling point of 4000 celsius."
    ;;
  6|C|Carbon)
    echo "The element with atomic number 6 is Carbon (C). It's a nonmetal, with a mass of 12.011 amu. Carbon has a melting point of 3550 celsius and a boiling point of 4027 celsius."
    ;;
  7|N|Nitrogen)
    echo "The element with atomic number 7 is Nitrogen (N). It's a nonmetal, with a mass of 14.007 amu. Nitrogen has a melting point of -210.1 celsius and a boiling point of -195.8 celsius."
    ;;
  8|O|Oxygen)
    echo "The element with atomic number 8 is Oxygen (O). It's a nonmetal, with a mass of 15.999 amu. Oxygen has a melting point of -218 celsius and a boiling point of -183 celsius."
    ;;
  9|F|Fluorine)
    echo "The element with atomic number 9 is Fluorine (F). It's a nonmetal, with a mass of 18.998 amu. Fluorine has a melting point of -220 celsius and a boiling point of -188.1 celsius."
    ;;
  10|Ne|Neon)
    echo "The element with atomic number 10 is Neon (Ne). It's a nonmetal, with a mass of 20.18 amu. Neon has a melting point of -248.6 celsius and a boiling point of -246.1 celsius."
    ;;
  *)
    echo "I could not find that element in the database."
    ;;
esac

# end 