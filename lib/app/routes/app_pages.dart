import 'package:get/get.dart';

// Importing bindings and views for each page in the app
import '../modules/Settings_Info_options_help_pages/settings_page/bindings/settings_page_binding.dart';
import '../modules/Settings_Info_options_help_pages/settings_page/views/settings_page_view.dart';
import '../modules/add_product_form/add_product_form_main_page/bindings/add_product_form_main_page_binding.dart';
import '../modules/add_product_form/add_product_form_main_page/views/add_product_form_main_page_view.dart';
import '../modules/add_product_form/add_proservice_page/bindings/add_proservice_page_binding.dart';
import '../modules/add_product_form/add_proservice_page/views/add_proservice_page_view.dart';
import '../modules/add_product_form/add_proservice_parent_page/bindings/add_proservice_parent_page_binding.dart';
import '../modules/add_product_form/add_proservice_parent_page/views/add_proservice_parent_page_view.dart';
import '../modules/add_product_form/edit_service_product_page/bindings/edit_service_product_page_binding.dart';
import '../modules/add_product_form/edit_service_product_page/views/edit_service_product_page_view.dart';
import '../modules/add_product_form/sub_service_op_page/bindings/sub_service_op_page_binding.dart';
import '../modules/add_product_form/sub_service_op_page/views/sub_service_op_page_view.dart';
import '../modules/aut/forgot_pass_page/bindings/forgot_pass_page_binding.dart';
import '../modules/aut/forgot_pass_page/views/forgot_pass_page_view.dart';
import '../modules/aut/sin_in_page/bindings/sin_in_page_binding.dart';
import '../modules/aut/sin_in_page/views/sin_in_page_view.dart';
import '../modules/aut/sin_up_page/bindings/sin_up_page_binding.dart';
import '../modules/aut/sin_up_page/views/sin_up_page_view.dart';
import '../modules/aut/splash_page/bindings/splash_page_binding.dart';
import '../modules/aut/splash_page/views/splash_page_view.dart';
import '../modules/aut/success_page/bindings/success_page_binding.dart';
import '../modules/aut/success_page/views/success_page_view.dart';
import '../modules/aut/verifi_page/bindings/verifi_page_binding.dart';
import '../modules/aut/verifi_page/views/verifi_page_view.dart';
import '../modules/customer_management/customer_man_from_page/bindings/customer_man_from_page_binding.dart';
import '../modules/customer_management/customer_man_from_page/views/customer_man_from_page_view.dart';
import '../modules/customer_management/find_customerm_page/bindings/find_customerm_page_binding.dart';
import '../modules/customer_management/find_customerm_page/views/find_customerm_page_view.dart';
import '../modules/new_estimator_from/estimate_Add_Item1_page/bindings/estimate_add_item1_page_binding.dart';
import '../modules/new_estimator_from/estimate_Add_Item1_page/views/estimate_add_item1_page_view.dart';
import '../modules/new_estimator_from/estimate_Add_Item1_page/views/main_from_view.dart';
import '../modules/new_estimator_from/estimate_down_payment_page/bindings/estimate_down_payment_page_binding.dart';
import '../modules/new_estimator_from/estimate_down_payment_page/views/estimate_down_payment_page_view.dart';
import '../modules/new_estimator_from/estimate_full_summary_page/bindings/estimate_full_summary_page_binding.dart';
import '../modules/new_estimator_from/estimate_full_summary_page/views/estimate_full_summary_page_view.dart';
import '../modules/new_estimator_from/main_page/bindings/main_page_binding.dart';
import '../modules/new_estimator_from/main_page/views/main_page_view.dart';
import '../modules/new_estimator_from/new_estimate_add_page/bindings/new_estimate_add_page_binding.dart';
import '../modules/new_estimator_from/new_estimate_add_page/views/new_estimate_add_page_view.dart';
import '../modules/profile_page/profile_edit_page/bindings/profile_edit_page_binding.dart';
import '../modules/profile_page/profile_edit_page/views/profile_edit_page_view.dart';
import '../modules/profile_page/profile_from_page/bindings/profile_from_page_binding.dart';
import '../modules/profile_page/profile_from_page/views/profile_from_page_view.dart';
import '../modules/profile_page/profile_main_page/bindings/profile_main_page_binding.dart';
import '../modules/profile_page/profile_main_page/views/profile_main_page_view.dart';
import '../modules/settings_Info_options_help_pages/edit_company_info_page/bindings/edit_company_info_page_binding.dart';
import '../modules/settings_Info_options_help_pages/edit_company_info_page/views/edit_company_info_page_view.dart';
import '../modules/settings_Info_options_help_pages/estimate_options_page/bindings/estimate_options_page_binding.dart';
import '../modules/settings_Info_options_help_pages/estimate_options_page/views/estimate_options_page_view.dart';
import '../modules/settings_Info_options_help_pages/help_center_page/bindings/help_center_page_binding.dart';
import '../modules/settings_Info_options_help_pages/help_center_page/views/help_center_page_view.dart';
import '../modules/settings_Info_options_help_pages/integrations/bindings/integrations_binding.dart';
import '../modules/settings_Info_options_help_pages/integrations/views/integrations_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // Define the initial route of the app
  static final INITIAL = Routes.HELP_CENTER_PAGE;

  // Define the list of all routes in the app
  static final routes = [
    // Splash page route, which is the entry point
    GetPage(
      name: _Paths.SPLASH_PAGE,
      page: () => const SplashPageView(),
      binding: SplashPageBinding(),
    ),
    // Sign up page route
    GetPage(
      name: _Paths.SIN_UP_PAGE,
      page: () => const SinUpPageView(),
      binding: SinUpPageBinding(),
    ),
    // Sign in page route
    GetPage(
      name: _Paths.SIN_IN_PAGE,
      page: () => const SinInPageView(),
      binding: SinInPageBinding(),
    ),
    // Forgot password page route
    GetPage(
      name: _Paths.FORGOT_PASS_PAGE,
      page: () => const ForgotPassPageView(),
      binding: ForgotPassPageBinding(),
    ),
    // Verification page route
    GetPage(
      name: _Paths.VERIFI_PAGE,
      page: () => const VerifiPageView(),
      binding: VerifiPageBinding(),
    ),
    // Success page route after actions like registration or login
    GetPage(
      name: _Paths.SUCCESS_PAGE,
      page: () => const SuccessPageView(),
      binding: SuccessPageBinding(),
    ),
    // Profile route for editing or viewing profile
    GetPage(
      name: _Paths.PROFILE_FROM_PAGE,
      transition: Transition.rightToLeft,  // Adding transition for navigation
      transitionDuration: Duration(milliseconds: 500),  // Duration of the transition
      page: () => ProfileFromPageView(),
      binding: ProfileFromPageBinding(),
    ),
    // Main profile page route
    GetPage(
      name: _Paths.PROFILE_MAIN_PAGE,
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 500),
      page: () => const ProfileMainPageView(),
      binding: ProfileMainPageBinding(),
    ),
    // Main app page route
    GetPage(
      name: _Paths.MAIN_PAGE,
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 500),
      page: () => const MainPageView(),
      binding: MainPageBinding(),
    ),
    // Settings page route
    GetPage(
      name: _Paths.SETTINGS_PAGE,
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 500),
      page: () => const SettingsPageView(),
      binding: SettingsPageBinding(),
    ),
    // New estimate add page route
    GetPage(
      name: _Paths.NEW_ESTIMATE_ADD_PAGE,
      page: () => const NewEstimateAddPageView(),
      binding: NewEstimateAddPageBinding(),
    ),
    // Product form main page route
    GetPage(
      name: _Paths.ADD_PRODUCT_FORM_MAIN_PAGE,
      page: () => const AddProductFormMainPageView(),
      binding: AddProductFormMainPageBinding(),
    ),
    // Proservice page route
    GetPage(
      name: _Paths.ADD_PROSERVICE_PAGE,
      page: () => const AddProservicePageView(),
      binding: AddProservicePageBinding(),
    ),
    // Parent service page route
    GetPage(
      name: _Paths.ADD_PROSERVICE_PARENT_PAGE,
      page: () => const AddProserviceParentPageView(),
      binding: AddProserviceParentPageBinding(),
    ),
    // Subservice options page route
    GetPage(
      name: _Paths.SUB_SERVICE_OP_PAGE,
      page: () => const SubServiceOpPageView(),
      binding: SubServiceOpPageBinding(),
    ),
    // Edit service product page route
    GetPage(
      name: _Paths.EDIT_SERVICE_PRODUCT_PAGE,
      page: () => const EditServiceProductPageView(),
      binding: EditServiceProductPageBinding(),
    ),
    // Customer management page route
    GetPage(
      name: _Paths.CUSTOMER_MAN_FROM_PAGE,
      page: () => const CustomerManFromPageView(),
      binding: CustomerManFromPageBinding(),
    ),
    // Find customer page route
    GetPage(
      name: _Paths.FIND_CUSTOMERM_PAGE,
      page: () => const FindCustomermPageView(),
      binding: FindCustomermPageBinding(),
    ),
    // Edit company info page route
    GetPage(
      name: _Paths.EDIT_COMPANY_INFO_PAGE,
      page: () => const EditCompanyInfoPageView(),
      binding: EditCompanyInfoPageBinding(),
    ),
    // Estimate options page route
    GetPage(
      name: _Paths.ESTIMATE_OPTIONS_PAGE,
      page: () => const EstimateOptionsPageView(),
      binding: EstimateOptionsPageBinding(),
    ),
    // Help center page route
    GetPage(
      name: _Paths.HELP_CENTER_PAGE,
      page: () => const HelpCenterPageView(),
      binding: HelpCenterPageBinding(),
    ),
    // Integrations page route
    GetPage(
      name: _Paths.INTEGRATIONS,
      page: () => IntegrationsView(),
      binding: IntegrationsBinding(),
    ),
    // Estimate item add page route
    GetPage(
      name: _Paths.ESTIMATE_ADD_ITEM1_PAGE,
      page: () => const EstimateAddItem1PageView(),
      binding: EstimateAddItem1PageBinding(),
    ),
    // Estimate down payment page route
    GetPage(
      name: _Paths.ESTIMATE_DOWN_PAYMENT_PAGE,
      page: () => const EstimateDownPaymentPageView(),
      binding: EstimateDownPaymentPageBinding(),
    ),
    // Estimate full summary page route
    GetPage(
      name: _Paths.ESTIMATE_FULL_SUMMARY_PAGE,
      page: () => const EstimateFullSummaryPageView(),
      binding: EstimateFullSummaryPageBinding(),
    ),
    // Profile edit page route
    GetPage(
      name: _Paths.PROFILE_EDIT_PAGE,
      page: () => const ProfileEditPageView(),
      binding: ProfileEditPageBinding(),
    ),
  ];
}
