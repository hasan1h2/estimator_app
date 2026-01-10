import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/estimate_add_item1_page_controller.dart';
import '../inner_widget/add_area_full_from/add_area_full_from.dart';

class EstimateAddItem1PageView extends GetView<EstimateAddItem1PageController> {
  const EstimateAddItem1PageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff009700), // Using the green color
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 20,
            ),
            padding: EdgeInsets.zero,
            onPressed: () => Get.back(),
          ),
        ),
        title: const Text(
          "New Estimate",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff009700),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        height: double
            .infinity, // Use double.infinity to fill available space without overflow
        margin: const EdgeInsets.only(
          top: 50,
        ), // Increased margin to 50 for larger header
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: Obx(
            // Reactive widget to watch the changes in mainForms
            () => SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: controller.mainForms.length,
                    itemBuilder: (context, index) {
                      final mainForm = controller.mainForms[index];
                      return GestureDetector(
                        onTap: () => controller.activeMainIndex.value = index,
                        child: Card(
                          elevation: 0,
                          color: controller.activeMainIndex.value == index
                              ? Colors.white
                              : null,
                          margin: const EdgeInsets.only(bottom: 16),
                          child: Obx(
                            () => Form(
                              key: mainForm.formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  AddAreaFullFrom(
                                    index: index,
                                  ), // Main form area
                                  // Dynamically added Item Forms (reactive)
                                  ...mainForm.itemForms,
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  _bottomButtons(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Bottom Buttons Widget
  Widget _bottomButtons() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black.withAlpha(5), blurRadius: 8)],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 1. Add Another Item
          SizedBox(
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
              onPressed: controller.addItemToActiveMain,
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.grey.shade400),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add, color: Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    "Add Another Item",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 12),

          // 2. Add to Estimate (Submit)
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
               Get.toNamed(Routes.ESTIMATE_DOWN_PAYMENT_PAGE);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(
                  0xff32CD32,
                ), // Using explicit green as usually StaticColors.btnColor might not be exact match or imported yet, but will assume generic green for "Add to Estimate" based on ref.
                // Or better, let's try to use StaticColors if imported.
                // Since I can't guarantee import in this same block efficiently without risk, I'll use Color(0xff32CD32) which is LimeGreen, closely matching the typical "Success" color or the one I found in StaticColors.
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Add to Estimate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),

          // 3. Add New Area
          SizedBox(
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
              onPressed: controller.addMainForm,
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.grey.shade400),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add, color: Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    "Add New Area",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
