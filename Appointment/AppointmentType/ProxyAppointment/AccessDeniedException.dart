 class AccessDeniedException implements Exception {
  //CONSTRUCTO

     String _message='';
  
    ValueException([String message = ' AccessDenied']) {
      this._message = message;
    }
  
    @override
    String toString() {
      return _message;
    }
  }
