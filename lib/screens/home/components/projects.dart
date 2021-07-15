import 'package:flutter/material.dart';
import 'package:moder_design_app/models/projects.dart';
import 'package:moder_design_app/screens/main/components/launch_urls.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Responsive(
      mobile: Responsive.isMobile(context)
          ? ProjectGridBuilder(count: 1)
          : ProjectGridBuilder(count: 2),
      tablet: Responsive.isTablet(context)
          ? ProjectGridBuilder(count: 2)
          : ProjectGridBuilder(),
      desktop: ProjectGridBuilder(),
    );
  }
}

class ProjectGridBuilder extends StatelessWidget {
  const ProjectGridBuilder({
    Key? key,
    this.count = 3,
  }) : super(key: key);

  final int count;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: count),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: demo_projects.length,
        itemBuilder: (context, index) {
          return ProjectCard(
            title: demo_projects[index].title,
            description: demo_projects[index].description,
            link: demo_projects[index].link,
            isVisible: demo_projects[index].link != '',
          );
        });
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.title,
    required this.description,
    required this.link,
    required this.isVisible,
  }) : super(key: key);

  final String title;
  final String description;
  final String link;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: defalutPadding, bottom: defalutPadding),
      child: AspectRatio(
        aspectRatio: 1.81,
        child: Container(
          decoration: BoxDecoration(
              color: secondaryColor, borderRadius: BorderRadius.circular(20.0)),
          child: Padding(
            padding: const EdgeInsets.all(defalutPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Spacer(flex: 2),
                Text(
                  description,
                  maxLines: 7,
                  overflow: TextOverflow.ellipsis,
                ),
                Spacer(flex: 3),
                Visibility(
                  visible: isVisible,
                  child: LaunchProjectLink(url: link),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
