enum Flavor { dev, qa, prod }

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'My App Dev';
      case Flavor.qa:
        return 'My App QA';
      case Flavor.prod:
        return 'My App';
    }
  }
}
