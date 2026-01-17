<!-- Copilot instructions for the `murder_party` Flutter app -->
# Quick Context

- This is a Flutter application. The app entrypoint is `lib/main.dart` and the UI lives under `lib/`.
- Platform folders exist for Android, iOS, Linux, macOS and Windows — this repo contains native runner code under the respective directories (for example `linux/runner/`, `ios/Runner/`, `android/`).

# Big-picture architecture

- Single Flutter app (Dart) for multiple platforms. Business logic and UI live in `lib/`.
- Native integration points (plugins, platform channels, bundling) surface in platform folders (see `linux/flutter/generated_plugin_registrant.cc` and `ios/Runner/GeneratedPluginRegistrant.*`).
- There is no separate backend in this repo — treat this as a client app that may integrate with external services via HTTP or plugins.

# Developer workflows (commands you can run)

- Install packages: `flutter pub get`
- Analyze code / lints: `flutter analyze` (project uses `flutter_lints` and `analysis_options.yaml`).
- Run on a device/emulator: `flutter run -d <device-id>` (e.g. `-d linux`, `-d windows`, `-d emulator-5554`).
- Build release artifacts: `flutter build apk` / `flutter build ipa` / `flutter build linux` as needed.
- Run tests: `flutter test` (there is `test/widget_test.dart`).
- Use hot reload for iterative UI changes and hot restart when state reset is needed.

# Project-specific conventions & patterns

- Keep app code inside `lib/`. Small UI state is implemented with `StatefulWidget` (see `MyHomePage` in `lib/main.dart`).
- Linting: follow `analysis_options.yaml` and the `flutter_lints` rules — run `flutter analyze` before PRs.
- Dependencies live in `pubspec.yaml`. Add runtime packages under `dependencies:` and dev-only helpers under `dev_dependencies:`.
- Native assets and platform-specific code are organized under `native_assets/` and each platform top-level folder — modify platform code only when implementing native integrations.

# Integration points & notable files

- App entry: `lib/main.dart` — start here to understand the UI bootstrapping.
- App metadata & deps: `pubspec.yaml` — update versions and add packages here.
- Linting rules: `analysis_options.yaml` — enforce these rules in edits.
- Tests: `test/widget_test.dart` — use as a template for widget tests.
- Linux plugin registrant: `linux/flutter/generated_plugin_registrant.cc` (similar files exist per-platform).

# Editing guidance and examples

- Small UI tweak + quick test: edit `lib/main.dart`, then run `flutter run` and press `r` for hot reload.
- Add a dependency: update `pubspec.yaml`, run `flutter pub get`, then import the package in `lib/`.
- When changing native code (e.g. `linux/runner/`), rebuild the platform binary via `flutter run -d linux` or the corresponding `flutter build` command.

# What to avoid / assumptions

- Do not assume a backend exists in this repository; network calls must reference external endpoints if required.
- Avoid editing generated plugin registrant files unless you know the plugin registration flow for the target platform.

# If you need more context

- Start at `lib/main.dart`, then `pubspec.yaml`, then platform folders when native integration is relevant.
- If any CI, task automation, or extra agent docs exist, merge them into this file; none were found in the repo root when this file was created.

---
If anything above is unclear or you want more examples (CI, recommended PR checks, or contributor guidelines), tell me what to expand. 