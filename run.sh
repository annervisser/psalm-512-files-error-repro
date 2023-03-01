#!/usr/bin/env bash

set -eu

composer install
git -C ./vendor/vimeo/psalm/ apply - < force_pool_size_to_2.patch || echo "Patch failed, already applied?"
./vendor/bin/psalm --no-cache
