import 'dart:math';


/// Put async/await keywords and return Future where applicable
/// to restore the order of numbers in the log list.
/// The output should become: 1 2 3 4 5 6 7
void main() {
  final log = <int>[];

  doSequence(log);

  log.forEach((e)=>print(e));
}

void doSequence(List<int> log) {
  log.add(1);
  delayed2(log);
  log.add(3);
  delayedStream([4, 5, 6]).forEach((i)=>log.add(i));
  log.add(7);
}

/// Random duration from 0-100 ms
Duration randomDelay() => Duration(milliseconds: Random().nextInt(100));

Future delayed2(List<int> log) {
  return Future.delayed(randomDelay(), (){
    log.add(2);
  });
}


Stream delayedStream(Iterable iterable) async* {
  for (int i in iterable) {
    randomDelay();
    yield i;
  }
}

