# Integration checklist

This file records the engineering work still required; it is not a claim that these steps have been completed.

1. Import FIFA `WorldCup2010App`, the authoritative manifest, and FIFA patches from the pinned FIFA PC port commit.
2. Import only platform-neutral Android scaffolding patterns from Hell's Gate. Reconcile SDK versions and patch sets; do not transplant its Dante's Inferno game logic.
3. Confirm the exact ReXGlue manifest syntax for multiple XEX modules against the pinned SDK and the FIFA project. The placeholder manifest in this workspace must be validated before use.
4. Add Android Gradle project, SDL3 Android activity, JNI entry point, CMake targets, Vulkan backend/plugin packaging and SAF game-data provisioning.
5. Confirm the Xenos renderer's Android/Vulkan path supports the target GPU and the features required by FIFA. Vulkan 1.1 is a minimum target constraint, not proof of renderer compatibility.
6. Generate FIFA-specific C++ from the required game executable/module in a lawful private environment.
7. Build ARM64 APK in CI, install on the SM-N980F, and debug actual startup/rendering/input/audio issues.

## Known hard blocker

The public FIFA repository explicitly excludes the original game data and generated game code. Without the required executable input, step 6 cannot be performed. An APK built without that output would not contain FIFA gameplay.
