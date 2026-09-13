/// The entrypoint for the **server** environment.
///
/// The [main] method will only be executed on the server during pre-rendering.
/// To run code on the client, check the `main.client.dart` file.
library;

import 'package:jaspr/dom.dart';
// Server-specific Jaspr import.
import 'package:jaspr/server.dart';

// Imports the [App] component.
import 'app.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'main.server.options.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(options: defaultServerOptions);

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(
    Document(
      title: 'Random Walk Design',
      meta: const {
        'description':
            'Random Walk Design creates focused consumer apps and brings them directly to the people they serve.',
      },
      head: [
        link(rel: 'icon', href: '/favicon.ico'),
        link(
          rel: 'icon',
          href: '/favicon-32x32.png',
          attributes: {'sizes': '32x32', 'type': 'image/png'},
        ),
        link(
          rel: 'icon',
          href: '/favicon-16x16.png',
          attributes: {'sizes': '16x16', 'type': 'image/png'},
        ),
        link(rel: 'apple-touch-icon', href: '/apple-touch-icon.png'),
        link(rel: 'manifest', href: '/site.webmanifest'),
        link(rel: 'preconnect', href: 'https://fonts.googleapis.com'),
        link(
          rel: 'preconnect',
          href: 'https://fonts.gstatic.com',
          attributes: {'crossorigin': ''},
        ),
        link(
          rel: 'stylesheet',
          href: 'https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap',
        ),
        link(rel: 'stylesheet', href: '/styles.css'),
      ],
      body: const App(),
    ),
  );
}
