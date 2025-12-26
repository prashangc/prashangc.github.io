import 'package:cv_website/src/data/experiences.dart';
import 'package:cv_website/src/data/skills.dart';
import 'package:cv_website/src/models/media.dart';
import 'package:cv_website/src/models/project.dart';
import 'package:flutter/material.dart';
import 'package:media_source/media_source.dart';

class Projects {
  static final values = [
    //abgroup
    Project(
      images: [
        'assets/projects/restorma/two.jpg',
        'assets/projects/restorma/three.jpg',
        'assets/projects/restorma/four.jpg',
        'assets/projects/restorma/five.jpg',
        'assets/projects/restorma/six.jpg',
        'assets/projects/restorma/one.jpg',
      ],
      logo: Media(
        media: ImageAssetMedia(
          assetPath: 'assets/projects/restorma/logo.png',
          mimeType: 'image/png',
          name: 'logo.png',
          size: 10.kb,
        ),
        title: 'Logo',
        type: MediaType.image,
      ),
      title: 'Restorma',
      description:
          '🍽️ Restorma is a restaurant management system designed for restaurants, hotels, resorts, and inns, enabling secure access to data anytime, anywhere via a web browser.',
      media: [
        Media(
          media: UrlMedia.url(
              'https://play.google.com/store/apps/details?id=com.abgroup.restorma&pcampaignid=web_share'),
          title: 'Playstore',
          type: MediaType.link,
        ),
        Media(
          media: UrlMedia.url(
              'https://apps.apple.com/np/app/restorma/id6443807522'),
          title: 'Appstore',
          type: MediaType.link,
        ),
      ],
      skills: [
        Skills.dart,
        Skills.flutter,
        Skills.sdkDevelopment,
        Skills.ciCd,
        Skills.aiTools,
        Skills.github,
      ],
      experiences: [
        Experiences.abgroup,
      ],
      color: const Color(0xFFE67E22),
    ),
    Project(
      images: [
        'assets/projects/restormadmin/one.jpg',
        'assets/projects/restormadmin/two.jpg',
        'assets/projects/restormadmin/three.jpg',
        'assets/projects/restormadmin/four.jpg',
        'assets/projects/restormadmin/five.jpg',
      ],
      logo: Media(
        media: ImageAssetMedia(
          assetPath: 'assets/projects/restormadmin/logo.png',
          mimeType: 'image/png',
          name: 'logo.png',
          size: 10.kb,
        ),
        title: 'Logo',
        type: MediaType.image,
      ),
      title: 'Restorma Admin',
      description:
          '📊 A comprehensive admin system designed to manage restaurants and hotels by tracking staff, customers, sales, inventory, and daily operations—enabling owners to monitor and control their business anytime, from anywhere in the world.',
      media: [
        Media(
          media: UrlMedia.url(
              'https://play.google.com/store/apps/details?id=com.abgroup.admin.restorma&pcampaignid=web_share'),
          title: 'Playstore',
          type: MediaType.link,
        ),
        Media(
          media: UrlMedia.url(
              'https://apps.apple.com/np/app/restorma-admin/id6443827246'),
          title: 'Appstore',
          type: MediaType.link,
        ),
      ],
      skills: [
        Skills.dart,
        Skills.flutter,
        Skills.sdkDevelopment,
        Skills.ciCd,
        Skills.aiTools,
        Skills.github,
      ],
      experiences: [
        Experiences.abgroup,
      ],
      color: const Color(0xFFE67E22),
    ),
    Project(
      images: [
        'assets/projects/mypeopler/one.jpg',
        'assets/projects/mypeopler/two.jpg',
        'assets/projects/mypeopler/three.jpg',
        'assets/projects/mypeopler/four.jpg',
        'assets/projects/mypeopler/five.jpg',
        'assets/projects/mypeopler/six.jpg',
        'assets/projects/mypeopler/seven.jpg',
      ],
      logo: Media(
        media: ImageAssetMedia(
          assetPath: 'assets/projects/mypeopler/logo.png',
          mimeType: 'image/png',
          name: 'logo.png',
          size: 10.kb,
        ),
        title: 'Logo',
        type: MediaType.image,
      ),
      title: 'MyPeopler',
      description:
          '👥 MyPeopler is a complete cloud-based HRM software with integrated payroll and administrative systems, enabling organizations to manage employees, attendance, expenses, recruitment, and secure records efficiently from a single platform.',
      media: [
        Media(
          media: UrlMedia.url(
              'https://play.google.com/store/apps/details?id=com.abgroupdevfactory.mypeopler&pcampaignid=web_share'),
          title: 'Playstore',
          type: MediaType.link,
        ),
        Media(
          media: UrlMedia.url(
              'https://apps.apple.com/np/app/my-peopler/id6443973414'),
          title: 'Appstore',
          type: MediaType.link,
        ),
      ],
      skills: [
        Skills.dart,
        Skills.flutter,
        Skills.sdkDevelopment,
        Skills.ciCd,
        Skills.aiTools,
        Skills.github,
      ],
      experiences: [
        Experiences.abgroup,
      ],
      color: const Color(0xFFE67E22),
    ),
    Project(
      images: [
        'assets/projects/hospitalcarepluspatient/one.jpg',
        'assets/projects/hospitalcarepluspatient/two.jpg',
        'assets/projects/hospitalcarepluspatient/three.jpg',
        'assets/projects/hospitalcarepluspatient/four.jpg',
        'assets/projects/hospitalcarepluspatient/five.jpg',
      ],
      logo: Media(
        media: ImageAssetMedia(
          assetPath: 'assets/projects/hospitalcarepluspatient/logo.png',
          mimeType: 'image/png',
          name: 'logo.png',
          size: 10.kb,
        ),
        title: 'Logo',
        type: MediaType.image,
      ),
      title: 'Patient - Hospital Care Plus',
      description:
          '🏥 Hospital Care Plus is a complete hospital management system designed to connect and manage all hospital departments through a simple and intuitive web and mobile interface. It streamlines daily operations, improves efficiency, reduces scheduling and inventory issues, and ensures secure enterprise data management without the risk of data loss.',
      media: [
        Media(
          media: UrlMedia.url(
              'https://play.google.com/store/apps/details?id=com.hospital_patient.abgroup&pcampaignid=web_share'),
          title: 'Playstore',
          type: MediaType.link,
        ),
        Media(
          media: UrlMedia.url(
              'https://apps.apple.com/np/app/patient-hospital-care-plus/id6450212489'),
          title: 'Appstore',
          type: MediaType.link,
        ),
      ],
      skills: [
        Skills.dart,
        Skills.flutter,
        Skills.sdkDevelopment,
        Skills.ciCd,
        Skills.aiTools,
        Skills.github,
      ],
      experiences: [
        Experiences.abgroup,
      ],
      color: const Color(0xFFE67E22),
    ),
    Project(
      images: [
        'assets/projects/hospitalcareplusdoctor/one.jpg',
        'assets/projects/hospitalcareplusdoctor/two.jpg',
        'assets/projects/hospitalcareplusdoctor/three.jpg',
        'assets/projects/hospitalcareplusdoctor/four.jpg',
        'assets/projects/hospitalcareplusdoctor/five.jpg',
        'assets/projects/hospitalcareplusdoctor/six.jpg',
      ],
      logo: Media(
        media: ImageAssetMedia(
          assetPath: 'assets/projects/hospitalcareplusdoctor/logo.png',
          mimeType: 'image/png',
          name: 'logo.png',
          size: 10.kb,
        ),
        title: 'Logo',
        type: MediaType.image,
      ),
      title: 'Hospital Care Plus - Doctor',
      description:
          '👨‍⚕️ Hospital Care Plus is a doctor-focused app that simplifies healthcare workflows by enabling secure login, easy appointment management, and efficient OPD record handling through a clean and intuitive interface.',
      media: [
        Media(
          media: UrlMedia.url(
              'https://play.google.com/store/apps/details?id=com.hospitalcareplusdoctor.abgroup&pcampaignid=web_share'),
          title: 'Playstore',
          type: MediaType.link,
        ),
        Media(
          media: UrlMedia.url(
              'https://apps.apple.com/np/app/hospital-care-plus-doctor/id6752590176'),
          title: 'Appstore',
          type: MediaType.link,
        ),
      ],
      skills: [
        Skills.dart,
        Skills.flutter,
        Skills.sdkDevelopment,
        Skills.ciCd,
        Skills.aiTools,
        Skills.github,
      ],
      experiences: [
        Experiences.abgroup,
      ],
      color: const Color(0xFFE67E22),
    ),
    Project(
      images: [
        'assets/projects/hospitalcarepluspharmacy/one.jpg',
        'assets/projects/hospitalcarepluspharmacy/two.jpg',
        'assets/projects/hospitalcarepluspharmacy/three.jpg',
        'assets/projects/hospitalcarepluspharmacy/four.jpg',
        'assets/projects/hospitalcarepluspharmacy/five.jpg',
        'assets/projects/hospitalcarepluspharmacy/six.jpg',
      ],
      logo: Media(
        media: ImageAssetMedia(
          assetPath: 'assets/projects/hospitalcarepluspharmacy/logo.png',
          mimeType: 'image/png',
          name: 'logo.png',
          size: 10.kb,
        ),
        title: 'Logo',
        type: MediaType.image,
      ),
      title: 'Pharmacy - Hospital Care Plus',
      description:
          '🚀 Algebra POS is a reliable, user-friendly retail POS system designed to simplify daily operations. It helps businesses manage sales, inventory, and customer interactions efficiently, delivering accuracy and professionalism in every transaction.',
      media: [
        Media(
          media: UrlMedia.url(
              'https://play.google.com/store/apps/details?id=com.abgroup.pharmacyhospitalcareplus&pcampaignid=web_share'),
          title: 'Playstore',
          type: MediaType.link,
        ),
        Media(
          media: UrlMedia.url(
              'https://apps.apple.com/np/app/pharmacy-hospital-care-plus/id6475946438'),
          title: 'Appstore',
          type: MediaType.link,
        ),
      ],
      skills: [
        Skills.dart,
        Skills.flutter,
        Skills.sdkDevelopment,
        Skills.ciCd,
        Skills.aiTools,
        Skills.github,
      ],
      experiences: [
        Experiences.abgroup,
      ],
      color: const Color(0xFFE67E22),
    ),
    Project(
      images: [
        'assets/projects/algebrapos/one.jpg',
        'assets/projects/algebrapos/two.jpg',
        'assets/projects/algebrapos/three.jpg',
        'assets/projects/algebrapos/four.jpg',
        'assets/projects/algebrapos/five.jpg',
        'assets/projects/algebrapos/six.jpg',
        'assets/projects/algebrapos/seven.jpg',
      ],
      logo: Media(
        media: ImageAssetMedia(
          assetPath: 'assets/projects/algebrapos/logo.png',
          mimeType: 'image/png',
          name: 'logo.png',
          size: 10.kb,
        ),
        title: 'Logo',
        type: MediaType.image,
      ),
      title: 'Algebra POS - Retail',
      description:
          '🚀 Algebra POS is a reliable, user-friendly retail POS system designed to simplify daily operations. It helps businesses manage sales, inventory, and customer interactions efficiently, delivering accuracy and professionalism in every transaction.',
      media: [
        Media(
          media: UrlMedia.url(
              'https://play.google.com/store/apps/details?id=com.algebra_pos_retail.abgroup&pcampaignid=web_share'),
          title: 'Playstore',
          type: MediaType.link,
        ),
        Media(
          media: UrlMedia.url(
              'https://apps.apple.com/np/app/algebra-pos-retail/id6742187396'),
          title: 'Appstore',
          type: MediaType.link,
        ),
      ],
      skills: [
        Skills.dart,
        Skills.flutter,
        Skills.sdkDevelopment,
        Skills.ciCd,
        Skills.aiTools,
        Skills.github,
      ],
      experiences: [
        Experiences.abgroup,
      ],
      color: const Color(0xFFE67E22),
    ),
    //alpas
    Project(
      images: [
        'assets/projects/lmc/one.jpg',
        'assets/projects/lmc/two.jpg',
        'assets/projects/lmc/three.jpg',
        'assets/projects/lmc/four.jpg',
        'assets/projects/lmc/five.jpg',
      ],
      logo: Media(
        media: ImageAssetMedia(
          assetPath: 'assets/projects/lmc/logo.png',
          mimeType: 'image/png',
          name: 'logo.png',
          size: 10.kb,
        ),
        title: 'Logo',
        type: MediaType.image,
      ),
      title: 'LMC Alert',
      description:
          'LMC Alert 🚨 – A smart app for community safety. Report incidents & complaints directly to Lalitpur Metropolitan City Police for fast, efficient response.',
      media: [
        Media(
          media: UrlMedia.url(
              'https://play.google.com/store/apps/details?id=com.alpas.lmcalert&pcampaignid=web_share'),
          title: 'Playstore',
          type: MediaType.link,
        ),
        Media(
          media: UrlMedia.url(
              'https://apps.apple.com/np/app/lmc-alert/id6475963387'),
          title: 'Appstore',
          type: MediaType.link,
        ),
      ],
      skills: [
        Skills.dart,
        Skills.flutter,
        Skills.sdkDevelopment,
        Skills.ciCd,
        Skills.aiTools,
        Skills.github,
      ],
      experiences: [
        Experiences.alpas,
      ],
      color: const Color(0xFFE67E22),
    ),
    Project(
      images: [
        'assets/projects/lmcwardfive/one.png',
        'assets/projects/lmcwardfive/two.png',
        'assets/projects/lmcwardfive/three.png',
        'assets/projects/lmcwardfive/four.png',
        'assets/projects/lmcwardfive/five.png',
        'assets/projects/lmcwardfive/six.png',
      ],
      logo: Media(
        media: ImageAssetMedia(
          assetPath: 'assets/projects/lmcwardfive/logo.png',
          mimeType: 'image/png',
          name: 'logo.png',
          size: 10.kb,
        ),
        title: 'Logo',
        type: MediaType.image,
      ),
      title: 'LMC Ward 5',
      description:
          '📱 Ward 5 Info App – View ward details, members & representatives, citizen charter & forms, events & news, legal publications, emergency contacts, ward plans & updates, tourism spots, business directories, and more.',
      media: [
        Media(
          media: UrlMedia.url(
              'https://play.google.com/store/apps/details?id=com.alpas.alpalika.ward_five&pcampaignid=web_share'),
          title: 'Playstore',
          type: MediaType.link,
        ),
        Media(
          media: UrlMedia.url(
              'https://apps.apple.com/np/app/lalitpur-metro-city-ward-5/id6454793010'),
          title: 'Appstore',
          type: MediaType.link,
        ),
      ],
      skills: [
        Skills.dart,
        Skills.flutter,
        Skills.sdkDevelopment,
        Skills.ciCd,
        Skills.aiTools,
        Skills.github,
      ],
      experiences: [
        Experiences.alpas,
      ],
      color: const Color(0xFFE67E22),
    ),
    //jaruwa
    Project(
      images: [
        'assets/projects/gd/one.jpg',
        'assets/projects/gd/two.png',
        'assets/projects/gd/three.png',
        'assets/projects/gd/four.png',
        'assets/projects/gd/five.png',
        'assets/projects/gd/six.png',
        'assets/projects/gd/seven.png',
        'assets/projects/gd/eight.png',
      ],
      logo: Media(
        media: ImageAssetMedia(
          assetPath: 'assets/projects/gd/logo.png',
          mimeType: 'image/png',
          name: 'logo.png',
          size: 10.kb,
        ),
        title: 'Logo',
        type: MediaType.image,
      ),
      title: 'Ghargharma Doctor',
      description:
          '🏥 Ghargharma Doctor – A healthcare provider specializing in preventive care, offering services at home and through a digital platform, with insurance support to ensure financial security for members.',
      media: [
        Media(
          media: UrlMedia.url('https://beta.ghargharmadoctor.com'),
          title: 'Webiste',
          type: MediaType.link,
        ),
      ],
      skills: [
        Skills.dart,
        Skills.flutter,
        Skills.sdkDevelopment,
        Skills.ciCd,
        Skills.aiTools,
        Skills.github,
      ],
      experiences: [
        Experiences.jaruwa,
      ],
      color: const Color(0xFFE67E22),
    ),
    //freelancing
    Project(
      images: [
        'assets/projects/raktabandana/one.png',
        'assets/projects/raktabandana/two.png',
        'assets/projects/raktabandana/three.png',
        'assets/projects/raktabandana/four.png',
        'assets/projects/raktabandana/five.png',
        'assets/projects/raktabandana/six.png',
      ],
      logo: Media(
        media: ImageAssetMedia(
          assetPath: 'assets/projects/raktabandana/logo.png',
          mimeType: 'image/png',
          name: 'logo.png',
          size: 10.kb,
        ),
        title: 'Logo',
        type: MediaType.image,
      ),
      title: 'Raktabandhana',
      description:
          '🩸 Raktabandhana – A community platform connecting voluntary blood donors with recipients during emergencies. Users can post requests, receive donor notifications, and confirm donations for faster, timely support.',
      media: [
        Media(
          media: UrlMedia.url(
              'https://play.google.com/store/apps/details?id=com.bhujelrajib.raktabandhana&pcampaignid=web_share'),
          title: 'Webiste',
          type: MediaType.link,
        ),
      ],
      skills: [
        Skills.dart,
        Skills.flutter,
        Skills.sdkDevelopment,
        Skills.ciCd,
        Skills.aiTools,
        Skills.github,
      ],
      experiences: [
        Experiences.freelance,
      ],
      color: const Color(0xFFE67E22),
    ),
    Project(
      images: [
        'assets/projects/conference/one.jpg',
        'assets/projects/conference/two.jpg',
        'assets/projects/conference/three.jpg',
      ],
      logo: Media(
        media: ImageAssetMedia(
          assetPath: 'assets/projects/conference/logo.png',
          mimeType: 'image/png',
          name: 'logo.png',
          size: 10.kb,
        ),
        title: 'Logo',
        type: MediaType.image,
      ),
      title: 'Conference Nepal',
      description:
          '🎤 Conference Nepal – An event management company delivering collaborative event & conference planning for mission-driven organizations worldwide. We create impactful experiences blending business, culture, technology, and design with creativity, reliability, and prompt execution.',
      media: [
        Media(
          media: UrlMedia.url(
              'https://play.google.com/store/apps/details?id=com.nepalitechphantom.conference_nepal&pcampaignid=web_share'),
          title: 'Webiste',
          type: MediaType.link,
        ),
      ],
      skills: [
        Skills.dart,
        Skills.flutter,
        Skills.sdkDevelopment,
        Skills.ciCd,
        Skills.aiTools,
        Skills.github,
      ],
      experiences: [
        Experiences.freelance,
      ],
      color: const Color(0xFFE67E22),
    ),
  ];
}
