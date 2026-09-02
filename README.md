# Fabric Cosmetics Mod

Custom cosmetics (hats, capes, wings) for Minecraft **Fabric 1.21.11**.

## Build

Requires **JDK 21**.

### Linux / macOS / Git Bash

```bash
./gradlew build
```

### Windows CMD / PowerShell

```bat
gradlew.bat build
```

The first build downloads Gradle 9.2.1 automatically. The finished mod JAR is placed in `build/libs/`.

## Status

- [x] Fabric 1.21.11 Gradle build setup
- [x] Client cosmetic render layer scaffold
- [ ] Hat render model + texture
- [ ] Cape support
- [ ] Wings
- [ ] Config / GUI

## Development

```bash
./gradlew runClient
```

Toolchain: Minecraft 1.21.11, Java 21, Fabric Loader 0.18.4, Yarn 1.21.11+build.4, Fabric API 0.141.1+1.21.11, Fabric Loom 1.14-SNAPSHOT.
