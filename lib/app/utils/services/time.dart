import 'dart:async';
import 'dart:developer';

class CountdownTimer {
  Timer? countdownTimer;
  Duration myDuration = const Duration(seconds: 10);

  void startTimer(Function callback, Function timerCallback) {
    countdownTimer = Timer.periodic(const Duration(seconds: 1),
        (_) => setCountDown(callback, timerCallback));
  }

  void stopTimer() {
    if (countdownTimer == null || countdownTimer!.isActive) {
      countdownTimer!.cancel();
    }
  }

  void resetTimer() {
    stopTimer();
    myDuration = const Duration(seconds: 10);
  }

  setCountDown(Function callback, Function timerCallback) {
    final reduceSecondsBy = 1;
    timerCallback(myDuration.inSeconds);
    final seconds = myDuration.inSeconds - reduceSecondsBy;
    if (seconds < 0) {
      countdownTimer!.cancel();
    } else {
      myDuration = Duration(seconds: seconds);
    }

    if (myDuration.inSeconds == 0) {
      stopTimer();

      callback();
    }
  }
}
