class GPlatformExceptions implements Exception {
  final String code;

  GPlatformExceptions(this.code);

  String get message {
    switch (code) {
      // Android-related errors
      case 'android-permission-denied':
        return 'تم رفض الأذونات في نظام Android.';
      case 'android-network-error':
        return 'حدث خطأ في الشبكة على نظام Android.';
      case 'android-storage-error':
        return 'حدث خطأ في الوصول إلى التخزين على نظام Android.';
      case 'android-unknown-error':
        return 'حدث خطأ غير معروف على نظام Android.';
      
      // iOS-related errors
      case 'ios-permission-denied':
        return 'تم رفض الأذونات في نظام iOS.';
      case 'ios-network-error':
        return 'حدث خطأ في الشبكة على نظام iOS.';
      case 'ios-storage-error':
        return 'حدث خطأ في الوصول إلى التخزين على نظام iOS.';
      case 'ios-unknown-error':
        return 'حدث خطأ غير معروف على نظام iOS.';

      // General platform errors
      case 'platform-unsupported':
        return 'المنصة غير مدعومة.';
      case 'platform-not-found':
        return 'المنصة غير موجودة.';
      case 'platform-version-mismatch':
        return 'هناك تعارض في إصدار المنصة.';
      case 'platform-service-unavailable':
        return 'الخدمة غير متوفرة في المنصة.';
      case 'platform-configuration-error':
        return 'خطأ في تكوين المنصة.';
      case 'platform-api-error':
        return 'حدث خطأ في واجهة برمجة التطبيقات للمنصة.';
      
      // Device-specific errors
      case 'device-not-found':
        return 'الجهاز غير موجود.';
      case 'device-unreachable':
        return 'لا يمكن الوصول إلى الجهاز.';
      case 'device-storage-full':
        return 'التخزين في الجهاز ممتلئ.';
      
      // Network-related errors
      case 'network-unavailable':
        return 'الشبكة غير متوفرة.';
      case 'network-timeout':
        return 'انتهت مهلة الاتصال بالشبكة.';
      case 'network-connection-lost':
        return 'تم فقدان الاتصال بالشبكة.';
      
      // Permission-related errors
      case 'permission-denied':
        return 'تم رفض الأذونات.';
      case 'permission-required':
        return 'يجب منح الأذونات للاستمرار.';
      case 'permission-unknown':
        return 'الأذونات غير معروفة.';

      // Custom platform errors
      case 'custom-platform-error':
        return 'حدث خطأ مخصص في المنصة.';
      case 'custom-api-error':
        return 'حدث خطأ في واجهة برمجة التطبيقات المخصصة.';
      
      // Default error message
      default:
        return 'حدث خطأ غير معروف في المنصة.';
    }
  }

  @override
  String toString() => 'خطأ في المنصة: $message';
}
