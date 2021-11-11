#!/bin/bash
#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

DEVICE=land
VENDOR=xiaomi

# Load extractutils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

ANDROID_ROOT="${MY_DIR}/../../.."

HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

# Default to sanitizing the vendor folder before extraction
CLEAN_VENDOR=true

KANG=
SECTION=

while [ "${#}" -gt 0 ]; do
    case "${1}" in
        -n | --no-cleanup )
                CLEAN_VENDOR=false
                ;;
        -k | --kang )
                KANG="--kang"
                ;;
        -s | --section )
                SECTION="${2}"; shift
                CLEAN_VENDOR=false
                ;;
        * )
                SRC="${1}"
                ;;
    esac
    shift
done

if [ -z "$SRC" ]; then
    SRC=adb
fi

# Initialize the helper
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}" false "${CLEAN_VENDOR}"

extract "${MY_DIR}"/proprietary-files.txt "${SRC}" \
        "${KANG}" --section "${SECTION}"

DEVICE_BLOB_ROOT="${ANDROID_ROOT}"/vendor/"${VENDOR}"/"${DEVICE}"/proprietary

extract "$MY_DIR"/proprietary-files.txt "$SRC" "$SECTION"
extract "$MY_DIR"/proprietary-files-qc.txt "$SRC" "$SECTION"

sed -i "s|/system/etc/camera|/vendor/etc/camera|g" "$DEVICE_BLOB_ROOT"/vendor/lib/libmmcamera2_sensor_modules.so

"$MY_DIR"/setup-makefiles.sh
