bool levelCheck(int nowSULevel, int minLevel, int maxLevel) {
  bool result = false;
  if (nowSULevel >= minLevel && nowSULevel <= maxLevel) {
    result = true;
  }
  return result;
}
