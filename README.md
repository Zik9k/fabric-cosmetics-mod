# Fabric Cosmetics Mod

Custom cosmetics (hats, capes, wings) for Minecraft Fabric 1.21.4.

## Build

Requires **JDK 21**.

### Linux / macOS

```bash
./gradlew build
```

### Windows

```bat
gradlew.bat build
```

The first build downloads Gradle automatically. The finished mod JAR is placed in `build/libs/`.

## Status

- [x] Fabric 1.21.4 Gradle build setup
- [x] Client cosmetic render layer scaffold
- [ ] Hat render model + texture
- [ ] Cape support
- [ ] Wings
- [ ] Config / GUI

## Development

```bash
./gradlew runClient
```

The project uses Java 21, Fabric Loader 0.16.14, Yarn 1.21.4+build.8, Fabric API 0.119.4+1.21.4 and Fabric Loom 1.9.2.
