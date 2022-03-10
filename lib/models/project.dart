class Project {
  final String? id;
  final String? title;
  final String? description;
  final String? image;
  final List<String>? technologies;
  final String? github;
  final List<String>? projectImageUrl;

  Project({
    this.id,
    this.title,
    this.description,
    this.image,
    this.technologies,
    this.github,
    this.projectImageUrl,
  });
}

final List<Project> projects = [
  Project(
    id: '1',
    title: 'Flutter',
    description:
        'Flutter is an open-source UI toolkit for building beautiful, natively compiled applications for iOS and Android from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is free and open-source.',
    image: 'assets/images/example1.png',
    technologies: [
      'Flutter',
      'Dart',
      'Firebase',
      'Rest API',
    ],
    github: 'github.com/flutter/flutter',
    projectImageUrl: [
      'assets/images/flutter_1.png',
      'assets/images/flutter_2.png',
      'assets/images/flutter_3.png',
      'assets/images/flutter_4.png',
    ],
  ),
  Project(
    id: '2',
    title: 'Dart',
    description:
        'Dart is a general-purpose programming language developed by Google that adds strong static type safety to the language. It is used in Google\'s apps and in the Google Cloud Platform. Dart is a multi-paradigm language that supports many programming paradigms, including functional, imperative, object-oriented, and procedural. ',
    image: 'assets/images/example2.png',
    technologies: ['Dart'],
    github: 'github.com/dart-lang/dart',
    projectImageUrl: [
      'assets/images/dart_1.png',
      'assets/images/dart_2.png',
      'assets/images/dart_3.png',
      'assets/images/dart_4.png',
    ],
  ),
];
