
import 'package:Practice/day3.dart';
import 'package:test/test.dart';

void main() {
  group('Day3 tests', () {

    setUp(() {
      // Additional setup goes here.
    });

    test('Test sequence', () async {
      final log = <int>[];
      await doSequence(log);
      expect(log, [1, 2, 3, 4, 5, 6, 7,]);
    });

  });
}
