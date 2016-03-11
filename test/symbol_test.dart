import 'package:symbol/symbol.dart';
import 'package:test/test.dart';

void main() {
  group('makeSymbol tests', () {
    test('makeSymbol should generate distinct symbols', () {
      final s1 = makeSymbol();
      final s2 = makeSymbol();
      final s3 = makeSymbol();
      expect(s1 != s2, isTrue);
      expect(s2 != s3, isTrue);
      expect(s3 != s1, isTrue);

      final foo1 = makeSymbol(prefix: 'foo');
      final foo2 = makeSymbol(prefix: 'foo');
      expect(foo1 != foo2, isTrue);
    });

    test('makeSymbol should prepend the prefix to the symbol', () {
      final s1 = makeSymbol(prefix: 'foo');
      final s2 = makeSymbol(prefix: 'foo');
      final r = new RegExp(r'Symbol\("foo\d+"\)');

      expect(r.hasMatch(s1.toString()), isTrue);
      expect(r.hasMatch(s2.toString()), isTrue);
    });
  });
}
