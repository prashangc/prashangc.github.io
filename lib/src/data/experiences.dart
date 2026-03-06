import 'package:cv_website/src/data/skills.dart';
import 'package:cv_website/src/models/company.dart';
import 'package:cv_website/src/models/date_range.dart';
import 'package:cv_website/src/models/experience.dart';
import 'package:media_source/media_source.dart';

class Experiences {
  // Individual Experience static variables
  static final abgroup = Experience(
    title: 'Flutter Developer',
    locationType: 'Remote',
    employmentType: 'Full-time',
    dateRange: DateRange(
      start: DateTime(2025, 1),
      end: DateTime(2025, 12),
    ),
    description:
        '''𝑲𝒆𝒚 𝑹𝒆𝒔𝒑𝒐𝒏𝒔𝒊𝒃𝒊𝒍𝒊𝒕𝒊𝒆𝒔:\n• Developed scalable Flutter applications for HR, healthcare, and restaurant management systems
• Implemented employee attendance, check-in/check-out, and background location tracking features
• Integrated video calling, appointment booking, and payment gateways within medical applications
• Built multi-role restaurant apps (Admin, Waiter, Chef) to streamline order and kitchen workflows
• Managed multi-environment app flavors for development, staging, and production
• Integrated Firebase services for authentication, notifications, and real-time updates
• Ensured clean architecture, code reusability, and performance optimization''',
    skills: [
      Skills.technicalDocumentation,
      Skills.aiTools,
      Skills.lifecycleManagement,
      Skills.agileScrum,
      Skills.appProfiling,
      Skills.crossPlatform,
      Skills.debugging,
      Skills.ciCd,
    ],
  );

  static final alpas = Experience(
    title: 'Flutter Developer',
    locationType: 'Onsite',
    employmentType: 'Full-time',
    dateRange: DateRange(
      start: DateTime(2024, 4),
      end: DateTime(2024, 9),
    ),
    description:
        '''𝑲𝒆𝒚 𝑹𝒆𝒔𝒑𝒐𝒏𝒔𝒊𝒃𝒊𝒍𝒊𝒕𝒊𝒆𝒔:\n• Collaborated with cross-functional Agile teams to deliver features on schedule
• Developed and maintained Flutter applications following clean coding practices
• Created technical documentation for application workflows and deployment processes
• Implemented platform-specific configurations and app flavoring strategies
• Integrated REST APIs and handled state management efficiently
• Assisted in debugging, testing, and improving application stability''',
    skills: [
      Skills.technicalDocumentation,
      Skills.aiTools,
      Skills.lifecycleManagement,
      Skills.restApis,
      Skills.refactoring,
      Skills.cleanArchitecture,
      Skills.performanceOptimization,
      Skills.crossPlatform,
      Skills.debugging,
      Skills.flutter,
      Skills.tdd,
      Skills.featurePlanning,
      Skills.codeReview,
      Skills.dart,
      Skills.domainDrivenDesign,
      Skills.ciCd,
      Skills.teamCollaboration,
      Skills.selfMotivation,
    ],
  );

  static final jaruwa = Experience(
    title: 'Flutter Developer',
    locationType: 'Onsite',
    employmentType: 'Full-time',
    dateRange: DateRange(
      start: DateTime(2022, 4),
      end: DateTime(2024, 3),
    ),
    description:
        '''𝑲𝒆𝒚 𝑹𝒆𝒔𝒑𝒐𝒏𝒔𝒊𝒃𝒊𝒍𝒊𝒕𝒊𝒆𝒔:\n• Designed and developed complete Flutter applications from concept to deployment
• Created independent UI/UX designs focused on usability and user experience
• Prepared system flow diagrams and technical documentation for smooth onboarding
• Managed end-to-end release processes for Android, iOS, and Web platforms
• Integrated APIs, authentication, and push notification services
• Improved application performance and ensured cross-platform consistency
        ''',
    skills: [
      Skills.technicalDocumentation,
      Skills.lifecycleManagement,
      Skills.refactoring,
      Skills.appProfiling,
      Skills.crossPlatform,
      Skills.codeReview,
      Skills.featurePlanning,
      Skills.debugging,
    ],
  );

