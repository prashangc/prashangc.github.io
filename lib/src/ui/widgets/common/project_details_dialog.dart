import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:media_source/media_source.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../models/media.dart';
import '../../../models/project.dart';
import '../../../utils/responsive_utils.dart';

class ProjectDetailsDialog extends StatefulWidget {
  final Project project;

  const ProjectDetailsDialog({
    super.key,
    required this.project,
  });

  @override
  State<ProjectDetailsDialog> createState() => _ProjectDetailsDialogState();
}

class _ProjectDetailsDialogState extends State<ProjectDetailsDialog>
    with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  IconData _getMediaIcon(Media media) {
    if (media.media is! UrlMedia) return FontAwesomeIcons.link;

    final url = (media.media as UrlMedia).uri.toString().toLowerCase();

    if (url.contains('play.google.com')) return FontAwesomeIcons.googlePlay;
    if (url.contains('apps.apple.com')) return FontAwesomeIcons.appStore;
    if (url.contains('appgallery.huawei.com')) return FontAwesomeIcons.mobile;
    if (url.contains('pub.dev')) return FontAwesomeIcons.cube;
    if (url.contains('github.com')) return FontAwesomeIcons.github;
    return FontAwesomeIcons.link;
  }

  String _getMediaLabel(Media media) {
    if (media.media is! UrlMedia) return media.title;

    final url = (media.media as UrlMedia).uri.toString().toLowerCase();

    if (url.contains('play.google.com')) return 'Google Play';
    if (url.contains('apps.apple.com')) return 'App Store';
    if (url.contains('appgallery.huawei.com')) return 'AppGallery';
    if (url.contains('pub.dev')) return 'pub.dev';
    if (url.contains('github.com')) return 'GitHub';
    return media.title;
  }

  Future<void> _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      debugPrint('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final isMobile = ResponsiveUtils.isMobile(context);
    final isTablet = ResponsiveUtils.isTablet(context);

    final maxWidth = isMobile ? double.infinity : (isTablet ? 600.0 : 800.0);

    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        constraints: BoxConstraints(
            maxWidth: maxWidth,
            maxHeight: MediaQuery.of(context).size.height * 0.9),
        decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isDark ? const Color(0xFF233554) : const Color(0xFFE2E8F0),
            width: 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: theme.cardColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                border: Border(
                  bottom: BorderSide(
                    color: isDark
                        ? const Color(0xFF233554)
                        : const Color(0xFFE2E8F0),
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                children: [
                  if (widget.project.logo != null)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        width: 32,
                        height: 32,
                        color: Colors.white,
                        child: widget.project.logo!.media.fold(
                          asset: (a) => Image(
                            image: AssetImage(a.assetPath),
                            width: 32,
                            height: 32,
                            fit: BoxFit.cover,
                          ),
                          network: (n) => Image.network(
                            n.uri.toString(),
                            width: 32,
                            height: 32,
                            fit: BoxFit.cover,
                          ),
                          orElse: () => Icon(
                            Icons.image,
                            color: theme.colorScheme.primary,
                            size: 32,
                          ),
                        ),
                      ),
                    )
                  else
                    Icon(
                      Icons.folder_open,
                      color: theme.colorScheme.primary,
                      size: 32,
                    ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      widget.project.title,
                      style: GoogleFonts.roboto(
                        fontSize:
                            ResponsiveUtils.getResponsiveFontSize(context, 24),
                        fontWeight: FontWeight.bold,
                        color: theme.textTheme.displayLarge?.color,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                    color: theme.textTheme.bodyMedium?.color,
                  ),
                ],
              ),
            ),
            // Content
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  imageView(),
                  _detailsView(),
                ],
              ),
            ),
            DefaultTabController(
              length: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 50,
                  decoration: BoxDecoration(
                    color: theme.cardColor,
                    borderRadius: BorderRadius.circular(40.0),
                    boxShadow: const [],
                  ),
                  child: TabBar(
                    labelColor: theme.textTheme.displayLarge?.color,
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0,
                    ),
                    unselectedLabelColor: theme.textTheme.displayLarge?.color,
                    physics: const BouncingScrollPhysics(),
                    controller: tabController,
                    dividerColor: Colors.transparent,
                    splashBorderRadius: BorderRadius.circular(40),
                    tabs: const <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Tab(text: 'Images'),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Tab(text: 'Details'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageView() {
    final theme = Theme.of(context);
    final ValueNotifier<int> currentIndex = ValueNotifier(0);
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Responsive width (web & desktop friendly)
          final double maxWidth =
              constraints.maxWidth > 600 ? 360 : constraints.maxWidth * 0.8;

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: maxWidth * 1.9, // mobile screen ratio
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    enlargeCenterPage: true,
                    viewportFraction: 0.85,
                    enableInfiniteScroll: true,
                    onPageChanged: (index, reason) {
                      currentIndex.value = index;
                    },
                  ),
                  items: widget.project.images.map((image) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 20,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 6),
              ValueListenableBuilder<int>(
                valueListenable: currentIndex,
                builder: (context, index, _) {
                  return SmoothPageIndicator(
                    count: widget.project.images.length,
                    controller: PageController(initialPage: index),
                    effect: ExpandingDotsEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 6,
                      expansionFactor: 3,
                      activeDotColor: theme.textTheme.bodyMedium?.color,
                      dotColor: Colors.grey,
                    ),
                  );
                },
              ),
              const SizedBox(height: 6),
            ],
          );
        },
      ),
    );
  }

  Widget _detailsView() {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Description
          Text(
            widget.project.description,
            style: GoogleFonts.roboto(
              fontSize: ResponsiveUtils.getResponsiveFontSize(context, 16),
              height: 1.6,
              color: theme.textTheme.bodyMedium?.color,
            ),
          ),
          const SizedBox(height: 32),
          // Media Links
          if (widget.project.media.isNotEmpty) ...[
            Text(
              'Available On',
              style: GoogleFonts.roboto(
                fontSize: ResponsiveUtils.getResponsiveFontSize(context, 18),
                fontWeight: FontWeight.bold,
                color: theme.textTheme.displayLarge?.color,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: widget.project.media.map((media) {
                return InkWell(
                  onTap: () {
                    if (media.media is UrlMedia) {
                      _launchURL((media.media as UrlMedia).uri.toString());
                    }
                  },
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: theme.cardColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: isDark
                            ? const Color(0xFF233554)
                            : const Color(0xFFE2E8F0),
                        width: 1,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          _getMediaIcon(media),
                          size: 20,
                          color: theme.colorScheme.primary,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          _getMediaLabel(media),
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            color: theme.textTheme.bodyMedium?.color,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Icon(
                          Icons.open_in_new,
                          size: 14,
                          color: theme.textTheme.bodyMedium?.color
                              ?.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 32),
          ],
          // Skills
          if (widget.project.skills.isNotEmpty) ...[
            Text(
              'Technologies & Skills',
              style: GoogleFonts.roboto(
                fontSize: ResponsiveUtils.getResponsiveFontSize(context, 18),
                fontWeight: FontWeight.bold,
                color: theme.textTheme.displayLarge?.color,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: widget.project.skills.map((skill) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: theme.colorScheme.primary.withOpacity(0.3),
                      width: 1,
                    ),
                  ),
                  child: Text(
                    skill.name,
                    style: GoogleFonts.firaCode(
                      fontSize: 13,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 32),
          ],
          // Experiences
          if (widget.project.experiences.isNotEmpty) ...[
            Text(
              'Related Experience',
              style: GoogleFonts.roboto(
                fontSize: ResponsiveUtils.getResponsiveFontSize(context, 18),
                fontWeight: FontWeight.bold,
                color: theme.textTheme.displayLarge?.color,
              ),
            ),
            const SizedBox(height: 16),
            ...widget.project.experiences.map((experience) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.work_outline,
                      size: 16,
                      color:
                          theme.textTheme.bodyMedium?.color?.withOpacity(0.7),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            color: theme.textTheme.bodyMedium?.color,
                          ),
                          children: [
                            TextSpan(
                              text: experience.title,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
                            ),
                            TextSpan(
                              text: ' at ',
                              style: TextStyle(
                                color: theme.textTheme.bodyMedium?.color
                                    ?.withOpacity(0.6),
                              ),
                            ),
                            TextSpan(
                              text: experience.company.name,
                              style: TextStyle(
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ],
      ),
    );
  }
}
