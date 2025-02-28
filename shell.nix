{ mkShell, zephyr, callPackage, cmake, ninja, clang, dfu-util, sphinx, doxygen
, lib, }:

mkShell {
  packages = [
    # (zephyr.sdk.override { targets = [ "arm-zephyr-eabi" ]; })
    zephyr.sdkFull
    zephyr.pythonEnv
    zephyr.hosttools-nix
    cmake
    ninja
    clang
    dfu-util
    sphinx
    doxygen
  ];
}

