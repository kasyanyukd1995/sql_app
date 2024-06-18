abstract class SqlAppAppConstants {
  static const _devBaseUrl = 'http://188.68.222.63';
  static const _prodBaseUrl = 'http://188.68.222.63';

  static String get baseUrl => isDevEnvironment ? _devBaseUrl : _prodBaseUrl;

  static const isDevEnvironment = bool.fromEnvironment(
    "DEV_ENVIRONMENT",
    defaultValue: true,
  );

  static const applicationScheme = "tech.dexma.qrauto.app";
  static const androidPaymentSuccessUrl = "checkoutsdk://success";
  static const iosPaymentSuccessUrl = "https://custom.redirect.url/";

  static const paymentClientApplicationKey = 'test_MzQxNDY3V3ZWW-aAWNOxPxsd37qf2NPvrIsOYLikoU0';

  static const paymentShopId = '341467';
}
