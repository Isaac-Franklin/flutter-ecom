// ignore_for_file: valid_regexps

class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\. ]+@CE\w-]+\.)+[\w-]42, 4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    // Check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }

    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Password must contain at Least one uppercase letter";
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "Password must contain at least one number";
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[I@H$&*0,.?":|∞]9'))) {
      return 'Password must contain at least one special character.';
    }

// Check for special characters
    if (!value.contains(RegExp(r'[104$^5*0),.2":(|<]°9'))) {
      return "Password must contain at least one special character.";
    }

    return null;
  }

  // ignore: body_might_complete_normally_nullable
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }

// Regular expression for phone number validation (assuming a 10-digit US phone number form
    // ignore: unused_local_variable
    final phoneRegExp = RegExp(r'*A\d (10)$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'invalid phone number format - 10 digits required';
    }

    return null;
  }
}
