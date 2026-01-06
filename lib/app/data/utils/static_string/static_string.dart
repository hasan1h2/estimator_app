import '../static_img/static_img.dart';

class StaticString {
  // RegExp
  static final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  static final passRegex = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,}$');
  // RegExp
  // -----------------Aut Page Text ---------------------
  static final String signUp = "Sign up";
  static final String signIn = "Sign in ";
  static final String or = "Or";
  static final String gAccount = "Continue with Google account";
  static final String apAccount = "Continue with Apple account";
  static final String name = "Name...";
  static final String email = "Email...";
  static final String pass = "Password...";
  static final String forPass = "Forgot Password?";
  static final String areaNameHin = "Enter your Area Name";
  static final String areaLabel = "Area Name";
  static final String rePass = "Reset Password";
  static final String cPass = "Confirm Password....";
  static final String alAccount = "Already have an account? ";
  static final String signAccount = "Sign in here!";
  static final String signWith = "Sign in with";
  static final String forPassHa = "Forgot Password";
  static final String forPassSub =
      "Enter your email address accosiated with your account";
  static final String verificationHa = "Verification Code";
  static final String verificationSub =
      "Enter the verification code we just sent you on your e-mail address";
  static final String verify = "Verify";
  static final String ifY = "If you didn’t receive a code !";
  static final String resend = " Resend";
  static final String success = "Successful";
  static final String continueBtn = "Continue";
  static final String successMas =
      "Congratulations! Your password has been changed. Click continue to login";

  // --------------------------  Profile Page Text----------------------------
  static final String proTitle = "Complete Your Profile";
  static final String proSubTitle =
      "Help us set up your company account to get started";
  static final String comName = "Company Name";
  static final String comAdd = "Company Address";
  static final String comAdd2 = "Address Line 2";
  static final String comAddHint = "Street address";
  static final String comAddHint2 = "Apt, suite, unit, etc. (optional)";
  static final String comHint = "Enter company name";
  static final String phNumber = "Phone Number";
  static final String phHint = "440-496-6744";
  static final String emAdd = "Email Address";
  static final String emHint = "sales@company.com";
  static final String webSit = "Website";
  static final String webHint = "https://www.company.com";
  static final String city = "City";
  static final String state = "State";
  static final String zCode = "Zip Code";
  static final String zCod = "44017";
  static final String comLogo = "Company Logo";
  static final String upLogo = "Upload Logo";
  static final String phFormate = "PNG, JPG or GIF (max. 2MB)";
  static final String sComBtn = "Save Company info ";
  static final String saveChanBtn = "Save Changes ";

  // --------------------------  New Estimate   Page Text----------------------------
  static final String newEst = "New Estimate";
  static final String addPro = "Add Product/ services";
  static final String customer = "Customer";
  static final String settings = "Settings";
  static final List<Map<String, dynamic>> newEstVal = [
    {'title': newEst, 'icon': StaticImg.plus},
    {'title': addPro, 'icon': StaticImg.plus},
    {'title': customer, 'icon': StaticImg.plus},
    {'title': settings, 'icon': StaticImg.plus},
  ];

  static final List<String> gradelist = [
    "    primary1,"
        "primary2",
    "primary3",
    "primary4",
    "primary5",
  ];

  static final List<String> aboutlist = ["instagram", "medium", "threads"];

  static final String subTitle = "Create a professional estimate in minutes";
  static final String cusDetails = "Customer Details";
  static final String searchCus = "Search Customer";
  static final String fName = "FirstName";
  static final String lName = "Last Name";
  static final String emailF = "Email";
  static final String phoneF = "Phone";
  static final String addressF = "Address";
  static final String addressFHint = "123,main St";
  static final String saveConti = "Save & Continue";
  static final String continueWithout = "Continue without Saving";
  // =============================Add Item==================
  static final String area = "Area 1";
  static final String addItem = "Add Item";
  static final String servicePro = "Service / Product";
  static final String subServicePro = "Select Sub Service / Product";
  static final String selServPro = "Select Service / Product";
  static final String selServOp = "Select Sub Service Options";
  static final String serviceProHe = "e.g., Electrical outlet installation";
  static final String quantity = "Quantity";
  static final String price = "Price";
  static final String photos = "Photos";
  static final String addAnoItem = "Add Another Item";
  static final String addEst = "Add to Estimate";
  static final String addNeArea = "Add New Area ";
  static final String delete = "Delete ";
  static final String mainProdServ = "Main Product/\nService ";
  static final String subProdServ = "Sub Product/\nService ";
  static final String basXteWash = "Basic Exterior Wash ";
  static final String estiTotal = "Estimate Total ";
  static final String disco = "Discount ";
  static final String downPay = "Down Payment ";
  static final String require = "Required % ";
  static final String amount = "Amount ";
  static final String payReceived = "Payment Received ";
  static final String payMethod = "Payment Method ";
  static final String remainingBal = "Remaining Balance ";
  static final String processPay = "Process Payment";
  static final String preview= "Preview";


