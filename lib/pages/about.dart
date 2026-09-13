import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

const _founders = [
  _FounderProfile(
    name: 'Matt Carroll',
    role: 'Founder',
    avatarLabel: 'M',
    avatarImage: '/images/matt_256.png',
    socialLabel: '@suprdeclarative',
    socialUrl: 'https://x.com/suprdeclarative',
  ),
  _FounderProfile(
    name: 'Danielle Cox',
    role: 'Founder',
    avatarLabel: 'D',
    avatarImage: '/images/danielle_400x400.jpg',
    socialLabel: '@imafiguresk8r',
    socialUrl: 'https://x.com/imafiguresk8r',
  ),
];

class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      section(classes: 'page-hero section-wrap narrow', [
        h1(classes: 'about-heading', [
          span(classes: 'heading-line', [.text('Founded by Engineers.')]),
          span(classes: 'heading-line', [.text('Focused on Design.')]),
        ]),
        p(classes: 'lede', [
          .text(
            'No more "product people" handing off tasks to "coders". At Random Walk Design, we engineer a product, then we engineer its software.',
          ),
        ]),
      ]),
      section(classes: 'section-wrap founders-section', [
        div(classes: 'founder-grid', [
          for (final founder in _founders) _FounderCard(founder: founder),
        ]),
      ]),
      Link(
        to: '/apps',
        classes: 'section-wrap cta-section cta-link',
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

class _FounderProfile {
  const _FounderProfile({
    required this.name,
    required this.role,
    required this.avatarLabel,
    required this.socialLabel,
    required this.socialUrl,
    this.avatarImage,
  });

  final String name;
  final String role;
  final String avatarLabel;
  final String socialLabel;
  final String socialUrl;
  final String? avatarImage;
}

class _FounderCard extends StatelessComponent {
  const _FounderCard({required this.founder});

  final _FounderProfile founder;

  @override
  Component build(BuildContext context) {
    return article(classes: 'founder-card', [
      div(classes: 'founder-avatar', [
        if (founder.avatarImage case final avatarImage?)
          img(src: avatarImage, alt: founder.name)
        else
          span([.text(founder.avatarLabel)]),
      ]),
      div(classes: 'founder-details', [
        h3([.text(founder.name)]),
        p([.text(founder.role)]),
      ]),
      a(
        href: founder.socialUrl,
        classes: 'founder-social',
        attributes: const {
          'target': '_blank',
          'rel': 'noreferrer',
        },
        [
          img(
            classes: 'founder-social-icon',
            src: '/images/x-logo.svg',
            alt: '',
            attributes: const {'aria-hidden': 'true'},
          ),
          .text(founder.socialLabel),
        ],
      ),
    ]);
  }
}
