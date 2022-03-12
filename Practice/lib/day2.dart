
import 'dart:math';


class Polygon {
  final _points = <Point>[];

  void add(Point point) {
    _points.add(point);
  }

  /// Implement perimeter getter to calculate sum of all edges.
  double get perimeter {
    if (_points.length < 3) return double.nan;
    var p = 0.0;
    Point lastPoint = _points.last;
    for (Point point in _points) {
      p += point.distanceTo(lastPoint);
      lastPoint = point;
    }
    return p;
  }
}

class Point {
  final double x;
  final double y;
  const Point(this.x, this.y);

  double distanceTo(Point another) {
    final dx = x - another.x;
    final dy = y - another.y;
    return sqrt(dx*dx + dy*dy);
  }
}


