#!/usr/bin/env bash
# Simple Interest Calculator
# Calculates simple interest: SI = principal * annual_rate * time / 100

set -e

read -r -p "Enter the principal: " principal
read -r -p "Enter rate of interest per year: " rate
read -r -p "Enter time period in years: " time

# Validate numeric inputs (non-negative principal/time and non-negative rate).
if ! awk -v p="$principal" -v r="$rate" -v t="$time" \
  'BEGIN { exit !(p ~ /^[0-9]+([.][0-9]+)?$/ && r ~ /^[0-9]+([.][0-9]+)?$/ && t ~ /^[0-9]+([.][0-9]+)?$/) }'
then
  echo "Error: please enter non-negative numeric values for principal, rate, and time." >&2
  exit 1
fi

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
  'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "The simple interest is: $interest"
