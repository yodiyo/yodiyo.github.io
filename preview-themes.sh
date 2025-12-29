#!/bin/bash

# Theme Preview Script for Jekyll
# Cycles through GitHub Pages supported themes for quick comparison

echo "🎨 Jekyll Theme Preview Script"
echo "================================"
echo ""

# Array of themes to preview
themes=(
  "jekyll-theme-minimal"
  "jekyll-theme-cayman"
  "jekyll-theme-slate"
  "jekyll-theme-architect"
  "jekyll-theme-modernist"
  "jekyll-theme-tactile"
  "minima"
)

# Backup original config
cp _config.yml _config.yml.backup
echo "✅ Backed up _config.yml to _config.yml.backup"
echo ""

# Port for Jekyll server
PORT=4000

for theme in "${themes[@]}"; do
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo "🎨 Previewing: $theme"
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

  # Update theme in config
  if grep -q "^theme:" _config.yml; then
    # macOS compatible sed
    sed -i '' "s/^theme:.*/theme: $theme/" _config.yml
  else
    # Add theme line if it doesn't exist
    echo "theme: $theme" >> _config.yml
  fi

  echo "Updated _config.yml with theme: $theme"

  # Start Jekyll server in background
  echo "Starting Jekyll server..."
  bundle exec jekyll serve --port $PORT --detach --skip-initial-build 2>/dev/null

  # Wait for server to start
  sleep 3

  # Build the site
  bundle exec jekyll build 2>/dev/null

  echo ""
  echo "🌐 Preview available at: http://localhost:$PORT"
  echo ""
  echo "Press ENTER to try next theme, or Ctrl+C to stop and keep this theme"
  read -r

  # Stop Jekyll server
  pkill -f "jekyll.*$PORT" 2>/dev/null
  sleep 1
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Preview complete!"
echo ""
echo "To restore original config:"
echo "  mv _config.yml.backup _config.yml"
echo ""
echo "To keep current theme and clean up:"
echo "  rm _config.yml.backup"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