  static final ran = Experience(
    title: 'Flutter Intern',
    locationType: 'Onsite',
    employmentType: 'Contract',
    dateRange: DateRange(
      start: DateTime(2022, 1),
      end: DateTime(2022, 3),
    ),
    description:
        '''𝑲𝒆𝒚 𝑹𝒆𝒔𝒑𝒐𝒏𝒔𝒊𝒃𝒊𝒍𝒊𝒕𝒊𝒆𝒔:\n• Assisted in developing and testing Flutter mobile applications using Dart
• Implemented UI components based on design requirements
• Integrated basic APIs and handled data display logic
• Participated in code reviews and team discussions
• Gained hands-on experience with Git version control and Flutter best practices
        ''',
    skills: [
      Skills.technicalDocumentation,
      Skills.lifecycleManagement,
      Skills.restApis,
      Skills.github,
      Skills.crossPlatform,
      Skills.flutter,
      Skills.tdd,
      Skills.featurePlanning,
      Skills.debugging,
    ],
  );

  static final freelance = Experience(
    title: 'Flutter Developer',
    locationType: 'Freelance',
    employmentType: 'Contract and Friend/Family Projects',
    dateRange: DateRange(start: DateTime(2024, 1)),
    description: '''𝑲𝒆𝒚 𝑷𝒓𝒐𝒋𝒆𝒄𝒕𝒔 & 𝑹𝒆𝒔𝒑𝒐𝒏𝒔𝒊𝒃𝒊𝒍𝒊𝒕𝒊𝒆𝒔:
• Developed Raktabandhana for connecting blood donors with recipients.
• Built Conference Nepal for event & conference management.
• Implemented Flutter UI components and integrated APIs.
• Handled testing, debugging, and deployment.
• Communicated with clients to deliver solutions.''',
    skills: [
      Skills.technicalDocumentation,
      Skills.lifecycleManagement,
      Skills.restApis,
      Skills.github,
      Skills.crossPlatform,
      Skills.flutter,
      Skills.tdd,
      Skills.featurePlanning,
      Skills.debugging,
    ],
  );

  // Company list for UI display
  static final values = [
    Company(
      name: 'Freelancer',
      location: 'Kathmandu, Nepal',
      experiences: [freelance],
    ),
    Company(
      name: 'AB Group Dev Factory',
      location: 'Kathmandu, Nepal',
      logo: ImageAssetMedia(
        assetPath: 'assets/logos/abgroup.png',
        mimeType: 'image/png',
        name: 'abgroup.png',
        size: 45.5.kb,
      ),
      experiences: [abgroup],
    ),
    Company(
      name: 'Alpas Technology',
      location: 'Kathmandu, Nepal',
      logo: ImageAssetMedia(
        assetPath: 'assets/logos/alpas.png',
        mimeType: 'image/png',
        name: 'alpas.png',
        size: 4.03.kb,
      ),
      experiences: [alpas],
    ),
    Company(
      name: 'Jaruwa Nepal',
      location: 'Kathmandu, Nepal',
      logo: ImageAssetMedia(
        assetPath: 'assets/logos/jaruwa.png',
        mimeType: 'image/png',
        name: 'jaruwa.png',
        size: 3.kb,
      ),
      experiences: [jaruwa],
    ),
    Company(
      name: 'Robotics Association of Nepal',
      location: 'Kathmandu, Nepal',
      logo: ImageAssetMedia(
        assetPath: 'assets/logos/ran.png',
        mimeType: 'image/png',
        name: 'ran.png',
        size: 3.86.kb,
      ),
      experiences: [ran],
    ),
  ];
}
