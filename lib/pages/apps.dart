import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class AppsPage extends StatelessComponent {
  const AppsPage({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(classes: 'page-hero section-wrap narrow', [
        p(classes: 'eyebrow', [.text('Solution Portfolio')]),
        h1([.text('Problems we\'re solving.')]),
        p(classes: 'lede', [
          .text(
            'Take a walk through the apps we\'re building to solve your problems.',
          ),
        ]),
      ]),
      section(classes: 'section-wrap product-roadmap', [
        _ProductLane(
          label: 'v0.1',
          title: 'Fastr',
          body: 'Fasting made simple, quick, and free.',
          tags: const [],
        ),
        _ProductLane(
          label: 'v0.1',
          title: 'Meeple Math',
          body: 'Meeple scoring, meepled easy.',
          tags: const [],
        ),
      ]),
      Link(
        to: '/about',
        classes: 'section-wrap cta-section cta-link',
        attributes: const {
          'aria-label': 'Meet the founders',
        },
        children: [
          div([
            p(classes: 'eyebrow', [.text('Who built these?')]),
            h2([.text('Meet the founders.')]),
            p([
              .text(
                'Meet the product engineers dedicated to solving your problems.',
              ),
            ]),
          ]),
        ],
      ),
    ]);
  }
}

class _ProductLane extends StatelessComponent {
  const _ProductLane({
    required this.label,
    required this.title,
    required this.body,
    required this.tags,
  });

  final String label;
  final String title;
  final String body;
  final List<String> tags;

  @override
  Component build(BuildContext context) {
    return article(classes: 'product-lane', [
      span(classes: 'mini-label', [.text(label)]),
      h2([.text(title)]),
      p([.text(body)]),
      div(classes: 'tag-row', [
        for (final tag in tags) span([.text(tag)]),
      ]),
    ]);
  }
}
