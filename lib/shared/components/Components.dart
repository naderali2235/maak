import 'package:flutter/material.dart';

Widget formField({
  required TextEditingController controller,
  required TextInputType inputType,
  required String label,
  required IconData icon,
  String? hintText,
  IconData? suffixIcon,
  Function()? onTab,
  String? Function(String? value)? validate,
  Function(String value)? submit,
  required String borderType,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: inputType,
      validator: validate,
      onTap: onTab,
      onFieldSubmitted: submit,
      decoration: InputDecoration(
          label: Text(label),
          hintText: hintText,
          prefixIcon: Icon(icon),
          suffixIcon: Icon(suffixIcon),
          border: borderType == 'out'
              ? const OutlineInputBorder()
              : const UnderlineInputBorder()),
    );

Widget categoryItem({
  required BuildContext context,
  Function()? inkOnTap,
  required String categoryTitle,
  required String categoryDescription,
  required String image,
}) {
  return Card(
    elevation: 0,
    clipBehavior: Clip.hardEdge,
    color: Theme.of(context).colorScheme.surface,
    child: InkWell(
      onTap: inkOnTap,
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.00),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      categoryTitle,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.00,
                          color: Theme.of(context).colorScheme.background),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      categoryDescription,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.00,
                          color: Theme.of(context).colorScheme.background),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Container(
                  width: 100.00,
                  height: 100.00,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  )),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget drawerListTile(
    {Widget? leading,
    String title = '',
    required bool selected,
    Function()? onTab,
    required BuildContext context}) {
  return ListTile(
    leading: leading,
    title: Text(
      title,
      style: TextStyle(
          fontSize: 20.00,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.surface.withOpacity(1)),
      overflow: TextOverflow.ellipsis,
    ),
    selected: selected,
    onTap: onTab,
    selectedTileColor: Colors.white,
  );
}
