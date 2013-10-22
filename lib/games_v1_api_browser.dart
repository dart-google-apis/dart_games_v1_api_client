library games_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_games_v1_api/src/browser_client.dart';
import "package:google_games_v1_api/games_v1_api_client.dart";

/** The API for Google Play Game Services. */
class Games extends Client with BrowserClient {

  /** OAuth Scope2: View and manage your game activity */
  static const String GAMES_SCOPE = "https://www.googleapis.com/auth/games";

  /** OAuth Scope2: Know your basic profile info and list of people in your circles. */
  static const String PLUS_LOGIN_SCOPE = "https://www.googleapis.com/auth/plus.login";

  final oauth.OAuth2 auth;

  Games([oauth.OAuth2 this.auth]);
}
