class BaseViewModel {
  final Function() reLoad;

  BaseViewModel(this.reLoad);

  // ============= vars ========== //
  final Map<String, bool> _loadingMap = {};

  // ============= data ========== //

  bool isLoading(String key) => _loadingMap[key] ?? false;

  //BuildContext get context => navigatorKey.currentState!.context;

  // ============= methods ========== //

  void setBusy(String key) => _changeState(key, true);

  void setNotBusy(String key) => _changeState(key, false);

  void _changeState(String key, bool loading) {
    _loadingMap[key] = loading;
    reLoad();
  }
}
