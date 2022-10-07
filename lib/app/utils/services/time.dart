import 'dart:async';
import 'dart:developer';

class CountdownTimer {
  Timer? countdownTimer;
  Duration myDuration = const Duration(seconds: 10);

  void startTimer(Function callback) {
    countdownTimer = Timer.periodic(
        const Duration(seconds: 1), (_) => setCountDown(callback));
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

  setCountDown(Function callback) {
    final reduceSecondsBy = 1;

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
