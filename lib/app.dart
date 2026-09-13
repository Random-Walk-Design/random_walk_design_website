import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/footer.dart';
import 'components/header.dart';
import 'pages/about.dart';
import 'pages/apps.dart';
import 'pages/home.dart';

class App extends StatelessComponent {
  const App({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'site-shell', [
      const Header(),
      Component.element(
        tag: 'main',
        classes: 'site-main',
        children: [
          Router(
            routes: [
              Route(
                path: '/',
                title: 'Random Walk Design',
                builder: (context, state) => const Home(),
              ),
              Route(
                path: '/apps',
                title: 'Apps | Random Walk Design',
                builder: (context, state) => const AppsPage(),
              ),
              Route(
                path: '/about',
                title: 'About | Random Walk Design',
                builder: (context, state) => const About(),
              ),
            ],
          ),
        ],
      ),
      const Footer(),
    ]);
  }
}
