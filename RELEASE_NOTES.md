# XPrivacyLua NG v1.36 - Initial Release

## 🎉 First Official Release

This is the initial release of **XPrivacyLua NG (tilltmk)** - a community-maintained fork of XPrivacyLua with enhanced privacy features and modern tracking prevention.

## ✨ Key Features

### Enhanced Privacy Protection
- **Modern Tracking Prevention**: Aggressive privacy hooks for contemporary tracking methods used in 2025+ apps
- **Improved Material Design 3 UI**: Updated interface with modern styling
- **All Original Features**: Maintains full compatibility with original XPrivacyLua functionality

### Parallel Installation Support
- **Different Package ID**: Uses `eu.tilltmk.xlua.ng` allowing installation alongside original XPrivacyLua
- **Independent Signing**: Signed with separate certificate for security and independence
- **Shared Data Storage**: Compatible with `/data/system/xlua` storage location

## 🔧 Technical Details

**Package Information:**
- Package ID: `eu.tilltmk.xlua.ng`
- Version: 1.36 (Build 137)
- Min SDK: 23 (Android 6.0)
- Target SDK: 34 (Android 14)

**Certificate Fingerprints:**
- SHA-256: `80:19:32:14:06:5A:35:97:C5:D5:6F:58:DA:D5:10:7E:9F:64:0F:FE:B7:F1:44:F2:DA:1C:29:CD:68:0D:1F:23`
- SHA-1: `86:2C:B0:7A:EF:96:41:EF:2E:CB:2C:30:AA:37:E6:43:4E:BF:42:55`
- MD5: `F8:83:76:68:B8:44:B8:23:8D:25:68:37:F3:21:DA:68`

## 📦 Installation Instructions

### Requirements
1. **Magisk** installed
2. **LSPosed** framework (for Android 8.0+)
3. Root access

### Installation Steps
1. Download `XPrivacyLua-NG-v1.36-137-release.apk`
2. Install the APK
3. Open LSPosed Manager
4. Enable the XPrivacyLua NG module
5. Configure module scope:
   - ✅ `android` (System Framework)
   - ✅ `com.android.providers.settings`
   - ✅ `eu.tilltmk.xlua.ng` (the module itself)
   - ✅ Add any apps you want to restrict
6. Reboot your device (hard reboot required)
7. Open XPrivacyLua NG app
8. Start configuring privacy restrictions

## 🐛 Bug Fixes

This release includes critical fixes:
- ✅ Fixed Xposed module detection ("Module not running or updated" error)
- ✅ Updated Xposed scopes to match new package ID
- ✅ Fixed content provider URI for VirtualXposed compatibility

## 📚 Documentation

- [README](https://github.com/tilltmk/XPrivacyLua/blob/master/README.md)
- [FAQ](https://github.com/tilltmk/XPrivacyLua/blob/master/FAQ.md)
- [Changelog](https://github.com/tilltmk/XPrivacyLua/blob/master/CHANGELOG-NG.md)

## ⚠️ Important Notes

- This is a **fork** of the original XPrivacyLua by M66B
- Can be installed **alongside** the original XPrivacyLua
- Both versions share the same data storage location (`/data/system/xlua`)
- A **hard reboot** is required after installation/activation
- Make sure to add apps to LSPosed module scope to restrict them

## 🙏 Credits

Based on the original [XPrivacyLua](https://github.com/M66B/XPrivacyLua) by M66B.

---

**Full Changelog**: https://github.com/tilltmk/XPrivacyLua/commits/master
