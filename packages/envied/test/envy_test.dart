import 'package:envied/envied.dart';
import 'package:test/test.dart';

void main() {
  group('Envied Test Group', () {
    test('Empty constructor', () {
      final envied = Envied();
      expect(envied.path, '.env');
      expect(envied.requireEnvFile, false);
      expect(envied.obfuscate, false);
    });

    test('Specified path', () {
      final envied = Envied(path: '.env.test');
      expect(envied.path, '.env.test');
    });

    test('Specified requireEnvFile', () {
      final envied = Envied(requireEnvFile: true);
      expect(envied.requireEnvFile, true);
    });

    test('Specified name', () {
      final envied = Envied(name: 'Foo');
      expect(envied.name, 'Foo');
    });

    test('Specified obfuscate', () {
      final envied = Envied(obfuscate: true);
      expect(envied.obfuscate, true);
    });
  });

  group('EnviedField Test Group', () {
    test('Empty constructor', () {
      final enviedField = EnviedField();
      expect(enviedField.varName, null);
      expect(enviedField.obfuscate, null);
    });

    test('Specified path', () {
      final enviedField = EnviedField(varName: 'test');
      expect(enviedField.varName, 'test');
    });

    test('Specified obfuscate', () {
      final enviedField = EnviedField(obfuscate: true);
      expect(enviedField.obfuscate, true);
    });
  });
}
