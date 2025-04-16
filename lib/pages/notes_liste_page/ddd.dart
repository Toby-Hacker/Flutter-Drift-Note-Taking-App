// class _PageViews extends StatelessWidget {
//   const _PageViews();

//   @override
//   Widget build(BuildContext context) {
//     final categories =
//         context.select((NotesListPageBloc bloc) => bloc.state.categories);
//     return DefaultTabController(
//         length: categories.length,
//         child: Scaffold(
//           appBar: TabBarsss(),
//         ));
//   }
// }

// class TabBarsss extends StatelessWidget implements PreferredSizeWidget {
//   const TabBarsss({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final categories =
//         context.select((NotesListPageBloc bloc) => bloc.state.categories);
//     return TabBar(
//       // dividerColor: Colors.transparent,
//       isScrollable: true,
//       labelColor: Colors.white,
//       unselectedLabelColor: Colors.blue,
//       indicator: BubbleTabIndicator(
//         indicatorHeight: 25.0,
//         indicatorRadius: 5,
//         indicatorColor: Colors.blue.withOpacity(1),
//         tabBarIndicatorSize: TabBarIndicatorSize.label,
//       ),
//       tabAlignment: TabAlignment.start,
//       padding: EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
//       tabs: categories.map((c) => Tab(text: c.label)).toList(),
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
// }
