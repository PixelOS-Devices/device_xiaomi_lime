/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t lime_info = {
    .hwc_value = "",
    .sku_value = "lime",

    .brand = "Redmi",
    .device = "lime",
    .marketname = "Redmi 9T",
    .model = "M2010J19SG",
    .build_fingerprint = "Redmi/lime_global/lime:12/SKQ1.211202.001/V13.0.3.0.SJQMIXM:user/release-keys",
};

static const variant_info_t pomelo_info = {
    .hwc_value = "",
    .sku_value = "pomelo",

    .brand = "Redmi",
    .device = "pomelo",
    .marketname = "Redmi 9 Power",
    .model = "M2010J19SL",
    .build_fingerprint = "Redmi/pomelo_global/pomelo:12/SKQ1.211202.001/V13.0.3.0.SJQMIXM:user/release-keys",
};

static const variant_info_t lemon_info = {
    .hwc_value = "",
    .sku_value = "lemon",

    .brand = "Redmi",
    .device = "lemon",
    .marketname = "Redmi 9T NFC",
    .model = "M2010J19SY",
    .build_fingerprint = "Redmi/lemon_global/lemon:12/SKQ1.211202.001/V13.0.3.0.SJQMIXM:user/release-keys",
};

static const std::vector<variant_info_t> variants = {
    lime_info,
    pomelo_info,
    lemon_info,
};

void vendor_load_properties() {
    search_variant(variants);
}
