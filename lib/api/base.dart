class Base{
  static String base = "https://localhost:3000";
  static var api = base + "/v1/api";
  var loginPath = api + "/login";
  var userPath = api + "/user";
  int accepted = 202;
  int unprocessableEntity = 422;

  Map<String,String> headers = {
    "Content-Type": "application/json; charset=UTF-8"
  };

}