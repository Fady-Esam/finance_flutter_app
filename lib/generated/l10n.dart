// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Finance`
  String get splash_screen_title {
    return Intl.message(
      'Finance',
      name: 'splash_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Get Started`
  String get start {
    return Intl.message('Get Started', name: 'start', desc: '', args: []);
  }

  /// `Track Your Spending`
  String get onBoarding_title_1 {
    return Intl.message(
      'Track Your Spending',
      name: 'onBoarding_title_1',
      desc: '',
      args: [],
    );
  }

  /// `Set Budgets Easily`
  String get onBoarding_title_2 {
    return Intl.message(
      'Set Budgets Easily',
      name: 'onBoarding_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Achieve Your Goals`
  String get onBoarding_title_3 {
    return Intl.message(
      'Achieve Your Goals',
      name: 'onBoarding_title_3',
      desc: '',
      args: [],
    );
  }

  /// `Get a clear view of where your money goes every month`
  String get onBoarding_subTitle_1 {
    return Intl.message(
      'Get a clear view of where your money goes every month',
      name: 'onBoarding_subTitle_1',
      desc: '',
      args: [],
    );
  }

  /// `Control your finances by creating monthly budgets`
  String get onBoarding_subTitle_2 {
    return Intl.message(
      'Control your finances by creating monthly budgets',
      name: 'onBoarding_subTitle_2',
      desc: '',
      args: [],
    );
  }

  /// `Save money and reach your financial goals faster`
  String get onBoarding_subTitle_3 {
    return Intl.message(
      'Save money and reach your financial goals faster',
      name: 'onBoarding_subTitle_3',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Finance Manager`
  String get welcome_title {
    return Intl.message(
      'Welcome to Finance Manager',
      name: 'welcome_title',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get dark_mode {
    return Intl.message('Dark Mode', name: 'dark_mode', desc: '', args: []);
  }

  /// `All Activities`
  String get all_activities {
    return Intl.message(
      'All Activities',
      name: 'all_activities',
      desc: '',
      args: [],
    );
  }

  /// `Plus`
  String get plus {
    return Intl.message('Plus', name: 'plus', desc: '', args: []);
  }

  /// `Edit`
  String get edit {
    return Intl.message('Edit', name: 'edit', desc: '', args: []);
  }

  /// `Delete`
  String get delete {
    return Intl.message('Delete', name: 'delete', desc: '', args: []);
  }

  /// `Minus`
  String get minus {
    return Intl.message('Minus', name: 'minus', desc: '', args: []);
  }

  /// `Details here....`
  String get details {
    return Intl.message(
      'Details here....',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message('Done', name: 'done', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `My Balance`
  String get my_balance {
    return Intl.message('My Balance', name: 'my_balance', desc: '', args: []);
  }

  /// `Today Total Balance`
  String get today_total_balance {
    return Intl.message(
      'Today Total Balance',
      name: 'today_total_balance',
      desc: '',
      args: [],
    );
  }

  /// `Activity`
  String get activity {
    return Intl.message('Activity', name: 'activity', desc: '', args: []);
  }

  /// `Today's Activity`
  String get todya_activity {
    return Intl.message(
      'Today\'s Activity',
      name: 'todya_activity',
      desc: '',
      args: [],
    );
  }

  /// `See All`
  String get see_all {
    return Intl.message('See All', name: 'see_all', desc: '', args: []);
  }

  /// `Something went wrong, Please try again`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong, Please try again',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid amount greater than 0`
  String get pleaseEnterValidAmount {
    return Intl.message(
      'Please enter a valid amount greater than 0',
      name: 'pleaseEnterValidAmount',
      desc: '',
      args: [],
    );
  }

  /// `Close Drawer`
  String get closeDrawer {
    return Intl.message(
      'Close Drawer',
      name: 'closeDrawer',
      desc: '',
      args: [],
    );
  }

  /// `Exit App`
  String get closeApp {
    return Intl.message('Exit App', name: 'closeApp', desc: '', args: []);
  }

  /// `Add`
  String get add {
    return Intl.message('Add', name: 'add', desc: '', args: []);
  }

  /// `Category`
  String get category {
    return Intl.message('Category', name: 'category', desc: '', args: []);
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Categories`
  String get categories {
    return Intl.message('Categories', name: 'categories', desc: '', args: []);
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `This field is required`
  String get required_field {
    return Intl.message(
      'This field is required',
      name: 'required_field',
      desc: '',
      args: [],
    );
  }

  /// `Add Category`
  String get add_category {
    return Intl.message(
      'Add Category',
      name: 'add_category',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Select Color`
  String get select_color {
    return Intl.message(
      'Select Color',
      name: 'select_color',
      desc: '',
      args: [],
    );
  }

  /// `Select Icon`
  String get select_icon {
    return Intl.message('Select Icon', name: 'select_icon', desc: '', args: []);
  }

  /// `Food`
  String get icon_food {
    return Intl.message('Food', name: 'icon_food', desc: '', args: []);
  }

  /// `Shopping`
  String get icon_shopping {
    return Intl.message('Shopping', name: 'icon_shopping', desc: '', args: []);
  }

  /// `Home`
  String get icon_home {
    return Intl.message('Home', name: 'icon_home', desc: '', args: []);
  }

  /// `Transport`
  String get icon_transport {
    return Intl.message(
      'Transport',
      name: 'icon_transport',
      desc: '',
      args: [],
    );
  }

  /// `Salary`
  String get icon_salary {
    return Intl.message('Salary', name: 'icon_salary', desc: '', args: []);
  }

  /// `Entertainment`
  String get icon_entertainment {
    return Intl.message(
      'Entertainment',
      name: 'icon_entertainment',
      desc: '',
      args: [],
    );
  }

  /// `Health`
  String get icon_health {
    return Intl.message('Health', name: 'icon_health', desc: '', args: []);
  }

  /// `Bills`
  String get icon_bills {
    return Intl.message('Bills', name: 'icon_bills', desc: '', args: []);
  }

  /// `Travel`
  String get icon_travel {
    return Intl.message('Travel', name: 'icon_travel', desc: '', args: []);
  }

  /// `Other`
  String get icon_category {
    return Intl.message('Other', name: 'icon_category', desc: '', args: []);
  }

  /// `Select Category`
  String get select_category {
    return Intl.message(
      'Select Category',
      name: 'select_category',
      desc: '',
      args: [],
    );
  }

  /// `Transactions`
  String get transactions {
    return Intl.message(
      'Transactions',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message('All', name: 'all', desc: '', args: []);
  }

  /// `Income`
  String get income {
    return Intl.message('Income', name: 'income', desc: '', args: []);
  }

  /// `Expense`
  String get expense {
    return Intl.message('Expense', name: 'expense', desc: '', args: []);
  }

  /// `No Category Filter`
  String get no_category_filter {
    return Intl.message(
      'No Category Filter',
      name: 'no_category_filter',
      desc: '',
      args: [],
    );
  }

  /// `None`
  String get none {
    return Intl.message('None', name: 'none', desc: '', args: []);
  }

  /// `Title`
  String get title {
    return Intl.message('Title', name: 'title', desc: '', args: []);
  }

  /// `Description`
  String get description {
    return Intl.message('Description', name: 'description', desc: '', args: []);
  }

  /// `No Category`
  String get no_category {
    return Intl.message('No Category', name: 'no_category', desc: '', args: []);
  }

  /// `No Recurrence`
  String get no_recurrence {
    return Intl.message(
      'No Recurrence',
      name: 'no_recurrence',
      desc: '',
      args: [],
    );
  }

  /// `Addition Datetime`
  String get addition_datetime {
    return Intl.message(
      'Addition Datetime',
      name: 'addition_datetime',
      desc: '',
      args: [],
    );
  }

  /// `Recurrence End Datetime`
  String get recurrence_end_datetime {
    return Intl.message(
      'Recurrence End Datetime',
      name: 'recurrence_end_datetime',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a title`
  String get please_enter_title {
    return Intl.message(
      'Please enter a title',
      name: 'please_enter_title',
      desc: '',
      args: [],
    );
  }

  /// `Daily`
  String get daily {
    return Intl.message('Daily', name: 'daily', desc: '', args: []);
  }

  /// `Weekly`
  String get weekly {
    return Intl.message('Weekly', name: 'weekly', desc: '', args: []);
  }

  /// `Monthly`
  String get monthly {
    return Intl.message('Monthly', name: 'monthly', desc: '', args: []);
  }

  /// `Yearly`
  String get yearly {
    return Intl.message('Yearly', name: 'yearly', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Jan`
  String get jan {
    return Intl.message('Jan', name: 'jan', desc: '', args: []);
  }

  /// `Feb`
  String get feb {
    return Intl.message('Feb', name: 'feb', desc: '', args: []);
  }

  /// `Mar`
  String get mar {
    return Intl.message('Mar', name: 'mar', desc: '', args: []);
  }

  /// `Apr`
  String get apr {
    return Intl.message('Apr', name: 'apr', desc: '', args: []);
  }

  /// `May`
  String get may {
    return Intl.message('May', name: 'may', desc: '', args: []);
  }

  /// `Jun`
  String get jun {
    return Intl.message('Jun', name: 'jun', desc: '', args: []);
  }

  /// `Jul`
  String get jul {
    return Intl.message('Jul', name: 'jul', desc: '', args: []);
  }

  /// `Aug`
  String get aug {
    return Intl.message('Aug', name: 'aug', desc: '', args: []);
  }

  /// `Sep`
  String get sep {
    return Intl.message('Sep', name: 'sep', desc: '', args: []);
  }

  /// `Oct`
  String get oct {
    return Intl.message('Oct', name: 'oct', desc: '', args: []);
  }

  /// `Nov`
  String get nov {
    return Intl.message('Nov', name: 'nov', desc: '', args: []);
  }

  /// `Dec`
  String get dec {
    return Intl.message('Dec', name: 'dec', desc: '', args: []);
  }

  /// `Analytics`
  String get analytics {
    return Intl.message('Analytics', name: 'analytics', desc: '', args: []);
  }

  /// `Cash Flow`
  String get cashflow {
    return Intl.message('Cash Flow', name: 'cashflow', desc: '', args: []);
  }

  /// `This category already exists`
  String get duplicate_category_error {
    return Intl.message(
      'This category already exists',
      name: 'duplicate_category_error',
      desc: '',
      args: [],
    );
  }

  /// `Month {month}\nBalance: {balance}`
  String tooltipBalanceLabel(Object month, Object balance) {
    return Intl.message(
      'Month $month\nBalance: $balance',
      name: 'tooltipBalanceLabel',
      desc: '',
      args: [month, balance],
    );
  }

  /// `Value: `
  String get value {
    return Intl.message('Value: ', name: 'value', desc: '', args: []);
  }

  /// `Total Income`
  String get total_income {
    return Intl.message(
      'Total Income',
      name: 'total_income',
      desc: '',
      args: [],
    );
  }

  /// `Total Expense`
  String get total_expense {
    return Intl.message(
      'Total Expense',
      name: 'total_expense',
      desc: '',
      args: [],
    );
  }

  /// `Net Balance`
  String get net_balance {
    return Intl.message('Net Balance', name: 'net_balance', desc: '', args: []);
  }

  /// `, Recurrence: {recurr}`
  String recurrence(Object recurr) {
    return Intl.message(
      ', Recurrence: $recurr',
      name: 'recurrence',
      desc: '',
      args: [recurr],
    );
  }

  /// `No category data to display`
  String get no_category_data {
    return Intl.message(
      'No category data to display',
      name: 'no_category_data',
      desc: '',
      args: [],
    );
  }

  /// `Welcome, {name}`
  String welcome_name(Object name) {
    return Intl.message(
      'Welcome, $name',
      name: 'welcome_name',
      desc: '',
      args: [name],
    );
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Initial Balance`
  String get initial_balance {
    return Intl.message(
      'Initial Balance',
      name: 'initial_balance',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Name`
  String get enter_name {
    return Intl.message(
      'Enter Your Name',
      name: 'enter_name',
      desc: '',
      args: [],
    );
  }

  /// `من فضلك ادخل اسمك`
  String get please_enter_name {
    return Intl.message(
      'من فضلك ادخل اسمك',
      name: 'please_enter_name',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message('About', name: 'about', desc: '', args: []);
  }

  /// `Easily track expenses, manage your balance, and schedule recurring transactions as all securely on your device.`
  String get about_text {
    return Intl.message(
      'Easily track expenses, manage your balance, and schedule recurring transactions as all securely on your device.',
      name: 'about_text',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Edit Name`
  String get edit_name {
    return Intl.message('Edit Name', name: 'edit_name', desc: '', args: []);
  }

  /// `Theme`
  String get theme {
    return Intl.message('Theme', name: 'theme', desc: '', args: []);
  }

  /// `App Version`
  String get app_version {
    return Intl.message('App Version', name: 'app_version', desc: '', args: []);
  }

  /// `, Occurrence: {occurrence}`
  String occurrence(Object occurrence) {
    return Intl.message(
      ', Occurrence: $occurrence',
      name: 'occurrence',
      desc: '',
      args: [occurrence],
    );
  }

  /// `Confirm Delete`
  String get confirm_delete {
    return Intl.message(
      'Confirm Delete',
      name: 'confirm_delete',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this finance item?`
  String get sure_confirm_delete_finance {
    return Intl.message(
      'Are you sure you want to delete this finance item?',
      name: 'sure_confirm_delete_finance',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete this category item?`
  String get sure_confirm_delete_category {
    return Intl.message(
      'Are you sure you want to delete this category item?',
      name: 'sure_confirm_delete_category',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
