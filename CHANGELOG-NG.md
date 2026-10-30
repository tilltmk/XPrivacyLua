# XPrivacyLua NG Changelog

## Version 1.37-NG (2026-10-30)

### Behoben (Android 14, LSPosed, Galaxy A54 geprüft)

- **Keine Hooks geladen:** `hooks.json` verwies auf nicht vorhandene Lua-Skripte (`@generic_null`, `@generic_zero`, `generic_fake_build_serial`) und enthielt
  `Privacy.Build.getSerial` doppelt. Ein einziger kaputter Eintrag ließ `XHook.readHooks` für alle Hooks scheitern. Verweise korrigiert, Duplikat entfernt.
- **Pro-Hook-Toleranz:** `XHook.readHooks` und `XProvider.loadHooks` überspringen einen kaputten Eintrag mit Logeintrag (`XLua.Hook`), statt alle zu verlieren.
- **Lua-Engine startete nicht** (`bind failed … Bit32LibV cannot be instantiated`, 512 Ausnahmen, Flut von Fehlerbenachrichtigungen): R8 entfernte die Konstruktoren
  der LuaJ-Klassen, die LuaJ reflektiv erzeugt. `-keepnames` durch `-keep class org.luaj.vm2.** {*; }` ersetzt.
- **Bauprüfung:** Die Gradle-Aufgabe `validateHooks` bricht den Bau ab, wenn `hooks.json` eine ID doppelt führt oder ein referenziertes Lua-Skript fehlt.
- `*.keystore` in `.gitignore`.
- **Endloser Ladekreis:** `FragmentMain` setzte ein fehlendes `theme` auf `"light"`, `ActivityBase.getThemeName()` meldet dafür `"auto"`; `onLoadFinished` rief deshalb
  bei jedem Laden `recreate()` auf (gemessen: alle 1,4 s `Schedule relaunch activity`). Standard jetzt `"auto"` auf beiden Seiten.

## Version 1.36-NG (2025-01-14)

### Initial NG Fork Release

**New Features:**
- Fork of XPrivacyLua with enhanced privacy features
- Modern tracking prevention for 2025+ apps
- Improved Material Design 3 UI with modern styling
- Aggressive privacy hooks for contemporary tracking methods

**Technical Changes:**
- Package ID changed to `eu.tilltmk.xlua.ng` (allows parallel installation with original XPrivacyLua)
- Provider authority updated to `eu.tilltmk.xlua.ng.vxp`
- New signing certificate (CN=tilltmk, OU=XPrivacyLua NG)
- App name: "XPrivacyLua NG (tilltmk)"

**Certificate Fingerprints:**
- SHA-256: `80:19:32:14:06:5A:35:97:C5:D5:6F:58:DA:D5:10:7E:9F:64:0F:FE:B7:F1:44:F2:DA:1C:29:CD:68:0D:1F:23`
- SHA-1: `86:2C:B0:7A:EF:96:41:EF:2E:CB:2C:30:AA:37:E6:43:4E:BF:42:55`
- MD5: `F8:83:76:68:B8:44:B8:23:8D:25:68:37:F3:21:DA:68`

**Compatibility:**
- Android 6.0 Marshmallow and later
- LSPosed framework required for Android 8.0+
- Can be installed alongside original XPrivacyLua

**Build Information:**
- Version Code: 137
- Version Name: 1.36
- Compile SDK: 34 (Android 14)
- Min SDK: 23 (Android 6.0)
- Target SDK: 34 (Android 14)

---

Based on the original XPrivacyLua by M66B
