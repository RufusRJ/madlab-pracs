# MADLab Practicals — Flutter Projects

A monorepo containing 14 Flutter learning tasks, showcasing fundamental UI concepts and patterns.

## Project Structure

```
madlab-pracs/
├── task_1/    # Simple User Profile UI
├── task_2/    # Form Input & Validation
├── task_3/    # ListView with Mock Data
├── task_4/    # Navigation Between Screens
├── task_5/    # Fade-In Animation
├── task_6/    # ListView of Items
├── task_7/    # JSON Parsing & Display
├── task_8/    # Bottom Navigation
├── task_9/    # Widget Test Example
├── task_10/   # Draggable & DragTarget
├── task_11/   # Image Gallery with GestureDetector
├── task_12/   # Color Toggler
├── task_13/   # AnimatedContainer demo
├── task_14/   # TabBar layout
└── README.md
```

## Quick Start

### Prerequisites
- **Flutter 3.38+** (stable channel)
- **Dart 3.10+**

### Install Flutter

**On Windows/Mac/Linux:**
- Download from https://flutter.dev/docs/get-started/install
- Add `<flutter-sdk>/bin` to your PATH
- Run `flutter doctor` to verify

**In GitHub Codespaces (this environment):**
- Flutter is already installed at `/workspaces/madlab-pracs/.flutter/bin`
- The PATH is configured in `~/.bashrc`

### Run a Task

```bash
# Navigate to a task
cd /workspaces/madlab-pracs/task_1

# Get dependencies
flutter pub get

# Run on web (headless, works in Codespaces)
flutter run -d web-server

# Or run on a physical device / emulator
flutter devices          # list available devices
flutter run -d <device>  # replace <device> with device ID
```

### Codespaces Web Server

When running `flutter run -d web-server` in Codespaces, the app is served at `http://localhost:<port>`. The exact port is printed in the terminal output — typically `http://localhost:45229` or similar.

To access from your Windows machine:
- Codespaces will provide a "Ports" tab or forwarded URL.
- Open that URL in your browser to see the running Flutter app.

## Task Descriptions

| Task | Objective | Key Concepts |
|------|-----------|--------------|
| **task_1** | Simple User Profile UI | Column, CircleAvatar, Text, basic layout |
| **task_2** | Form Input & Validation | TextField, Form, validation, state management |
| **task_3** | ListView with Mock Data | ListView, ListTile, scroll, data binding |
| **task_4** | Navigation Between Screens | Navigator, routes, page transitions |
| **task_5** | Bottom Navigation | BottomNavigationBar, TabController, multiple pages |
| **task_6** | Image Gallery | Image widget, GridView, asset/network images |
| **task_7** | Custom Widgets | Stateful widgets, composition, reusability |
| **task_8** | API Integration (Mock) | HTTP requests, JSON parsing, FutureBuilder |
| **task_9** | Local Storage (Shared Preferences) | Persistence, SharedPreferences plugin |
| **task_10** | Animation Basics | AnimationController, Tween, AnimatedBuilder |
| **task_11** | Drawer Navigation | Drawer, ListTile navigation, sidebar UI |
| **task_12** | Dialog & Bottom Sheet | AlertDialog, showModalBottomSheet, user feedback |
| **task_13** | Responsive Layout | MediaQuery, LayoutBuilder, adaptive UI |
| **task_14** | TabBar Layout | TabBar, TabBarView, DefaultTabController |

## Development

### Code Analysis & Formatting

```bash
# Run static analysis
flutter analyze

# Format code
dart format .
```

### Run Tests

```bash
cd task_1
flutter test
```

### Debugging

- **Hot Reload:** Press `r` in the terminal while `flutter run` is active.
- **Hot Restart:** Press `R` to restart the app (clears state).
- **DevTools:** Flutter provides web-based DevTools for inspecting widgets, performance, and logs.

## Useful Commands

```bash
# List available Flutter devices
flutter devices

# Upgrade Flutter and packages
flutter upgrade

# Clean build artifacts
flutter clean

# Get dependencies for all tasks
find . -name "pubspec.yaml" -exec sh -c 'cd $(dirname "$1") && flutter pub get' _ {} \;
```

## Troubleshooting

### "flutter: command not found"
- Ensure Flutter is in your PATH: `echo $PATH | grep flutter`
- Or run the full path: `/workspaces/madlab-pracs/.flutter/bin/flutter --version`

### "No connected devices"
- Run `flutter doctor` to diagnose issues.
- Start an Android emulator: `flutter emulators --launch <emulator-id>`
- Or connect a physical device with USB debugging enabled.

### Web app won't load
- Make sure the Flutter web-server is still running (check terminal).
- Try a different port: `flutter run -d web-server --web-port=8080`
- Clear browser cache and hard-refresh (Ctrl+Shift+R or Cmd+Shift+R).

### Dependency conflicts
- Delete `pubspec.lock`: `rm pubspec.lock`
- Re-fetch: `flutter pub get`

## Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Flutter API Reference](https://api.flutter.dev)
- [Dart Language Guide](https://dart.dev/guides)
- [Flutter Codelabs](https://codelabs.developers.google.com/?product=flutter)

## License

These practicals are for educational purposes. Modify and use as needed for your learning.

---

**Happy coding!** 🚀