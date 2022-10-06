class ImageService {
  static bool isValid(String url) {
    if (url.contains('http')) {
      return true;
    } else {
      return false;
    }
  }
}
