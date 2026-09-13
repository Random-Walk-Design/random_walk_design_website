import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    final activePath = context.url;

    return header(classes: 'site-header', [
      nav(classes: 'nav-shell', [
        Link(
          to: '/',
          child: div(classes: 'brand-lockup', [
            img(
              classes: 'brand-mark',
              src: '/images/logo-mark-160.png',
              alt: '',
            ),
            span(classes: 'brand-name', [.text('Random Walk Design')]),
          ]),
        ),
        div(classes: 'nav-links', [
          for (var route in [
            (label: 'Home', path: '/'),
            (label: 'Apps', path: '/apps'),
            (label: 'About', path: '/about'),
          ])
            Link(
              to: route.path,
              classes: activePath == route.path ? 'active' : null,
              child: .text(route.label),
            ),
        ]),
      ]),
    ]);
  }
}
