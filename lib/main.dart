import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dextercare/app.dart';
import 'package:dextercare/utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // This app is designed only to work vertically, so we limit
  // orientations to portrait up and down.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);

  // Add Google Fonts Licensing
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString(AssetsFontsGoogleFonts.oflTXT);
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  // Setup Environmental variables & Service provider
  await BuildEnvironment.init();

  runApp(const AppView());
}
