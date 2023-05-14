#!/bin/bash

chown -R khycnar *

chgrp -R users *

# Set execute permissions for directories
find . -type d -exec chmod 755 {} +

# Set read permissions for non-executable files
find . -type f ! -name "*.sh" -exec chmod 644 {} +

# Set execute permissions for shell scripts
find . -type f -name "*.sh" -exec chmod 755 {} +

mkdir -p elasticsearch-data

chmod 777 elasticsearch-data
