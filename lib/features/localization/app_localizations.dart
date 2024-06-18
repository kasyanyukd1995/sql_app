import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ru.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ru')
  ];

  /// No description provided for @appTitle.
  ///
  /// In ru, this message translates to:
  /// **'Qr-Auto'**
  String get appTitle;

  /// No description provided for @loginPageContentTitle.
  ///
  /// In ru, this message translates to:
  /// **'Добро пожаловать'**
  String get loginPageContentTitle;

  /// No description provided for @loginPageContentSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Введите номер телефона для входа'**
  String get loginPageContentSubtitle;

  /// No description provided for @loginPageGetCodeButton.
  ///
  /// In ru, this message translates to:
  /// **'Получить код'**
  String get loginPageGetCodeButton;

  /// No description provided for @loginPageAcceptingTermsTitlePart1.
  ///
  /// In ru, this message translates to:
  /// **'Согласен с условиями '**
  String get loginPageAcceptingTermsTitlePart1;

  /// No description provided for @loginPageAcceptingTermsTitlePart2.
  ///
  /// In ru, this message translates to:
  /// **'пользовательского соглашения'**
  String get loginPageAcceptingTermsTitlePart2;

  /// No description provided for @otpTextFieldHint.
  ///
  /// In ru, this message translates to:
  /// **'Введите код'**
  String get otpTextFieldHint;

  /// No description provided for @phoneNumberTextFieldErrorText.
  ///
  /// In ru, this message translates to:
  /// **'Неправильный номер телефона'**
  String get phoneNumberTextFieldErrorText;

  /// No description provided for @otpCodeTextFieldErrorText.
  ///
  /// In ru, this message translates to:
  /// **'Неправильный код'**
  String get otpCodeTextFieldErrorText;

  /// No description provided for @registrationButton.
  ///
  /// In ru, this message translates to:
  /// **'Зарегистрироваться'**
  String get registrationButton;

  /// No description provided for @loginButton.
  ///
  /// In ru, this message translates to:
  /// **'Войти'**
  String get loginButton;

  /// No description provided for @registrationPageTitle.
  ///
  /// In ru, this message translates to:
  /// **'Регистрация'**
  String get registrationPageTitle;

  /// No description provided for @registrationPageConfirmationCheckTitlePart1.
  ///
  /// In ru, this message translates to:
  /// **'Согласен на обработку персональных данных.'**
  String get registrationPageConfirmationCheckTitlePart1;

  /// No description provided for @registrationPageConfirmationCheckTitlePart2.
  ///
  /// In ru, this message translates to:
  /// **'Политика конфиденциальности'**
  String get registrationPageConfirmationCheckTitlePart2;

  /// No description provided for @phoneVerificationPageTitle.
  ///
  /// In ru, this message translates to:
  /// **'Верификация номера'**
  String get phoneVerificationPageTitle;

  /// No description provided for @phoneVerificationContentTitle.
  ///
  /// In ru, this message translates to:
  /// **'Введите код из смс'**
  String get phoneVerificationContentTitle;

  /// No description provided for @resentCodeButtonWithTimeTitle.
  ///
  /// In ru, this message translates to:
  /// **'Отправить повторно {time}'**
  String resentCodeButtonWithTimeTitle(Object time);

  /// No description provided for @resentCodeButton.
  ///
  /// In ru, this message translates to:
  /// **'Отправить повторно'**
  String get resentCodeButton;

  /// No description provided for @confirmButton.
  ///
  /// In ru, this message translates to:
  /// **'Подтвердить'**
  String get confirmButton;

  /// No description provided for @authCodeIncorrect.
  ///
  /// In ru, this message translates to:
  /// **'Неверный код'**
  String get authCodeIncorrect;

  /// No description provided for @authUserNotFound.
  ///
  /// In ru, this message translates to:
  /// **'Пользователь не существует'**
  String get authUserNotFound;

  /// No description provided for @authUserExists.
  ///
  /// In ru, this message translates to:
  /// **'Пользователь уже существует'**
  String get authUserExists;

  /// No description provided for @authTimeoutNotExpired.
  ///
  /// In ru, this message translates to:
  /// **'Время для повторной отправки не истекло'**
  String get authTimeoutNotExpired;

  /// No description provided for @authSMSSendingFailed.
  ///
  /// In ru, this message translates to:
  /// **'Не удалось отправить СМС'**
  String get authSMSSendingFailed;

  /// No description provided for @authWrongData.
  ///
  /// In ru, this message translates to:
  /// **'Данные некорректны'**
  String get authWrongData;

  /// No description provided for @homePageActiveDialogsEmpty.
  ///
  /// In ru, this message translates to:
  /// **'Тут будет диалог, если с вами захотят связаться другие водители'**
  String get homePageActiveDialogsEmpty;

  /// No description provided for @homePageArchiveDialogsEmpty.
  ///
  /// In ru, this message translates to:
  /// **'Тут будут храниться сообщения об авариях с фотографиями и номером телефона виновника'**
  String get homePageArchiveDialogsEmpty;

  /// No description provided for @qrCodePageCardTitle.
  ///
  /// In ru, this message translates to:
  /// **'Связаться с водителем'**
  String get qrCodePageCardTitle;

  /// No description provided for @qrCodePageCardSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Отсканируйте QR-код'**
  String get qrCodePageCardSubtitle;

  /// No description provided for @qrCodePageInfoAboutPrint.
  ///
  /// In ru, this message translates to:
  /// **'Распечатайте QR-код и повесьте на машину, чтобы водители могли связаться с вами. Сообщения придут в приложение'**
  String get qrCodePageInfoAboutPrint;

  /// No description provided for @qrCodePageDidntCreateQrCodeMessage.
  ///
  /// In ru, this message translates to:
  /// **'Вы еще не создали QR-код'**
  String get qrCodePageDidntCreateQrCodeMessage;

  /// No description provided for @qrCodePageCreateQrCodeTitle.
  ///
  /// In ru, this message translates to:
  /// **'Создать QR-Code'**
  String get qrCodePageCreateQrCodeTitle;

  /// No description provided for @qrCodePageShare.
  ///
  /// In ru, this message translates to:
  /// **'Поделиться'**
  String get qrCodePageShare;

  /// No description provided for @qrCodePageDownloadPdf.
  ///
  /// In ru, this message translates to:
  /// **'Скачать в PDF'**
  String get qrCodePageDownloadPdf;

  /// No description provided for @qrCodePageFileDownloaded.
  ///
  /// In ru, this message translates to:
  /// **'Файл загружен'**
  String get qrCodePageFileDownloaded;

  /// No description provided for @qrCodePageFileSystemPermissionDeniedDialogText.
  ///
  /// In ru, this message translates to:
  /// **'Вы не дали доступ к работе с файлами и мы не можем сохранить qr-код. Выдайте доступ в настройках'**
  String get qrCodePageFileSystemPermissionDeniedDialogText;

  /// No description provided for @qrCodePageFileSystemPermissionDeniedDialogButtonText.
  ///
  /// In ru, this message translates to:
  /// **'Перейти в настройки'**
  String get qrCodePageFileSystemPermissionDeniedDialogButtonText;

  /// No description provided for @logoutButton.
  ///
  /// In ru, this message translates to:
  /// **'Выйти'**
  String get logoutButton;

  /// No description provided for @shareTitle.
  ///
  /// In ru, this message translates to:
  /// **'QR auto'**
  String get shareTitle;

  /// No description provided for @shareSubject.
  ///
  /// In ru, this message translates to:
  /// **'QR-код для связи'**
  String get shareSubject;

  /// No description provided for @sessionsPageTitle.
  ///
  /// In ru, this message translates to:
  /// **'Диалоги'**
  String get sessionsPageTitle;

  /// No description provided for @sessionsPageSessionClosedTitle.
  ///
  /// In ru, this message translates to:
  /// **'Завершен'**
  String get sessionsPageSessionClosedTitle;

  /// No description provided for @sessionsPageSessionActiveTitle.
  ///
  /// In ru, this message translates to:
  /// **'Активный'**
  String get sessionsPageSessionActiveTitle;

  /// No description provided for @sessionsPageNotQrCodeInfoTitle.
  ///
  /// In ru, this message translates to:
  /// **'У вас нет QR-кода и вам не могут написать'**
  String get sessionsPageNotQrCodeInfoTitle;

  /// No description provided for @sessionsPageCreateQrCodeButton.
  ///
  /// In ru, this message translates to:
  /// **'Создать QR-code'**
  String get sessionsPageCreateQrCodeButton;

  /// No description provided for @sessionsPageNoMessagesTitle.
  ///
  /// In ru, this message translates to:
  /// **'У вас пока нет сообщений'**
  String get sessionsPageNoMessagesTitle;

  /// No description provided for @sessionsPageMessagesCountTitle.
  ///
  /// In ru, this message translates to:
  /// **'Сообщений: {count}'**
  String sessionsPageMessagesCountTitle(Object count);

  /// No description provided for @sessionDetailPageActiveTitle.
  ///
  /// In ru, this message translates to:
  /// **'Диалог'**
  String get sessionDetailPageActiveTitle;

  /// No description provided for @sessionDetailPageArchiveTitle.
  ///
  /// In ru, this message translates to:
  /// **'Диалог {datetime}'**
  String sessionDetailPageArchiveTitle(Object datetime);

  /// No description provided for @sessionDetailPageErrorMessage.
  ///
  /// In ru, this message translates to:
  /// **'К сожалению диалог не найден'**
  String get sessionDetailPageErrorMessage;

  /// No description provided for @sessionDetailCloseSession.
  ///
  /// In ru, this message translates to:
  /// **'Завершить диалог'**
  String get sessionDetailCloseSession;

  /// No description provided for @sendButton.
  ///
  /// In ru, this message translates to:
  /// **'Отправить'**
  String get sendButton;

  /// No description provided for @sessionDetailSessionClosedTitle.
  ///
  /// In ru, this message translates to:
  /// **'Диалог в архиве'**
  String get sessionDetailSessionClosedTitle;

  /// No description provided for @sessionDetailSessionNotAnswerAndClose.
  ///
  /// In ru, this message translates to:
  /// **'Завершить диалог'**
  String get sessionDetailSessionNotAnswerAndClose;

  /// No description provided for @sessionDetailSessionDialogWillBeSavedToArchive.
  ///
  /// In ru, this message translates to:
  /// **'Этот диалог будет сохранен в архиве'**
  String get sessionDetailSessionDialogWillBeSavedToArchive;

  /// No description provided for @countMonth1.
  ///
  /// In ru, this message translates to:
  /// **'{count} месяц'**
  String countMonth1(Object count);

  /// No description provided for @countMonth2.
  ///
  /// In ru, this message translates to:
  /// **'{count} месяца'**
  String countMonth2(Object count);

  /// No description provided for @countMonth3.
  ///
  /// In ru, this message translates to:
  /// **'{count} месяцев'**
  String countMonth3(Object count);

  /// No description provided for @countYear1.
  ///
  /// In ru, this message translates to:
  /// **'{count} год'**
  String countYear1(Object count);

  /// No description provided for @countYears2.
  ///
  /// In ru, this message translates to:
  /// **'{count} годa'**
  String countYears2(Object count);

  /// No description provided for @countYears3.
  ///
  /// In ru, this message translates to:
  /// **'{count} лет'**
  String countYears3(Object count);

  /// No description provided for @subscriptionsPageTitle.
  ///
  /// In ru, this message translates to:
  /// **'Подписки'**
  String get subscriptionsPageTitle;

  /// No description provided for @subscriptionsPageActiveSubscription.
  ///
  /// In ru, this message translates to:
  /// **'Активная подписка'**
  String get subscriptionsPageActiveSubscription;

  /// No description provided for @subscriptionsPageInactiveSubscription.
  ///
  /// In ru, this message translates to:
  /// **'Неактивная подписка'**
  String get subscriptionsPageInactiveSubscription;

  /// No description provided for @subscriptionsPageExpires.
  ///
  /// In ru, this message translates to:
  /// **'Истекает'**
  String get subscriptionsPageExpires;

  /// No description provided for @subscriptionsPageExpired.
  ///
  /// In ru, this message translates to:
  /// **'Истекла'**
  String get subscriptionsPageExpired;

  /// No description provided for @subscriptionsPageHaventActiveSubscriptions.
  ///
  /// In ru, this message translates to:
  /// **'У вас пока нет активных подпискок'**
  String get subscriptionsPageHaventActiveSubscriptions;

  /// No description provided for @subscriptionsPageYouCanBuy.
  ///
  /// In ru, this message translates to:
  /// **'Вы можете докупить дни'**
  String get subscriptionsPageYouCanBuy;

  /// No description provided for @subscriptionsPageSubscribe.
  ///
  /// In ru, this message translates to:
  /// **'Оформить'**
  String get subscriptionsPageSubscribe;

  /// No description provided for @subscriptionsPageSelectTariff.
  ///
  /// In ru, this message translates to:
  /// **'Выберите тариф'**
  String get subscriptionsPageSelectTariff;

  /// No description provided for @subscriptionsPagePricePerMonthInRub.
  ///
  /// In ru, this message translates to:
  /// **'{price} руб / мес'**
  String subscriptionsPagePricePerMonthInRub(Object price);

  /// No description provided for @subscriptionsPagePriceInRub.
  ///
  /// In ru, this message translates to:
  /// **'{price} руб'**
  String subscriptionsPagePriceInRub(Object price);

  /// No description provided for @subscriptionsPageFullPriceInRub.
  ///
  /// In ru, this message translates to:
  /// **'({price} руб за весь период)'**
  String subscriptionsPageFullPriceInRub(Object price);

  /// No description provided for @subscriptionsPageMostOptionalTitle.
  ///
  /// In ru, this message translates to:
  /// **'Самый выгодный'**
  String get subscriptionsPageMostOptionalTitle;

  /// No description provided for @freeTrialPeriodTitle.
  ///
  /// In ru, this message translates to:
  /// **'Бесплатный пробный период'**
  String get freeTrialPeriodTitle;

  /// No description provided for @twoWeeksDurationTitle.
  ///
  /// In ru, this message translates to:
  /// **'2 недели'**
  String get twoWeeksDurationTitle;

  /// No description provided for @tryTitle.
  ///
  /// In ru, this message translates to:
  /// **'Попробуйте'**
  String get tryTitle;

  /// No description provided for @subscriptionsPageHeaderText.
  ///
  /// In ru, this message translates to:
  /// **'Выберите подходящий тариф для вас!'**
  String get subscriptionsPageHeaderText;

  /// No description provided for @subscriptionSuccessfulApplied.
  ///
  /// In ru, this message translates to:
  /// **'Подписка успешно оформлена 🎉'**
  String get subscriptionSuccessfulApplied;

  /// No description provided for @subscriptionSuccessfulCoolButton.
  ///
  /// In ru, this message translates to:
  /// **'Класс!'**
  String get subscriptionSuccessfulCoolButton;

  /// No description provided for @subscriptionsPageBuy.
  ///
  /// In ru, this message translates to:
  /// **'Купить'**
  String get subscriptionsPageBuy;

  /// No description provided for @subscriptionsPagePrice.
  ///
  /// In ru, this message translates to:
  /// **'Цена'**
  String get subscriptionsPagePrice;

  /// No description provided for @subscriptionsTry14FreeDays.
  ///
  /// In ru, this message translates to:
  /// **'Попробуйте 14 дней'**
  String get subscriptionsTry14FreeDays;

  /// No description provided for @subscriptionsFreeTitle.
  ///
  /// In ru, this message translates to:
  /// **'бесплатно'**
  String get subscriptionsFreeTitle;

  /// No description provided for @paymentTitle.
  ///
  /// In ru, this message translates to:
  /// **'Оплата подписки'**
  String get paymentTitle;

  /// No description provided for @paymentPaymentCanceledTitle.
  ///
  /// In ru, this message translates to:
  /// **'Оплата отменена'**
  String get paymentPaymentCanceledTitle;

  /// No description provided for @paymentPaymentErrorTitle.
  ///
  /// In ru, this message translates to:
  /// **'Во время оплаты произошла ошибка'**
  String get paymentPaymentErrorTitle;

  /// No description provided for @paymentPaymentUnsupportedErrorTitle.
  ///
  /// In ru, this message translates to:
  /// **'Неподдерживаемый тип оплаты'**
  String get paymentPaymentUnsupportedErrorTitle;

  /// No description provided for @appBarQAR.
  ///
  /// In ru, this message translates to:
  /// **'QAR'**
  String get appBarQAR;

  /// No description provided for @appBarTrial.
  ///
  /// In ru, this message translates to:
  /// **'Пробный период'**
  String get appBarTrial;

  /// No description provided for @activeMessages.
  ///
  /// In ru, this message translates to:
  /// **'Активные сообщения'**
  String get activeMessages;

  /// No description provided for @archiveMessages.
  ///
  /// In ru, this message translates to:
  /// **'Архив'**
  String get archiveMessages;

  /// No description provided for @profilePageTitle.
  ///
  /// In ru, this message translates to:
  /// **'Профиль'**
  String get profilePageTitle;

  /// No description provided for @profilePagePhone.
  ///
  /// In ru, this message translates to:
  /// **'Номер телефона'**
  String get profilePagePhone;

  /// No description provided for @profilePageBye.
  ///
  /// In ru, this message translates to:
  /// **'Купить'**
  String get profilePageBye;

  /// No description provided for @profilePageChangeTariff.
  ///
  /// In ru, this message translates to:
  /// **'Изменить тариф'**
  String get profilePageChangeTariff;

  /// No description provided for @profilePageSubscription.
  ///
  /// In ru, this message translates to:
  /// **'Подписка'**
  String get profilePageSubscription;

  /// No description provided for @profilePageSubscriptionWillClose.
  ///
  /// In ru, this message translates to:
  /// **'Заканчивается {datetime}'**
  String profilePageSubscriptionWillClose(Object datetime);

  /// No description provided for @profilePageNotHaveSubscription.
  ///
  /// In ru, this message translates to:
  /// **'Нет активной подписки'**
  String get profilePageNotHaveSubscription;

  /// No description provided for @profilePageLogoutButton.
  ///
  /// In ru, this message translates to:
  /// **'Выход'**
  String get profilePageLogoutButton;

  /// No description provided for @profilePageCurrentTariff.
  ///
  /// In ru, this message translates to:
  /// **'Текущий тариф'**
  String get profilePageCurrentTariff;

  /// No description provided for @backButton.
  ///
  /// In ru, this message translates to:
  /// **'Назад'**
  String get backButton;

  /// No description provided for @termsPageTitle.
  ///
  /// In ru, this message translates to:
  /// **'Пользовательское соглашение'**
  String get termsPageTitle;

  /// No description provided for @carDamagedTitle.
  ///
  /// In ru, this message translates to:
  /// **'Случилась авария'**
  String get carDamagedTitle;

  /// No description provided for @carInterferesTitle.
  ///
  /// In ru, this message translates to:
  /// **'Авто мешает'**
  String get carInterferesTitle;

  /// No description provided for @sorfUpdateTitle.
  ///
  /// In ru, this message translates to:
  /// **'Доступно обновление приложения'**
  String get sorfUpdateTitle;

  /// No description provided for @hardUpdateTitle.
  ///
  /// In ru, this message translates to:
  /// **'Приложение устарело'**
  String get hardUpdateTitle;

  /// No description provided for @hardUpdateSubtitle.
  ///
  /// In ru, this message translates to:
  /// **'Эта версия больше не поддерживается'**
  String get hardUpdateSubtitle;

  /// No description provided for @hardUpdateButtonTitle.
  ///
  /// In ru, this message translates to:
  /// **'Обновить'**
  String get hardUpdateButtonTitle;

  /// No description provided for @softUpdateButtonTitle.
  ///
  /// In ru, this message translates to:
  /// **'Обновить сейчас'**
  String get softUpdateButtonTitle;

  /// No description provided for @softUpdateLaterButtonTitle.
  ///
  /// In ru, this message translates to:
  /// **'Позже'**
  String get softUpdateLaterButtonTitle;

  /// No description provided for @updateAvailable.
  ///
  /// In ru, this message translates to:
  /// **'Доступно обновление'**
  String get updateAvailable;

  /// No description provided for @paymentConfirmation.
  ///
  /// In ru, this message translates to:
  /// **'Подтверждение оплаты'**
  String get paymentConfirmation;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ru': return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
