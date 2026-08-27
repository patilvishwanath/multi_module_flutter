abstract class SessionProvider {
  String getAccessToken();
  String getClientId();
  String getRefreshToken();
  String getUserId();

  void setAccessToken(String accessToken);
  void setRefreshToken(String refreshToken);
  void setUserId(String userId);
}
