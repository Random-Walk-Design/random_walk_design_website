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

const _siteName = 'Random Walk Design';
const _siteTitle = 'Random Walk Design | We find problems. We solve problems.';
const _siteDescription =
    'Random Walk Design is a founder-led product studio building practical consumer apps like Fastr and Meeple Math.';
const _siteUrl = 'https://randomwalk.design/';
const _socialImageUrl = '${_siteUrl}images/app-portfolio-hero-fastr.jpg';
const _logoUrl = '${_siteUrl}images/logo_on-dark_small.png';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(options: defaultServerOptions);

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(
    Document(
      title: _siteTitle,
      meta: const {
        'application-name': _siteName,
        'author': _siteName,
        'description': _siteDescription,
        'keywords':
            'Random Walk Design, consumer apps, mobile apps, Fastr, fasting tracker, Meeple Math, product studio',
        'robots': 'index, follow',
        'theme-color': '#141413',
      },
      head: [
        link(rel: 'canonical', href: _siteUrl),
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
        meta(name: 'apple-mobile-web-app-title', content: _siteName),
        meta(name: 'mobile-web-app-capable', content: 'yes'),
        meta(name: 'color-scheme', content: 'light'),
        meta(
          attributes: {'property': 'og:site_name'},
          content: _siteName,
        ),
        meta(
          attributes: {'property': 'og:title'},
          content: _siteTitle,
        ),
        meta(
          attributes: {'property': 'og:description'},
          content: _siteDescription,
        ),
        meta(
          attributes: {'property': 'og:type'},
          content: 'website',
        ),
        meta(
          attributes: {'property': 'og:url'},
          content: _siteUrl,
        ),
        meta(
          attributes: {'property': 'og:image'},
          content: _socialImageUrl,
        ),
        meta(
          attributes: {'property': 'og:image:secure_url'},
          content: _socialImageUrl,
        ),
        meta(
          attributes: {'property': 'og:image:type'},
          content: 'image/jpeg',
        ),
        meta(
          attributes: {'property': 'og:image:width'},
          content: '1120',
        ),
        meta(
          attributes: {'property': 'og:image:height'},
          content: '700',
        ),
        meta(
          attributes: {'property': 'og:image:alt'},
          content: 'Three phone mockups showing Fastr app screens on a desk',
        ),
        meta(
          attributes: {'property': 'og:locale'},
          content: 'en_US',
        ),
        meta(name: 'twitter:card', content: 'summary_large_image'),
        meta(name: 'twitter:title', content: _siteTitle),
        meta(name: 'twitter:description', content: _siteDescription),
        meta(name: 'twitter:image', content: _socialImageUrl),
        meta(
          name: 'twitter:image:alt',
          content: 'Three phone mockups showing Fastr app screens on a desk',
        ),
        script(
          attributes: {'type': 'application/ld+json'},
          content:
              '''
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "Organization",
      "@id": "$_siteUrl#organization",
      "name": "$_siteName",
      "url": "$_siteUrl",
      "logo": "$_logoUrl",
      "description": "$_siteDescription",
      "sameAs": [
        "https://x.com/suprdeclarative",
        "https://x.com/imafiguresk8r"
      ]
    },
    {
      "@type": "WebSite",
      "@id": "$_siteUrl#website",
      "name": "$_siteName",
      "url": "$_siteUrl",
      "description": "$_siteDescription",
      "publisher": {
        "@id": "$_siteUrl#organization"
      }
    }
  ]
}
''',
        ),
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
