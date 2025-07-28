#!/bin/bash

# Automatically adds, commits, and pushes to GitHub
# Usage: ./push_to_github.sh "commit message"

# Check for commit message
if [ -z "$1" ]; then
    echo "❌ Please provide a commit message."
    echo "Usage: ./push_to_github.sh \"your message here\""
    exit 1
fi

# Git commands
echo "🔄 Adding changes..."
git add .

echo "📝 Committing..."
git commit -m "$1"

echo "🚀 Pushing to GitHub..."
git push origin main

echo "✅ Done!"

