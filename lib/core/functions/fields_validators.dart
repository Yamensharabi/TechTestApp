//--------------------------------------------------------functions for validate all of input fields

class FieldsValidators {
//-------------------------------------------------------------validate user name

  static String? userNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'اسم المستخدم مطلوب';
    }

    if (value.length < 3) {
      return "يجب أن لا يقل اسم المستخدم عن ثلاثة أحرف";
    }

    // if (!RegExp(VerificationCriteria.userNameValidator).hasMatch(value)) {
    //   return 'من فضلك أدخل اسم مستخدم صالح';
    // }
    return null;
  }

//-------------------------------------------------------------validate full name

  static String? fullNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'الإسم الكامل مطلوب';
    }

    if (value.length < 3) {
      return 'يجب أن يتكون الاسم الكامل من ثلاثة أحرف على الأقل';
    }

    return null;
  }

//-------------------------------------------------------------validate phone number

  static String? phoneNumberValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'رقم الهاتف مطلوب';
    }

    if (value.length < 13) {
      return 'يجب أن لا يقل رقم الهاتف عن 12 رقم';
    }

    // if (!RegExp(VerificationCriteria.phoneValidator).hasMatch(value)) {
    //   return 'من فضلك أدخل رقم هاتف صالح';
    // }
    return null;
  }

//-------------------------------------------------------------validate password

  static String password = '';
  static String? passwordValidator(String? value) {
    password = value!;
    if (value.isEmpty) {
      return 'كلمة المرور مطلوبة';
    }

    if (value.length < 8) {
      return 'يجب أن تتكون كلمة المرور من ثمانية أحرف\nعلى الأقل';
    }

    // if (!RegExp(VerificationCriteria.passwordValidator).hasMatch(value)) {
    //   return 'الرجاء اختيار كلمة مرور قوية جرّب مزيجًا\nمن الأسماء والرموز';
    // }
    return null;
  }

//-------------------------------------------------------------validate confirm password

  static String? confirmPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'تأكيد كلمة المرور مطلوب';
    }
    if (password != value) {
      return 'كلمة المرور غير مطابقة';
    }
    return null;
  }

//-------------------------------------------------------------validate empty input fields

  static String? emptyValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'الحقل مطلوب';
    }

    return null;
  }
}
