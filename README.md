![Evolution X](https://github.com/Evolution-XYZ/manifest/raw/udc/Banner.png)

Let's build Evolution X for Xiaomi 12 Pro (zeus)!
---------------

## Pre-requisites and setting up build environment

LineageOS wiki covers everything necessary for setting up build environment. Please refer to [this wiki](https://lineage-wiki.mainlining.org/devices/zeus/build/) until you have successfully set up your build environment.

## Initialize local repository
```
repo init -u https://github.com/Evolution-XYZ/manifest -b vic --git-lfs
```

## Let's sync zeus specific trees!
```bash
git clone https://github.com/Evolution-X-Zeus/local_manifest.git .repo/local_manifests
```

## Sync up
```
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
```

## Apply required changes for zeus before building:

_Note: You may want to review those changes first before applying_
```bash
cp .repo/local_manifests/setup.sh ./
./setup.sh
```
_Note: If the cherry-pick command failed due to conflict, you may want to resolve the conflict manually_

## Build

- Set up the build environment
```bash
. build/envsetup.sh
```

- Lunch a target
```bash
lunch lineage_zeus-bp1a-userdebug
```

- To start compiling
```bash
m evolution
```
