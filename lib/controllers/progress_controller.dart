import 'package:get/get.dart';

class ProgressController extends GetxController {
  var progress = 0.0.obs;
  var isButtonEnabled = false.obs;
  var isBackButtonEnabled = false.obs;

  void updateProgress(double value) {
    progress.value = value;
  }

  void enableButton() {
    isButtonEnabled.value = true;
  }

  void disableButton() {
    isButtonEnabled.value = false;
  }

  void enableBackButton() {
    isBackButtonEnabled.value = true;
  }

  void disableBackButton() {
    isBackButtonEnabled.value = false;
  }
}
