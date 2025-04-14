class GFirebaseAuthException implements Exception {
  final String code;

  GFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'هذا البريد الإلكتروني مستخدم بالفعل.';
      case 'invalid-email':
        return 'البريد الإلكتروني غير صالح.';
      case 'weak-password':
        return 'كلمة المرور ضعيفة جدًا.';
      case 'user-disabled':
        return 'تم تعطيل هذا المستخدم.';
      case 'user-not-found':
        return 'لم يتم العثور على مستخدم بهذا البريد الإلكتروني.';
      case 'wrong-password':
        return 'كلمة المرور غير صحيحة.';
      case 'invalid-verification-code':
        return 'رمز التحقق غير صالح.';
      case 'invalid-verification-id':
        return 'معرف التحقق غير صالح.';
      case 'quota-exceeded':
        return 'تم تجاوز الحصة المسموح بها. حاول مرة أخرى لاحقًا.';
      case 'email-already-exists':
        return 'البريد الإلكتروني موجود مسبقًا.';
      case 'provider-already-linked':
        return 'تم ربط هذا المزود مسبقًا.';
      case 'requires-recent-login':
        return 'يجب تسجيل الدخول مؤخرًا لتنفيذ هذا الإجراء.';
      case 'credential-already-in-use':
        return 'بيانات الاعتماد مستخدمة بالفعل.';
      case 'user-mismatch':
        return 'بيانات المستخدم غير متطابقة.';
      case 'invalid-custom-token':
        return 'رمز مخصص غير صالح.';
      case 'custom-token-mismatch':
        return 'رمز مخصص لا يطابق.';
      case 'user-token-expired':
        return 'انتهت صلاحية رمز المستخدم. الرجاء تسجيل الدخول مرة أخرى.';
      case 'invalid-user-token':
        return 'رمز المستخدم غير صالح. يرجى تسجيل الدخول مرة أخرى.';
      case 'operation-not-supported-in-this-environment':
        return 'هذا الإجراء غير مدعوم في بيئة التشغيل الحالية.';
      case 'app-deleted':
        return 'تم حذف التطبيق.';
      case 'invalid-api-key':
        return 'مفتاح API غير صالح.';
      case 'account-exists-with-different-credential':
        return 'يوجد حساب بالفعل بنفس البريد الإلكتروني لكن بمزود تسجيل مختلف.';
      case 'no-such-provider':
        return 'مزود الهوية غير موجود لهذا المستخدم.';
      case 'popup-blocked':
        return 'تم حظر نافذة تسجيل الدخول المنبثقة بواسطة المتصفح.';
      case 'popup-closed-by-user':
        return 'أغلق المستخدم نافذة تسجيل الدخول قبل الانتهاء.';
      case 'unauthorized-domain':
        return 'النطاق غير مصرح له باستخدام Firebase Auth.';
      case 'invalid-continue-uri':
        return 'رابط المتابعة غير صالح.';
      case 'missing-continue-uri':
        return 'رابط المتابعة مفقود في الطلب.';
      case 'argument-error':
        return 'حدث خطأ في الوسائط المقدمة.';
      case 'timeout-error':
        return 'انتهت المهلة أثناء العملية.';
      case 'too-many-requests':
        return 'عدد كبير جدًا من المحاولات. الرجاء المحاولة لاحقًا.';
      case 'invalid-password':
        return 'كلمة المرور غير صالحة.';
      case 'missing-password':
        return 'يرجى إدخال كلمة المرور.';
      case 'missing-phone-number':
        return 'رقم الهاتف مفقود.';
      case 'invalid-phone-number':
        return 'رقم الهاتف غير صالح.';
      case 'missing-verification-code':
        return 'رمز التحقق مفقود.';
      case 'missing-verification-id':
        return 'معرّف التحقق مفقود.';
      default:
        return 'حدث خطأ. [رمز الخطأ: $code]';
    }
  }

  @override
  String toString() => message;
}
