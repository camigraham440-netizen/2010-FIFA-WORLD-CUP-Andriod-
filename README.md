# FIFA World Cup 2010 — Android/ReXGlue integration workspace

**Status: integration scaffold, not a playable port or APK yet.** This repository is intended to collect the reusable FIFA-specific source and the Android/ReXGlue platform layer. It deliberately contains no Xbox 360 game files, generated FIFA code, game assets, or binaries.

## Primary upstream sources

1. **FIFA game-specific implementation** — https://github.com/RamiChaaben8/Fifa_World_Cup_2010_PC_Port
   - Use its `WorldCup2010App`, manifest, FIFA-specific patches, module configuration, and code-generation conventions.
   - Pinned upstream commit: `7ca2bea8675ccc4dda4b911938a0110a32a5ac27` (verify before updating).
2. **Android ReXGlue implementation reference** — https://github.com/deivid22srk/hells-gate-recomp-android
   - Use as the reference for Android Gradle/NDK, SDL3, Vulkan, SAF and ARM64 integration.
   - This is a Dante's Inferno project. Its game-specific app code, manifest, generated code and patches must NOT be copied as FIFA implementation.
3. **ReXGlue SDK** — https://github.com/rexglue/rexglue-sdk
   - FIFA PC port pins SDK commit `c94f5ebdcb3c9d1a460ca48e04f9758448f8d518`.
   - Do not silently substitute the Android reference's SDK version; reconcile required patches against the pinned FIFA SDK first.

## Build prerequisites

- Linux x86_64 GitHub Actions runner (host-side code generation)
- JDK 17 or newer
- Android SDK, NDK and CMake versions matching the selected Android reference after SDK-patch reconciliation
- Clang 18+, CMake 3.25+, Ninja for host code generation
- ReXGlue-compatible FIFA game inputs and generated C++ output

## Required build inputs

The original FIFA project documents an Xbox 360 ISO as its input and runs `extract-xiso` before ReXGlue code generation. The project identifies `default.xex` and the additional `fifadllzf.xex` module. The generated code is game-specific and cannot be fabricated from the public Android scaffolding.

Keep game inputs outside Git. Do not upload copyrighted game files to a public repository. Do not add them to GitHub Actions artifacts or logs. If you own the game, use a private, access-controlled build environment and comply with the game's licence and applicable law.

## Repository layout target

```text
.
├── .github/workflows/android.yml
├── android/                 # Android Gradle app, activities, manifest, JNI/CMake
├── src/                     # FIFA WorldCup2010App and Android native entry point
├── patches/                 # SDK patches; separate FIFA and Android patch sets
├── scripts/                 # setup, host codegen, Android build
├── generated/               # generated FIFA C++ (gitignored; produced by codegen)
├── game/                    # local game inputs (gitignored; never commit)
├── worldcup2010_manifest.toml
├── CMakeLists.txt
└── README.md
```

## Important integration rule

Do not copy the Hell's Gate manifest, app class, generated sources, or game patches into this project. The valid merge is: FIFA-specific app/manifest/codegen configuration from the FIFA project + Android platform scaffolding from the Android reference + a single reconciled ReXGlue SDK/patch set. This has not yet been compiled or validated end-to-end.

## Build gate

The GitHub Actions workflow checks that `generated/default/sources.cmake` exists before attempting Gradle. If it is absent, the workflow fails with a clear message rather than producing a misleading placeholder APK. The current public sources do not provide those FIFA-generated files.

## Device target

Target ABI: `arm64-v8a`. Android Vulkan requirement should remain Vulkan 1.1 (`0x00401000`) unless a specific renderer feature is proven to require a higher version. Vulkan 1.1 support alone does not guarantee that every renderer feature is supported by the Mali-G77 GPU.
