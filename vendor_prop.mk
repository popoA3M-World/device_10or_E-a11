#
# Copyright (C) 2018 The LineageOS Project
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
    af.fast_track_multiplier=1 \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    audio.deep_buffer.media=true \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.speaker.prot.enable=false \
    persist.vendor.bt.enable.splita2dp=false \
    persist.vendor.audio.hw.binder.size_kbyte=1024 \
    ro.config.media_vol_steps=15 \
    ro.config.vc_call_vol_steps=7 \
    ro.vendor.audio.sdk.fluencetype=fluence \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio_hal.period_size=240 \
    vendor.audio.hw.aac.encoder=true \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.playback.mch.downsample=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    vendor.audio.offload.track.enable=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.pp.asphere.enabled=false \
    vendor.audio.safx.pbe.enabled=true \
    vendor.tunnel.audio.encode=false \
    vendor.voice.conc.fallbackpath=deep-buffer \
    ro.af.client_heap_size_kbyte=7168 \
    vendor.voice.path.for.pcm.voip=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac-ldac-aptxadaptive \
    persist.bluetooth.a2dp_offload.disabled=true \
    persist.vendor.bluetooth.modem_nv_support=true \
    vendor.bluetooth.soc=smd \
    vendor.qcom.bluetooth.soc=smd

#BPF
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.ebpf.supported=true

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.hal1.packagelist=com.whatsapp,com.facebook.katana,com.instagram.android,com.snapchat.android \
    persist.vendor.camera.display.umax=1920x1080 \
    persist.vendor.camera.display.lmax=1280x720 \
    persist.camera.imglib.cac3=2 \
    persist.camera.isp.clock.optmz=0 \
    vendor.vidc.enc.narrow.searchrange=1 \
    camera.lowpower.record.enable=1 \
    persist.vendor.qti.telephony.vt_cam_interface=1 \
    persist.camera.gyro.android=0 \
    persist.camera.HAL3.enabled=1 \
    persist.camera.is_type=1 \
    vidc.enc.dcvs.extra-buff-count=2 \
    persist.ts.rtmakeup=true \
    media.camera.ts.monotonic=1

# Charger
PRODUCT_PROPERTY_OVERRIDES += \
   ro.charger.enable_suspend=true \
   ro.charger.disable_init_blank=true

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1

# Dalvik dex2oat
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat64.enabled=true

# DPM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.dpm.feature=0

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610 \
    ro.vendor.display.cabl=2 \
    ro.sf.lcd_density=320 \
    vendor.display.enable_default_color_mode=1

# Fm
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.transmitter=false

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.gps.agps_provider=1

PRODUCT_PROPERTY_OVERRIDES += \
    ro.location.osnlp.package=com.google.android.gms \
    ro.location.osnlp.region.package=""

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=0 \
    debug.enable.sglscale=1 \
    debug.gralloc.enable_fb_ubwc=1 \
    debug.sf.enable_hwc_vds=1 \
    vendor.gralloc.enable_fb_ubwc=1 \
    debug.sf.hw=0 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.recomputecrop=0 \
    dev.pm.dyn_samplingrate=1 \
    persist.hwc.mdpcomp.enable=true \
    persist.demo.hdmirotationlock=false \
    persist.hwc.enable_vds=1 \
    persist.sys.wfd.virtual=0 \
    sdm.debug.disable_rotator_split=1 \
    vendor.display.disable_skip_validate=1 \
    sdm.debug.disable_skip_validate=1 \
    debug.sf.disable_backpressure=1 \
    sdm.perf_hint_window=50 \
    ro.hardware.egl=adreno \
    ro.hardware.vulkan=adreno

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.qcom_parser=4176895 \
    media.stagefright.audio.sink=280 \
    vendor.vidc.disable.split.mode=1 \
    vendor.vidc.enc.disable_bframes=1 \
    vendor.vidc.enc.disable_pframes=1 \
    vendor.vidc.enc.disable.pq=true \
    vendor.vidc.enc.narrow.searchrange=1 \
    vendor.video.disable.ubwc=1 \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0 \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    media.msm8956hw=0 \
    mmp.enable.3g2=true \
    media.aac_51_output_enabled=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    persist.radio.multisim.config=dsds \
    ro.telephony.default_network=9,1 \
    ro.telephony.call_ring.multiple=false \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.data.mode=concurrent \
    persist.vendor.data.iwlan.enable=true \
    persist.sys.fflag.override.settings_network_and_internet_v2=true \
    ro.telephony.use_old_mnc_mcc_format=true

# Time Services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.delta_time.enable=true \

# Usb
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.sys.usb.config.extra=none

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Perf
PRODUCT_PROPERTY_OVVERIDES += \
   ro.vendor.extension_library=libqti-perfd-client.so \
   ro.vendor.qti.sys.fw.bg_apps_limit=60

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ct.device.model=XMP-2016030

# IOP and Workload Classifier props
PRODUCT_PROPERTY_OVERRIDES += \
   vendor.enable_prefetch=1 \
   vendor.iop.enable_uxe=1 \
   vendor.iop.enable_prefetch_ofr=1 \
   vendor.perf.iop_v3.enable=1 \
   persist.vendor.qti.games.gt.prof=1 \
   vendor.perf.workloadclassifier.enable=true \
   vendor.perf.gestureflingboost.enable=true

# SurfaceFlinger sensor props
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_virtual_display_dimension=4096 \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    debug.sf.use_phase_offsets_as_durations=1 \

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    debug.sf.use_phase_offsets_as_durations=1 \
    debug.sf.late.sf.duration=10500000 \
    debug.sf.late.app.duration=20500000 \
    debug.sf.early.sf.duration=21000000 \
    debug.sf.early.app.duration=16500000 \
    debug.sf.earlyGl.sf.duration=13500000 \
    debug.sf.earlyGl.app.duration=21000000

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
wifi.interface=wlan0

# Force wifi interface for wlan0
wifi.interface=wlan0

# property to enable user to access Google WFD settings.
PRODUCT_PROPERTY_OVERRIDES += \
persist.debug.wfd.enable=1

#Blur
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1

# Adreno
PRODUCT_PRODUCT_PROPERTIES += \
ro.hardware.vulkan=adreno \
ro.hardware.egl=adreno