// =============================Edit Photo==================

  static final String editPho = "Edit Photo";
  static final String tool= "TOOL";
  static final String freehand = "Freehand";
  static final String dot = "Dot";
  static final String circle = "Circle";
  static final String color = "COLOR";
  static final String size = "SIZE";
  static final String clear = "Clear";
  static final String save = "Save";
  // ==================== customer From===============
  static final String fNameHint = "John ";
  static final String lNameHint = "Doe ";
  static final String saveCustomer = "Save customer ";

  // =======================Find CustomerText==================
  static final String findCustomer = "Find Customer ";
  static final String seaCustomer = "Search customer ";
  static final String customerName = "Jay Walser ";
  static final String customerPh = "+880-183839292 ";
  static final String customerEmail = "jaywalser@gmail.com ";
  static final String customerAdr = "Texas,USA. ";
  static final String select = "Select ";
  static final String estimates = "Estimates ";

  // ======================================Add your products & services===================
  static final String addProFormTi = "Add your products & \nservices";
  static final String addProFormSubTi =
      "you can add, edit or delete items anytime later";
  static final String addProFormBtn1 = "Add Main Product / Services";
  static final String addProFormBtn2 = "Add Sub Services";
  static final String addProFormBtn3 = "Sub Service Options";
  static final String addProFormBtn4 = "Edit Service or product";

  static final List<dynamic> addProBtnList = [
    addProFormBtn1,
    addProFormBtn2,
    addProFormBtn3,
    addProFormBtn4,
  ];
  // =================================Add Main Product / Service==================
  static final String addMaProServ = "Add Main Product / \nService";
  static final String addMaFormTi = "Service Title";
  static final String addMaFormHint = "Enter your Product/service title";
  static final String addMaFormDesc = "Description";
  static final String addMaFormDescHint = "Describe the product/service";
  static final String addMaFormPrice = "Base Price per Unit";
  static final String servPho = "Service Photo";
  static final String cancel = "Cancel";
  static final String saveSer = "Save Service";
  // ===============================Parent service======================
  static final String parentSer = "Parent service";
  static final String parentSubSer = "Sub service Title";
  static final String parenServTitle = "Add Sub services";
  // =====================================Sub Service Options=======================
  static final String subServiceOp = "Sub Service Options";
  static final String addNewOp = "Add New Option";
  static final String addNewSubOp =
      "These options will be available for all sub-services";
  static final String opHint = "Enter Options Name";
  static final String add = "ADD";
  static final String existingOp = "Existing Options";
  static final String op1 = "Brown";
  static final String op2 = "Red";

  // ===============================Edit Service or Product==================
  static final String editServPro = "Edit Service or Product";
  static final String carWash = "Car Wash";
  static final String edit = "Edit";

  // ===============================Settings==================
  static final String editComInfo = "Edit Company Info";
  static final String comInfo = "Company System";
  static final String helpCenter = "Help Center";
  static final String integrations = "Integrations";
  static final String comInform = "Company Information";
  static final String chLogo = "Choose Logo";
  static final String savCompInfo = "Save Company Info";
  static final List<String> settingsList = [
    editComInfo,
    comInfo,
    helpCenter,
    integrations,
  ];

  // ===============================Estimate Options==================
  static final String estimateOp = "Estimate Options";
  static final String saveEst = "Save Estimate";
  static final String defDownPay = "Default Down Payment %";
  static final String defDownPayHint =
      "Default percentage for down payment requests";
  static final String salesTax = "Sales Tax %";
  static final String salesTaxHint =
      "Sales tax percentage to apply to estimates";
  static final String estiDisclaimer = "Estimate Disclaimer";
  static final String estiFooterText = "Estimate Footer Text";
  static final String estiFooterTextHint = "Thank you for your business";
  static final String presetDisco = "Preset Discounts";
  static final String militaryDisc = "Military discount";
  static final String earlyBooking = "Early booking";
  static final String facebookPromo = "Facebook promo";
  static final String pdfSt = "PDF Layout Style";
  static final String saveEstiOp = "Save Estimate Options";
  static final String loGoCenter = "Logo Top Center";

  // ===================================Help Center==================
  static final String contCusService = "Contact Customer Service";
  static final String yourEmail = "Your Email";
  static final String describe = "Describe your issue or question";
  static final String sendMess = "Send Message";
  static final String howUseGuide = "How To Use Guide";
  static final String helpOpT1 = "Set Up Your Company";
  static final String helpOpSubT1 =
      "Go to Settings → Edit Company Info to add\nyour business details and logo.";
  static final String helpOpT2 = "Add Customers";
  static final String helpOpSubT2 =
      "Click the Customer button to add or search for\ncustomers..";
  static final String helpOpT3 = "Create Services";
  static final String helpOpSubT3 =
      "Use Add Service or Product to set up your\npreset services with pricing.";
  static final String helpOpT4 = "Build Estimates";
  static final String helpOpSubT4 =
      "Select a customer, add line items, attach\nphotos, and email the quote.";

  static final List<Map<String, dynamic>> UseGuideval = [
    {'title': helpOpT1, 'subtitle': helpOpSubT1},
    {'title': helpOpT2, 'subtitle': helpOpSubT2},
    {'title': helpOpT3, 'subtitle': helpOpSubT3},
    {'title': helpOpT4, 'subtitle': helpOpSubT4},
  ];
  static final String askedQuest = "Frequently Asked Questions";
  static final String askedQuest1 = "How do I attach photos to line items?";
  static final String askedQuest2 = "Can I use preset discounts?";
  static final String askedQuest3 = "How does CRM integration work?";
  static final String termsService = "Terms of Service";
  static final String queDet =
      "When creating an estimate, tap on any line item and \nselect Add Photo to attach images from your camera\nor gallery. Photos help customers visualize the work.";

  static final List<Map<String, dynamic>> questionsVal = [
    {'title': askedQuest1, 'subtitle': queDet},
    {'title': askedQuest2, 'subtitle': queDet},
    {'title': askedQuest3, 'subtitle': queDet},
  ];

  static final String termsTitle = "The Estimator Terms of Service";
  static final String termsSubTitle =
      "By using The Estimator app, you agree to these terms.This app is provided as is for professional landscapeighting estimation purposes.";
  static final String termsTitle1 = "Accuracy and Liability";
  static final String termsSubTitle2 =
      "You are responsible for the accuracy of all estimates and information entered. The Estimator is not liable forany business decisions made based on estimates created.";

  static final List<Map<String, dynamic>> termsVal = [
    {'title': termsTitle, 'subtitle': termsSubTitle},
    {'title': termsTitle1, 'subtitle': termsSubTitle2},
    {'title': termsTitle1, 'subtitle': termsSubTitle2},

  ];


  static final String cRMSystems = "Sync with CRM Systems";
  static final String zapierBtn = "Zapier";
  static final String cRMSystemsT = "Select the CRM systems you want to sync customer information and\nestimates with.";

}
