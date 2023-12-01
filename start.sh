#!/usr/bin/env bash

# Setup models cache
mv /app/Fooocus/models /app/Fooocus/models_backup
ln -s /app/models /app/Fooocus/models
rsync -avh --ignore-existing /app/Fooocus/models_backup/ /app/Fooocus/models

# Start Fooocus
cd /app/Fooocus || exit 1
python3 entry_with_update.py

# Some presets
#python3 entry_with_update.py --preset realistic
#python3 entry_with_update.py --preset anime
