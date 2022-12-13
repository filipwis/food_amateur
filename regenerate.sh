#!/bin/sh
set -e

VER="3.3.9"

fvm use ${VER}
fvm flutter pub get && fvm flutter pub run build_runner build --delete-conflicting-outputs
fvm flutter pub run easy_localization:generate --source-dir ./assets/translations -f keys -o local_keys.g.dart
