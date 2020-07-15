#
# Copyright (C) 2020 The LineageOS Project
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

PRODUCT_PROPERTY_OVERRIDES +=  \
	DEVICE_PROVISIONED=1 \
	af.fast_track_multiplier=1 \
	audio.deep_buffer.media=true \
	audio.offload.min.duration.secs=30 \
	audio.offload.video=true \
	audio_para_version=C3K-Audiopara-V15-20191111 \
	camera.hal1.packagelist=com.skype.raider,com.google.android.talk \
	debug.egl.hw=1 \
	debug.sf.hw=1 \
	persist.audio.parameter.ce=0 \
	persist.bg.dexopt.enable=true \
	persist.dpm.feature=0 \
	persist.vendor.audio.button_jack.profile=volume \
	persist.vendor.audio.button_jack.switch=0 \
	persist.vendor.bluetooth.modem_nv_support=true \
	persist.vendor.ctm.disallowed=true \
	persist.vendor.sensor.hw.binder.size=8 \
	rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so \
	rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so \
	ro.config.max_starting_bg=8 \
	ro.sar.netdata.enable=true \
	ro.vendor.audio.sos=true \
	vendor.iop.enable_prefetch_ofr=0 \
	vendor.iop.enable_uxe=0 \
	vendor.mediacodec.binder.size=4 \
	vendor.rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so \