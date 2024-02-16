#!/bin/bash

echo action path is "$ACTION_PATH"
echo package path is "$PACKAGE_PATH"
echo verison is "$MY_VERSION"
echo github workspace is "$GITHUB_WORKSPACE"

version_path="$PACKAGE_PATH/__version__.py"

if [ -f "$version_path" ]; then
    # overwrites the existing __version__ by appending to the last line
    echo "__version__ = $MY_VERSION" >> "$version_path"
else
    echo "__version__ = $MY_VERSION" > "$version_path"
fi

echo __version__.py at "$version_path" looks like:
cat "$version_path"
