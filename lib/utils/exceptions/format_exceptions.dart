class GFormatException implements Exception {
  final String message;
  const GFormatException([this.message = 'An unexpected format error occurred, please try again later.']);

  factory GFormatException.fromMessage(String message) {
    return GFormatException(message);
  }

  String get formattedMessage => message;

  factory GFormatException.fromCode(String code) {
    String message;
    switch (code) {
      case 'invalid-number':
        message = 'الرقم المدخل غير صالح.';
        break;
      case 'null-value':
        message = 'القيمة المدخلة فارغة.';
        break;
      case 'incorrect-format':
        message = 'التنسيق المدخل غير صحيح.';
        break;
      case 'missing-value':
        message = 'القيمة مفقودة.';
        break;
      case 'out-of-range':
        message = 'القيمة المدخلة خارج النطاق المسموح.';
        break;
      case 'invalid-date':
        message = 'التاريخ المدخل غير صالح.';
        break;
      case 'empty-string':
        message = 'السلسلة المدخلة فارغة.';
        break;
      case 'invalid-email':
        message = 'البريد الإلكتروني المدخل غير صالح.';
        break;
      case 'invalid-phone':
        message = 'رقم الهاتف المدخل غير صالح.';
        break;
      case 'invalid-json':
        message = 'تنسيق JSON غير صحيح.';
        break;
      case 'unexpected-character':
        message = 'تم إدخال رمز غير متوقع.';
        break;
      case 'invalid-uuid':
        message = 'معرف UUID غير صالح.';
        break;
      case 'invalid-date-time':
        message = 'تنسيق التاريخ والوقت غير صالح.';
        break;
      case 'invalid-url':
        message = 'عنوان URL غير صالح.';
        break;
      case 'negative-value':
        message = 'القيمة المدخلة لا يمكن أن تكون سالبة.';
        break;
      case 'not-a-number':
        message = 'القيمة المدخلة ليست رقمًا.';
        break;
      case 'invalid-boolean':
        message = 'القيمة المدخلة ليست قيمة منطقية صحيحة.';
        break;
      case 'value-too-large':
        message = 'القيمة المدخلة كبيرة جدًا.';
        break;
      case 'value-too-small':
        message = 'القيمة المدخلة صغيرة جدًا.';
        break;
      case 'invalid-time':
        message = 'الوقت المدخل غير صالح.';
        break;
      case 'invalid-length':
        message = 'طول القيمة المدخلة غير صالح.';
        break;
      case 'exceeds-max-length':
        message = 'القيمة المدخلة تتجاوز الحد الأقصى المسموح به.';
        break;
      case 'value-not-found':
        message = 'القيمة المطلوبة غير موجودة.';
        break;
      case 'value-missing':
        message = 'القيمة مفقودة.';
        break;
      case 'unsupported-encoding':
        message = 'ترميز غير مدعوم.';
        break;
      case 'non-numeric-string':
        message = 'السلسلة المدخلة لا تحتوي على أرقام.';
        break;
      case 'invalid-format-character':
        message = 'تم إدخال حرف غير صالح في التنسيق.';
        break;
      case 'value-not-a-string':
        message = 'القيمة المدخلة ليست سلسلة نصية.';
        break;
      case 'invalid-hex':
        message = 'القيمة المدخلة ليست بتنسيق سداسي عشري صالح.';
        break;
      case 'invalid-binary':
        message = 'القيمة المدخلة ليست بتنسيق ثنائي صالح.';
        break;
      case 'invalid-ip':
        message = 'عنوان IP المدخل غير صالح.';
        break;
      case 'too-many-decimals':
        message = 'القيمة المدخلة تحتوي على عدد مفرط من الفواصل العشرية.';
        break;
      case 'too-few-decimals':
        message = 'القيمة المدخلة تحتوي على عدد قليل جدًا من الفواصل العشرية.';
        break;
      case 'too-large-integer':
        message = 'القيمة المدخلة كبيرة جدًا بالنسبة للعدد الصحيح.';
        break;
      case 'invalid-hex-color':
        message = 'لون السداسي العشري المدخل غير صالح.';
        break;
      case 'invalid-range':
        message = 'النطاق المدخل غير صالح.';
        break;
      case 'invalid-file-path':
        message = 'مسار الملف المدخل غير صالح.';
        break;
      case 'unsupported-file-type':
        message = 'نوع الملف غير مدعوم.';
        break;
      case 'invalid-currency':
        message = 'القيمة المدخلة ليست عملة صالحة.';
        break;
      case 'invalid-credit-card':
        message = 'رقم بطاقة الائتمان المدخل غير صالح.';
        break;
      case 'missing-currency-symbol':
        message = 'رمز العملة مفقود.';
        break;
      case 'invalid-percentage':
        message = 'النسبة المئوية المدخلة غير صالحة.';
        break;
      case 'invalid-hexadecimal':
        message = 'القيمة المدخلة ليست قيمة سداسية عشرية صالحة.';
        break;
      case 'invalid-object':
        message = 'الكائن المدخل غير صالح.';
        break;
      case 'invalid-array':
        message = 'المصفوفة المدخلة غير صالحة.';
        break;
      case 'invalid-hex-color-code':
        message = 'رمز اللون السداسي العشري غير صالح.';
        break;
      case 'unsupported-operation':
        message = 'العملية المدخلة غير مدعومة.';
        break;
      case 'invalid-uuid-format':
        message = 'تنسيق UUID غير صالح.';
        break;
      case 'invalid-ipv6':
        message = 'عنوان IPv6 المدخل غير صالح.';
        break;
      case 'missing-value-in-parameter':
        message = 'القيمة مفقودة في المعامل.';
        break;
      case 'invalid-xml':
        message = 'تنسيق XML غير صالح.';
        break;
      case 'invalid-schema':
        message = 'المخطط المدخل غير صالح.';
        break;
      case 'invalid-locale':
        message = 'الإعدادات المحلية المدخلة غير صالحة.';
        break;
      case 'invalid-country-code':
        message = 'رمز الدولة المدخل غير صالح.';
        break;
      case 'invalid-zipcode':
        message = 'الرمز البريدي المدخل غير صالح.';
        break;
      case 'invalid-file-extension':
        message = 'امتداد الملف غير صالح.';
        break;
      case 'invalid-formatting':
        message = 'التنسيق المدخل غير صالح.';
        break;
      case 'unexpected-eof':
        message = 'وصلنا إلى نهاية البيانات بشكل غير متوقع.';
        break;
      default:
        message = 'حدث خطأ في تنسيق البيانات.';
        break;
    }
    return GFormatException(message);
  }

  @override
  String toString() => 'خطأ في التنسيق: $message';
}
