#!/bin/sh

# Define input file to parse environment variable names from and output files
# where final values will be written.
INPUT_FILE=".env.example"
OUTPUT_FILE=".env"

# Use a while loop to read each line of the example file
while read line; do
# Extract the variable name from the line
VAR_NAME=$(echo "$line" | grep -o "^[A-Za-z_][A-Za-z0-9_]*")

# Check if the variable name is not empty
if [ -n "$VAR_NAME" ]; then

    # Get the value of the variable from the environment
    VAR_VALUE=$(echo "${!VAR_NAME}")

    # Write the variable and its value to the output file
    echo "${VAR_NAME}=${VAR_VALUE}" >> "$OUTPUT_FILE"
fi

done < "$INPUT_FILE"