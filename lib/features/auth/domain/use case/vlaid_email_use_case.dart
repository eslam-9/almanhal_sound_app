class VlaidEmailUseCase {
  VlaidEmailUseCase();

  ValidEmailResponse call(String email) {
    if (isValidEmail(email)) {
      return ValidEmailResponse(isvalid: true);
    } else {
      return ValidEmailResponse(isvalid: false, error: "Invalid Email");
    }
  }

  bool isValidEmail(String email) {
    final regExp = RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    );
    return regExp.hasMatch(email);
  }
}

class ValidEmailResponse {
  final bool isvalid;
  final String? error;

  ValidEmailResponse({required this.isvalid, this.error});
}
