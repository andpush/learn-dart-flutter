
import 'package:Practice/day2.dart';
import 'package:test/test.dart';

void main() {
  group('Day2 tests', () {

    setUp(() {
      // Additional setup goes here.
    });

    test('Rectangle perimeter test', () {
      final poly1 = Polygon()
        ..add(Point(0, 0))
        ..add(Point(0, 10))
        ..add(Point(20, 10))
        ..add(Point(20, 0));
      expect(poly1.perimeter, 60);
    });

    test('Not a shape perimeter', () {
      expect(Polygon().perimeter, isNaN);
      expect((Polygon()
        ..add(Point(0, 0))).perimeter, isNaN);
      expect((Polygon()
        ..add(Point(0, 0))
        ..add(Point(1, 1))).perimeter, isNaN);
    });
  });
}
