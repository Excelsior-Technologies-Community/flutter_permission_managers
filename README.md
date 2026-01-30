# App Permission Manager

A professional and reusable **Flutter permission management library** with a clean, modern UI.  
Easily check, request, and manage app permissions with a **card-based professional look**.

---

## ✨ Features

- ✅ Check permission status
- 🔐 Request permissions
- ⚙️ Open app settings for permanently denied permissions
- 🎨 Professional card-based UI
- 📱 Android & iOS support
- ⚡ Lightweight & easy to integrate

---
## Preview

https://github.com/user-attachments/assets/68c40956-163f-49ea-aa18-1b3a48e369fc

---
## 🗂 Project Structure

```
app_permission_manager/
│
├── lib/
│   ├── app_permission_manager.dart
│   └── src/
│       ├── permission_manager.dart
│       └── permission_card.dart
│
├── example/
└── pubspec.yaml
```
---
## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_permision_manager:
    git:
      url: https://github.com/Excelsior-Technologies-Communitye/flutter_permision_manager.git
```
then run: 
```
flutter pub get
```
---
## 🚀 Basic Usage
```
PermissionCard(
          permission: Permission.camera,
          icon: Icons.camera_alt,
        ),
```
---
## 🛠 Required Setup
```
<uses-permission android:name="android.permission.CAMERA"/>
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
```
---
## ⚙️ PermissionCard Properties

| Property | Type | Required | Description |
|---------|------|----------|-------------|
| `permission` | `Permission` | ✅ Yes | Permission type (camera, location, storage, etc.) |
| `title` | `String` | ✅ Yes | Title shown to the user |
| `description` | `String` | ✅ Yes | Short explanation of why the permission is needed |
| `icon` | `IconData` | ✅ Yes | Icon representing the permission |

---
## 📄 License
MIT LICENSE
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this Flutter Image Compression library and associated documentation files
(the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT, OR OTHERWISE, ARISING FROM,
OUT OF, OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
