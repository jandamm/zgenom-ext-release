# Lazy load the extension
autoload -Uz zgenom-release

# Lazy load the extensions completion
autoload -Uz _zgenom_release

# Add description to zgenom help and completion
ZGENOM_EXTENSIONS+=('release:install github releases.')
