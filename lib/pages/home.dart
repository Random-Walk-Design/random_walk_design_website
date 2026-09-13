import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(classes: 'hero section-wrap', [
        div(classes: 'hero-copy', [
          h1([
            span(classes: 'heading-line', [.text('> Problem')]),
            span(classes: 'heading-line', [.text('> Solution')]),
            span(classes: 'heading-line', [.text('> App')]),
            span(classes: 'heading-line', [.text('> You')]),
          ]),
          p(classes: 'lede', [
            .text(
              'We find problems. We solve problems.',
            ),
          ]),
          div(classes: 'hero-actions', [
            Link(
              to: '/apps',
              classes: 'button primary',
              child: .text('Explore the apps'),
            ),
            Link(
              to: '/about',
              classes: 'button secondary',
              child: .text('Meet the founders'),
            ),
          ]),
        ]),
        div(classes: 'hero-panel', [
          img(
            classes: 'hero-visual',
            src: '/images/app-portfolio-hero-fastr.jpg',
            alt: 'Three phone mockups showing Fastr app screens on a desk',
          ),
          div(classes: 'signal-card large', [
            span(classes: 'mini-label', [.text('Current focus')]),
            h2([.text('Fastr')]),
            p([
              .text(
                'Fasting made simple, quick, and free.',
              ),
            ]),
            p(classes: 'signal-footnote', [
              .text(
                'Alpha version in the works. Coming to iPhone, first.',
              ),
            ]),
          ]),
        ]),
      ]),
      Link(
        to: '/apps',
        classes: 'section-wrap cta-section cta-link home-cta',
        attributes: const {
          'aria-label': 'Explore our apps',
        },
        children: [
          div([
            h2([.text('Explore our apps')]),
            p([
              .text(
                'Discover and download our artisanal apps.',
              ),
            ]),
          ]),
        ],
      ),
    ]);
  }
}
