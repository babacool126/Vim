#!/bin/bash

# Step 1: Create target install folder
VIM_PACK_DIR="$HOME/.vim/pack/plugins/start"
mkdir -p "$VIM_PACK_DIR"

echo "Folder prepared: $VIM_PACK_DIR"
echo ""

# Step 2: List zip files in HOME
cd "$HOME" || exit 1

echo "Available zip files in $HOME:"
select zipfile in *.zip; do
    if [[ -n "$zipfile" ]]; then
        echo "You selected: $zipfile"

        # Step 3: Unzip into Vim start directory
        unzip "$zipfile" -d "$VIM_PACK_DIR"
        echo "Successfully unzipped $zipfile into $VIM_PACK_DIR"
        
        break
    else
        echo "Invalid choice. Try again."
    fi
done
