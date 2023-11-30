import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/common/resposive.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        if (!Responsive.isMobile(context))
          Text('Dashboard', style: Theme.of(context).textTheme.headlineSmall),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        Expanded(child: SearchField()),
        ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white10)),
      child: Row(
        children: [
          FlutterLogo(size: 38),
          if (!Responsive.isMobile(context))
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text('Admin'),
            ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Search',
          fillColor: secondaryColor,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(defaultPadding * .75),
              margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(10)),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          )),
    );
  }
}
