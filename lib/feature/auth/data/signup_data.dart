import 'package:supabase_flutter/supabase_flutter.dart';

class SignupData {
  Future<AuthResponse> signUp({
    required String password,
    required String phone,
    required bool isPatient,
    required String nationalId,
  }) async {
    final response = await Supabase.instance.client.auth.signUp(
      phone: phone,
      password: password,
      data: {'isPatient': isPatient, 'nationalId': nationalId},
    );
    return response;
  }
}
