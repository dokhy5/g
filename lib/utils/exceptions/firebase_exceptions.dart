class GFirebaseException implements Exception {
  final String code;

  GFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'unknown':
        return 'حدث خطأ غير معروف.';
      case 'invalid-custom-token':
        return 'رمز مخصص غير صالح.';
      case 'custom-token-mismatch':
        return 'رمز مخصص غير متطابق.';
      case 'user-disabled':
        return 'تم تعطيل هذا المستخدم.';
      case 'user-not-found':
        return 'لم يتم العثور على مستخدم لهذا البريد الإلكتروني.';
      case 'invalid-email':
        return 'عنوان البريد الإلكتروني غير صالح.';
      case 'wrong-password':
        return 'كلمة المرور غير صحيحة.';
      case 'email-already-in-use':
        return 'هذا البريد الإلكتروني مستخدم بالفعل من قبل حساب آخر.';
      case 'operation-not-allowed':
        return 'هذه العملية غير مسموح بها.';
      case 'weak-password':
        return 'كلمة المرور ضعيفة جداً.';
      case 'network-request-failed':
        return 'فشل الاتصال بالشبكة. حاول مرة أخرى.';
      case 'too-many-requests':
        return 'عدد كبير جداً من المحاولات. يرجى المحاولة لاحقاً.';
      case 'missing-email':
        return 'البريد الإلكتروني مفقود.';
      case 'internal-error':
        return 'حدث خطأ داخلي.';
      case 'invalid-credential':
        return 'بيانات الاعتماد غير صالحة أو منتهية الصلاحية.';
      case 'account-exists-with-different-credential':
        return 'يوجد حساب بنفس البريد الإلكتروني لكن باستخدام بيانات اعتماد مختلفة.';
      case 'credential-already-in-use':
        return 'بيانات الاعتماد هذه مرتبطة بالفعل بحساب مستخدم آخر.';
      default:
        return 'حدث خطأ غير معروف.';
    }
  }
}
