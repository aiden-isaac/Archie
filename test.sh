#!/bin/bash

# Simple test that will initially FAIL
echo "Running tests..."

# Test 1: Check if a file exists (this will fail initially)
if [ -f "success.txt" ]; then
    echo "✓ Test 1 passed: success.txt exists"
else
    echo "✗ Test 1 failed: success.txt does not exist"
    exit 1
fi

# Test 2: Simple math check
result=$((2 + 2))
if [ $result -eq 4 ]; then
    echo "✓ Test 2 passed: 2 + 2 = 4"
else
    echo "✗ Test 2 failed: Math is broken!"
    exit 1
fi

echo "All tests passed!"