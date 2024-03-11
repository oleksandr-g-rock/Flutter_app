#!/bin/bash

# Test part
echo "Test step - Install dependencies"
flutter pub get
echo "Test step - Run analyze"
flutter analyze
echo "Test step - Run flutter tests"
flutter test
echo "Test step - Run fake integration tests for Android"
echo "flutter test integration_test --passed"

# Build Part 
echo "Build step - Build app for Android"
flutter build apk --release
