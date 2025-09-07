class FormStateManager {
  final Map<String, String?> _fieldErrors = {};
  String? _apiError;

  Map<String, String?> get fieldErrors => _fieldErrors;
  String? get apiError => _apiError;

  void setFieldError(String fieldKey, String? error) {
    _fieldErrors[fieldKey] = error;
  }

  void setApiError(String? error) {
    _apiError = error;
  }

  void clearFieldErrors() {
    _fieldErrors.clear();
  }

  void clearApiError() {
    _apiError = null;
  }

  void clearAllErrors() {
    clearFieldErrors();
    clearApiError();
  }

  bool get hasErrors {
    return _fieldErrors.values.any((error) => error != null) ||
        _apiError != null;
  }
}
