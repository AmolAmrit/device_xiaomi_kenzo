#
# Copyright (C) 2018 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    audio.offload.disable=1 \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    audio.offload.video=true \
    persist.vendor.audio.fluence.audiorec=false \
    persist.audio.fluence.spk.mono=true \
    persist.vendor.audio.fluence.voicerec=false \
    vendor.voice.voip.conc.disabled=true \
    audio.offload.multiaac.enable=true

#  Camera Force HAL1 in these packages
PRODUCT_PROPERTY_OVERRIDES += \
    camera.hal1.packagelist=com.skype.raider,com.google.android.GoogleCamera,com.tencent.mm

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.cs_srv_type=1 \
    persist.radio.force_on_dc=true \
    persist.radio.redir_party_num=0 \
    persist.radio.start_ota_daemon=1

# Codecs: (PARSER_) AAC AC3 AMR_NB AMR_WB ASF AVI DTS FLV 3GP 3G2 MKV MP2PS MP2TS MP3 OGG QCP WAV FLAC AIFF APE
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.qcom_parser=1048575 \
    persist.mm.enable.prefetch=true \
    av.debug.disable.pers.cache=true \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true

# System prop for RmNet Data
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rmnet.data.enable=true \
    persist.data.wda.enable=true \
    persist.data.df.dl_mode=5 \
    persist.data.df.ul_mode=5 \
    persist.data.df.agg.dl_pkt=10 \
    persist.data.df.agg.dl_size=4096 \
    persist.data.df.mux_count=8 \
    persist.data.df.iwlan_mux=9 \
    persist.data.df.dev_name=rmnet_usb0

# Property to enable VDS WFD solution
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.enable_vds=1
