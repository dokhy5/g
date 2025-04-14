class GValidation {
  static String? validateEmptyText(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return 'حقل $fieldName مطلوب.';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'البريد الإلكتروني مطلوب.';
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'البريد الإلكتروني غير صالح.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'كلمة المرور مطلوبة.';
    }
    if (value.length < 6) {
      return 'يجب أن تتكون كلمة المرور من 6 أحرف على الأقل.';
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل.';
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل.';
    }
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'يجب أن تحتوي كلمة المرور على رقم واحد على الأقل.';
    }
    if (!RegExp(r'[!@#$%^&*()_+\-=\[\]{};:\\|,.<>\/?]').hasMatch(value)) {
      return 'يجب أن تحتوي كلمة المرور على رمز خاص واحد على الأقل.';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'رقم الهاتف مطلوب.';
    }
    // Egyptian phone numbers start with 010, 011, 012, 015 followed by 8 digits
    final phoneRegExp = RegExp(r'^(010|011|012|015)\d{8}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'رقم الهاتف غير صالح. يجب أن يكون رقم مصري صحيح مثل: 01012345678';
    }
    return null;
  }
}
