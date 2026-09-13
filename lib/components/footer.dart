import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Component build(BuildContext context) {
    return footer(classes: 'site-footer', [
      div(classes: 'footer-brand', [
        img(
          classes: 'brand-mark',
          src: '/images/logo-mark-160.png',
          alt: '',
        ),
        div([
          strong([.text('Random Walk Design')]),
          p([.text('Solving every problem we find.')]),
        ]),
      ]),
      div(classes: 'footer-links', [
        Link(to: '/', child: .text('Home')),
        Link(to: '/apps', child: .text('Apps')),
        Link(to: '/about', child: .text('About')),
      ]),
    ]);
  }
}
