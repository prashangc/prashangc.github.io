import 'package:cv_website/src/data/articles.dart';
import 'package:cv_website/src/data/certifications.dart';
import 'package:cv_website/src/data/education.dart';
import 'package:cv_website/src/data/experiences.dart';
import 'package:cv_website/src/data/projects.dart';
import 'package:cv_website/src/data/skills.dart';
import 'package:cv_website/src/models/contact.dart';
import 'package:cv_website/src/models/language.dart';
import 'package:cv_website/src/models/linked_in_profile.dart';
import 'package:cv_website/src/models/phone_number.dart';
import 'package:media_source/media_source.dart';

class ResumeData {
  static final profile = LinkedInProfile(
    firstName: 'Prashan',
    lastName: 'GC',
    title: 'Flutter Developer',
    subtitle:
        'I build exceptional mobile and web applications that solve real-world problems.',
    focusList: [
      'Strategy and Vision',
      'Requirement Gathering',
      'System Analysis',
      'UI/UX Design',
      'Architecture Design',
      'Development',
      'Testing & QA',
      'Deployment',
      'Maintenance & Support',
    ],
    calendlyId: 'prashannagc',
    about: '''
👨‍💻 I’m a Flutter Developer with 3+ years of experience building high-performance, scalable mobile apps using Flutter and Dart. I focus on delivering reliable, user-centric solutions that turn complex requirements into seamless digital experiences. 

🔭 I’m currently pursuing an MSc in IT (AI specialization).
🌱 My preferred state management solutions are GetX, Riverpod, and Bloc.
👯 Open to collaborating on Mobile Application Development projects.
💬 Ask me about Flutter, Android, iOS (Swift), and the MERN stack.
😄 Pronouns: He/Him
⚡ Fun fact: As a kid, I genuinely believed Doraemon was real 😄

🔗 Let’s connect — I’m always open to discussing innovative projects, technical collaborations, and opportunities to build impactful mobile solutions that drive real value.
''',
    profilePicture: ImageAssetMedia(
      assetPath: 'assets/photo.jpg',
      mimeType: 'image/jpeg',
      name: 'photo.jpg',
      size: 484.86.kb,
    ),
    location: 'Kathmandu, Nepal',
    resume: DocumentNetworkMedia.url(
      'https://drive.google.com/file/d/156LTZxyhZ9TaUWYfRt-0JeacR4gx4hTD/view?usp=sharing',
    ),
    contact: const Contact(
      email: 'prashannagc11@gmail.com',
      linkedinUrl: 'https://www.linkedin.com/in/prashan-gc-074ab618b/',
      githubUrl: 'https://github.com/prashangc',
      websiteUrl: 'https://prashangc.github.io',
      phone: PhoneNumber(
        countryCode: '+977',
        number: '9840308344',
      ),
    ),
    experience: Experiences.values,
    education: EducationSchools.values,
    skills: Skills.sections,
    projects: Projects.values,
    certifications: Certifications.values,
    languages: [
      const Language(name: 'Nepali', proficiency: 'Native'),
      const Language(
          name: 'English', proficiency: 'Professional Working Proficiency'),
      const Language(
          name: 'Hindi',
          proficiency: 'Full Professional Proficiency (Self-taught)')
    ],
    blogs: Articles.values,
  );
}
