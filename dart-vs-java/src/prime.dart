
void main() async {
  final time = Stopwatch()..start();
  final finder = Prime();
  var log = finder.findPrime(100000000).toSet();
  print("Elapsed time: ${time.elapsedMilliseconds} ms, count: ${log.length}");

}

class Prime {
  final found = <int>[];

  Iterable<int> findPrime(int max) sync* {
    found.add(2);
    yield 2;
    outer:
    for (int i=3; i<=max; i = i + 2 ) {
      for (int p in found){
        if (i % p == 0) continue outer;
        if (p * p > i) break;
      }
      found.add(i);
      yield i;
    }
  }
}
