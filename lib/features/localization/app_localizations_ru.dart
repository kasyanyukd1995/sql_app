import 'app_localizations.dart';

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Qr-Auto';

  @override
  String get loginPageContentTitle => 'Добро пожаловать';

  @override
  String get loginPageContentSubtitle => 'Введите номер телефона для входа';

  @override
  String get loginPageGetCodeButton => 'Получить код';

  @override
  String get loginPageAcceptingTermsTitlePart1 => 'Согласен с условиями ';

  @override
  String get loginPageAcceptingTermsTitlePart2 => 'пользовательского соглашения';

  @override
  String get otpTextFieldHint => 'Введите код';

  @override
  String get phoneNumberTextFieldErrorText => 'Неправильный номер телефона';

  @override
  String get otpCodeTextFieldErrorText => 'Неправильный код';

  @override
  String get registrationButton => 'Зарегистрироваться';

  @override
  String get loginButton => 'Войти';

  @override
  String get registrationPageTitle => 'Регистрация';

  @override
  String get registrationPageConfirmationCheckTitlePart1 => 'Согласен на обработку персональных данных.';

  @override
  String get registrationPageConfirmationCheckTitlePart2 => 'Политика конфиденциальности';

  @override
  String get phoneVerificationPageTitle => 'Верификация номера';

  @override
  String get phoneVerificationContentTitle => 'Введите код из смс';

  @override
  String resentCodeButtonWithTimeTitle(Object time) {
    return 'Отправить повторно $time';
  }

  @override
  String get resentCodeButton => 'Отправить повторно';

  @override
  String get confirmButton => 'Подтвердить';

  @override
  String get authCodeIncorrect => 'Неверный код';

  @override
  String get authUserNotFound => 'Пользователь не существует';

  @override
  String get authUserExists => 'Пользователь уже существует';

  @override
  String get authTimeoutNotExpired => 'Время для повторной отправки не истекло';

  @override
  String get authSMSSendingFailed => 'Не удалось отправить СМС';

  @override
  String get authWrongData => 'Данные некорректны';

  @override
  String get homePageActiveDialogsEmpty => 'Тут будет диалог, если с вами захотят связаться другие водители';

  @override
  String get homePageArchiveDialogsEmpty => 'Тут будут храниться сообщения об авариях с фотографиями и номером телефона виновника';

  @override
  String get qrCodePageCardTitle => 'Связаться с водителем';

  @override
  String get qrCodePageCardSubtitle => 'Отсканируйте QR-код';

  @override
  String get qrCodePageInfoAboutPrint => 'Распечатайте QR-код и повесьте на машину, чтобы водители могли связаться с вами. Сообщения придут в приложение';

  @override
  String get qrCodePageDidntCreateQrCodeMessage => 'Вы еще не создали QR-код';

  @override
  String get qrCodePageCreateQrCodeTitle => 'Создать QR-Code';

  @override
  String get qrCodePageShare => 'Поделиться';

  @override
  String get qrCodePageDownloadPdf => 'Скачать в PDF';

  @override
  String get qrCodePageFileDownloaded => 'Файл загружен';

  @override
  String get qrCodePageFileSystemPermissionDeniedDialogText => 'Вы не дали доступ к работе с файлами и мы не можем сохранить qr-код. Выдайте доступ в настройках';

  @override
  String get qrCodePageFileSystemPermissionDeniedDialogButtonText => 'Перейти в настройки';

  @override
  String get logoutButton => 'Выйти';

  @override
  String get shareTitle => 'QR auto';

  @override
  String get shareSubject => 'QR-код для связи';

  @override
  String get sessionsPageTitle => 'Диалоги';

  @override
  String get sessionsPageSessionClosedTitle => 'Завершен';

  @override
  String get sessionsPageSessionActiveTitle => 'Активный';

  @override
  String get sessionsPageNotQrCodeInfoTitle => 'У вас нет QR-кода и вам не могут написать';

  @override
  String get sessionsPageCreateQrCodeButton => 'Создать QR-code';

  @override
  String get sessionsPageNoMessagesTitle => 'У вас пока нет сообщений';

  @override
  String sessionsPageMessagesCountTitle(Object count) {
    return 'Сообщений: $count';
  }

  @override
  String get sessionDetailPageActiveTitle => 'Диалог';

  @override
  String sessionDetailPageArchiveTitle(Object datetime) {
    return 'Диалог $datetime';
  }

  @override
  String get sessionDetailPageErrorMessage => 'К сожалению диалог не найден';

  @override
  String get sessionDetailCloseSession => 'Завершить диалог';

  @override
  String get sendButton => 'Отправить';

  @override
  String get sessionDetailSessionClosedTitle => 'Диалог в архиве';

  @override
  String get sessionDetailSessionNotAnswerAndClose => 'Завершить диалог';

  @override
  String get sessionDetailSessionDialogWillBeSavedToArchive => 'Этот диалог будет сохранен в архиве';

  @override
  String countMonth1(Object count) {
    return '$count месяц';
  }

  @override
  String countMonth2(Object count) {
    return '$count месяца';
  }

  @override
  String countMonth3(Object count) {
    return '$count месяцев';
  }

  @override
  String countYear1(Object count) {
    return '$count год';
  }

  @override
  String countYears2(Object count) {
    return '$count годa';
  }

  @override
  String countYears3(Object count) {
    return '$count лет';
  }

  @override
  String get subscriptionsPageTitle => 'Подписки';

  @override
  String get subscriptionsPageActiveSubscription => 'Активная подписка';

  @override
  String get subscriptionsPageInactiveSubscription => 'Неактивная подписка';

  @override
  String get subscriptionsPageExpires => 'Истекает';

  @override
  String get subscriptionsPageExpired => 'Истекла';

  @override
  String get subscriptionsPageHaventActiveSubscriptions => 'У вас пока нет активных подпискок';

  @override
  String get subscriptionsPageYouCanBuy => 'Вы можете докупить дни';

  @override
  String get subscriptionsPageSubscribe => 'Оформить';

  @override
  String get subscriptionsPageSelectTariff => 'Выберите тариф';

  @override
  String subscriptionsPagePricePerMonthInRub(Object price) {
    return '$price руб / мес';
  }

  @override
  String subscriptionsPagePriceInRub(Object price) {
    return '$price руб';
  }

  @override
  String subscriptionsPageFullPriceInRub(Object price) {
    return '($price руб за весь период)';
  }

  @override
  String get subscriptionsPageMostOptionalTitle => 'Самый выгодный';

  @override
  String get freeTrialPeriodTitle => 'Бесплатный пробный период';

  @override
  String get twoWeeksDurationTitle => '2 недели';

  @override
  String get tryTitle => 'Попробуйте';

  @override
  String get subscriptionsPageHeaderText => 'Выберите подходящий тариф для вас!';

  @override
  String get subscriptionSuccessfulApplied => 'Подписка успешно оформлена 🎉';

  @override
  String get subscriptionSuccessfulCoolButton => 'Класс!';

  @override
  String get subscriptionsPageBuy => 'Купить';

  @override
  String get subscriptionsPagePrice => 'Цена';

  @override
  String get subscriptionsTry14FreeDays => 'Попробуйте 14 дней';

  @override
  String get subscriptionsFreeTitle => 'бесплатно';

  @override
  String get paymentTitle => 'Оплата подписки';

  @override
  String get paymentPaymentCanceledTitle => 'Оплата отменена';

  @override
  String get paymentPaymentErrorTitle => 'Во время оплаты произошла ошибка';

  @override
  String get paymentPaymentUnsupportedErrorTitle => 'Неподдерживаемый тип оплаты';

  @override
  String get appBarQAR => 'QAR';

  @override
  String get appBarTrial => 'Пробный период';

  @override
  String get activeMessages => 'Активные сообщения';

  @override
  String get archiveMessages => 'Архив';

  @override
  String get profilePageTitle => 'Профиль';

  @override
  String get profilePagePhone => 'Номер телефона';

  @override
  String get profilePageBye => 'Купить';

  @override
  String get profilePageChangeTariff => 'Изменить тариф';

  @override
  String get profilePageSubscription => 'Подписка';

  @override
  String profilePageSubscriptionWillClose(Object datetime) {
    return 'Заканчивается $datetime';
  }

  @override
  String get profilePageNotHaveSubscription => 'Нет активной подписки';

  @override
  String get profilePageLogoutButton => 'Выход';

  @override
  String get profilePageCurrentTariff => 'Текущий тариф';

  @override
  String get backButton => 'Назад';

  @override
  String get termsPageTitle => 'Пользовательское соглашение';

  @override
  String get carDamagedTitle => 'Случилась авария';

  @override
  String get carInterferesTitle => 'Авто мешает';

  @override
  String get sorfUpdateTitle => 'Доступно обновление приложения';

  @override
  String get hardUpdateTitle => 'Приложение устарело';

  @override
  String get hardUpdateSubtitle => 'Эта версия больше не поддерживается';

  @override
  String get hardUpdateButtonTitle => 'Обновить';

  @override
  String get softUpdateButtonTitle => 'Обновить сейчас';

  @override
  String get softUpdateLaterButtonTitle => 'Позже';

  @override
  String get updateAvailable => 'Доступно обновление';

  @override
  String get paymentConfirmation => 'Подтверждение оплаты';
}
