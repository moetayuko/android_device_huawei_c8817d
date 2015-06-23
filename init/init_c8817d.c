/*
   Copyright (c) 2014, The Linux Foundation. All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

#include "init_msm.h"

void init_msm_properties(unsigned long msm_id, unsigned long msm_ver, char *board_type)
{
    char platform[PROP_VALUE_MAX];
    char model[110];
    FILE* fp;
    int rc;

    UNUSED(msm_id);
    UNUSED(msm_ver);
    UNUSED(board_type);

    rc = property_get("ro.board.platform", platform);
    if (!rc || !ISMATCH(platform, ANDROID_TARGET))
        return;

    fp = fopen("/proc/app_info", "rb");
    while (fgets(model, 100, fp))
        if (strstr(model, "huawei_fac_product_name") != NULL)
            break;

    /* C8817D */
    if (strstr(model, "C8817D") != NULL) {
        property_set("ro.product.model", "C8817D");
        property_set("ro.product.name", "C8817D");
        property_set("persist.radio.multisim.config", "dsds");
        property_set("persist.dsds.enabled", "true");
        property_set("ro.telephony.default_network", "8");
        property_set("telephony.lteOnCdmaDevice", "1");
        property_set("ro.config.is_cdma_phone", "true");
        property_set("ro.cdma.home.operator.numeric", "46003");
        property_set("ro.config.cdma.globalMode", "true");
        property_set("ro.config.dsds_mode", "cdma_gsm");
        property_set("ro.com.android.dataroaming","true");
        property_set("ro.build.description", "C8817D-user 4.4.4 GRJ90 C92B381 release-keys");
        property_set("ro.build.fingerprint", "Huawei/C8817D/hwC8817D:4.4.4/HuaweiC8817D/C92B381:user/release-keys");
    }
    /* C8817E */
    else if (strstr(model, "C8817E") != NULL) {
        property_set("ro.product.model", "HUAWEI C8817E");
        property_set("ro.product.name", "C8817E");
        property_set("ro.telephony.default_network", "8");
        property_set("ro.build.description", "C8817E-user 4.4.4 GRJ90 C92B380 release-keys");
        property_set("ro.build.fingerprint", "Huawei/C8817E/hwC8817E:4.4.4/HuaweiC8817E/C92B380:user/release-keys");
    }
    /* G621-TL00 */
    else if (strstr(model, "G621-TL00") != NULL) {
        property_set("ro.product.model", "G621-TL00");
        property_set("ro.product.name", "G621-TL00");
        property_set("persist.radio.multisim.config", "dsds");
        property_set("persist.dsds.enabled", "true");
        property_set("ro.telephony.default_network", "17");
        property_set("ro.config.dsds_mode", "umts_gsm");
        property_set("ro.build.description", "G621-TL00-user 4.4.4 GRJ90 C01B361SP01 release-keys");
        property_set("ro.build.fingerprint", "Honor/G621-TL00/hwG621-TL00:4.4.4/HonorG621-TL00/C01B361SP01:user/release-keys");
    }
    /* G620S-UL00 */
    else if (strstr(model, "G620S-UL") != NULL) {
        property_set("ro.product.model", "G620S-UL00");
        property_set("ro.product.name", "G620S-UL00");
        property_set("persist.radio.multisim.config", "dsds");
        property_set("persist.dsds.enabled", "true");
        property_set("ro.telephony.default_network", "9");
        property_set("ro.config.dsds_mode", "umts_gsm");
        property_set("ro.build.description", "G620S-UL00-user 4.4.4 GRJ90 C17B246 release-keys");
        property_set("ro.build.fingerprint", "Huawei/G620S-UL00/hwG620S-UL00:4.4.4/HuaweiG620S-UL00/C17B246:user/release-keys");
    }
    /* G620S-L01 */
    else if (strstr(model, "G620S-L01") != NULL) {
        property_set("ro.product.model", "G620S-L01");
        property_set("ro.product.name", "G620S-L01");
        property_set("ro.telephony.default_network", "9");
        property_set("ro.build.description", "G620S-L01-user 4.4.4 GRJ90 C00B380 release-keys");
        property_set("ro.build.fingerprint", "Huawei/G620S-L01/hwG620S-L01:4.4.4/HuaweiG620S-L01/C00B380:user/release-keys");
    }
    /* Che1-CL20 */
    else if (strstr(model, "Che1-CL20") != NULL) {
        property_set("ro.product.model", "Che1-CL20");
        property_set("ro.product.name", "4x");
        property_set("persist.radio.multisim.config", "dsds");
        property_set("persist.dsds.enabled", "true");
        property_set("ro.telephony.default_network", "22");
        property_set("telephony.lteOnCdmaDevice", "1");
        property_set("ro.cdma.home.operator.numeric", "46003");
        property_set("ro.config.cdma.globalMode", "true");
        property_set("ro.config.dsds_mode", "cdma_gsm");
        property_set("ro.build.description", "Che1-CL20-user 4.4.4 GRJ90 C00B275 release-keys");
        property_set("ro.build.fingerprint", "Honor/Che1-CL20/Che1:4.4.4/Che1-CL20/C00B275:user/ota-rel-keys,release-keys");
    }
    /* Che1-CL10 */
    else if (strstr(model, "Che1-CL10") != NULL) {
        property_set("ro.product.model", "Che1-CL10");
        property_set("ro.product.name", "Che1-CL10");
        property_set("persist.radio.multisim.config", "dsds");
        property_set("persist.dsds.enabled", "true");
        property_set("ro.telephony.default_network", "8");
        property_set("telephony.lteOnCdmaDevice", "1");
        property_set("ro.cdma.home.operator.numeric", "46003");
        property_set("ro.config.cdma.globalMode", "true");
        property_set("ro.config.dsds_mode", "cdma_gsm");
        property_set("ro.com.android.dataroaming","true");
        property_set("ro.build.description", "Che1-CL10-user 4.4.4 GRJ90 C92B275 release-keys");
        property_set("ro.build.fingerprint", "Honor/Che1-CL10/Che1:4.4.4/Che1-CL10/C92B275:user/ota-rel-keys,release-keys");
    }
    /* Che1-L04 */
    else if (strstr(model, "Che1-L04") != NULL) {
        property_set("ro.product.model", "Che1-L04");
        property_set("ro.product.name", "Che1-L04");
        property_set("persist.radio.multisim.config", "dsds");
        property_set("persist.dsds.enabled", "true");
        property_set("ro.telephony.default_network", "9");
        property_set("telephony.lteOnCdmaDevice", "1");
        property_set("ro.config.dsds_mode", "umts_gsm");
        property_set("ro.com.android.dataroaming","true");
        property_set("ro.build.description", "Che1-L04-user 4.4.4 GRJ90 C900B130 release-keys");
        property_set("ro.build.fingerprint", "Honor/Che1-L04/Che1:4.4.4/Che1-L04/C900B130:user/ota-rel-keys,release-keys");
    }
}
