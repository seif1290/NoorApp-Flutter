class AppValidators {
  AppValidators._();

  static String? defaultValidate(String? value) {
    if (value == null || value.isEmpty) {
      return 'This Field is required.  ';
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.  ';
    }

    final emailRegExp = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@(?:[a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}$",
    );

    if (!emailRegExp.hasMatch(value)) {
      return "Invalid Email Address.";
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }
    // Reset error message
    String errorMessage = '';

    if (value.length < 8) {
      errorMessage += '- Password must be at least 8 characters.\n';
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      errorMessage += '- Uppercase letter is missing.\n';
    }

    if (!value.contains(RegExp(r'[a-z]'))) {
      errorMessage += '- Lowercase letter is missing.\n';
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      errorMessage += '- Digit is missing.\n';
    }
    return errorMessage.isEmpty ? null : errorMessage;
  }

  static String? validateConfirmPassword({String? value, String? password}) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password.';
    }
    if (value != password) {
      return '- Password does not match.\n';
    }
    return null;
  }
}
