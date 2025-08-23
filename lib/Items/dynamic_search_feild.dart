import 'package:flutter/material.dart';

class DynamicSearchFeild extends StatefulWidget {
  const DynamicSearchFeild({super.key});

  @override
  State<DynamicSearchFeild> createState() =>
      _DynamicSearchFeildState();
}

class _DynamicSearchFeildState
    extends State<DynamicSearchFeild> {
  final TextEditingController _controller =
      TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // هل الكيبورد ظاهر؟
    final bottomInset = MediaQuery.of(
      context,
    ).viewInsets.bottom;
    final isKeyboardOpen = bottomInset > 0;
    return GestureDetector(
      // when click on the screen the keybord disappere
      onTap: () =>
          () => FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: SizedBox.expand(
          // AnimatedAlign here to move the searchbar up and dwon
          child: AnimatedAlign(
            duration: const Duration(
              milliseconds: 50,
            ),
            curve: Curves.easeOutCubic,
            alignment: isKeyboardOpen
                ? Alignment(0, -0.10)
                : Alignment.center,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                16,
                isKeyboardOpen ? 24 : 0,
                16,
                0,
              ),
              child: TextField(
                controller: _controller,
                textInputAction:
                    TextInputAction.search,
                onSubmitted: (q) {
                  // TODO: نفّذ البحث هنا
                  
                },
                onChanged: (value) {
                  // اختياري: بحث لحظي
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 5,
                      ),
                  labelText: 'Search',
                  suffixIcon: const Icon(
                    color: Colors.blueAccent,
                    size: 40,
                    Icons.search,
                  ), // يمين
                  hintText:
                      'Enter City Name ... ',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.cyan,
                    ),
                  ),
                  enabledBorder:
                      OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(
                              16,
                            ),
                        borderSide: BorderSide(
                          color:
                              Colors.lightGreen,
                          width: 3,
                        ),
                      ),
                ),
              ),
              // l==>left,T==>top,r==>right,B==>button
              // child: ConstrainedBox(
              //   constraints:
              //       const BoxConstraints(
              //         maxWidth: 600,
              //       ),
              //   child: Material(
              //     elevation: 4,
              //     borderRadius:
              //         BorderRadius.circular(16),
              //     clipBehavior: Clip.antiAlias,
              //     child: TextField(
              //       controller: _controller,
              //       textInputAction:
              //           TextInputAction.search,
              //       onSubmitted: (q) {
              //         // TODO: نفّذ البحث هنا
              //       },
              //       onChanged: (q) {
              //         // اختياري: بحث لحظي
              //       },
              //       decoration: InputDecoration(
              //           suffixIcon: const Icon(Icons.search), // يمين
              //         hintText: 'search here...',
              //         border: InputBorder.none,
              //         // padding داخلي مريح
              //         contentPadding:
              //             const EdgeInsets.symmetric(
              //               vertical: 14,
              //               horizontal: 16,
              //             ),
              //         // خلفية بيضاء للصندوق
              //         filled: true,
              //         fillColor: Colors.white,
              //       ),
              //     ),
              //   ),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
