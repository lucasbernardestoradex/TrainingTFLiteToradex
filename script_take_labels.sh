#!/bin/bash

# Directory containing XML files
xml_dir="voc_dataset/voc_som_dataset/train"

# Extract names from XML files
sorted_names=$(grep -h "<name>.*</name>" "$xml_dir"/*.xml | sed 's/<name>\(.*\)<\/name>/\1/' | sort | uniq | tr '\n' ' ')


# Print sorted names
echo "$sorted_names"