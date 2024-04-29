import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class PrivacyAndPolicy extends StatefulWidget {
  const PrivacyAndPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyAndPolicy> createState() => _PrivacyAndPolicyState();
}

class _PrivacyAndPolicyState extends State<PrivacyAndPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 3.h),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
              Text("Community Policy",style: TextStyle(color: Colors.black,fontFamily: "bold",fontSize: 18.px),),
              Text("""Thank you for joining the IArab community. You'll always be welcome here if you're honest, kind, and considerate to others. You might not last if you choose not to be. Our purpose is to provide users the freedom to express themselves if they don't offend others. On IArab, everyone is held to the same standard. We ask that you be thoughtful, think before you act, and follow our community norms both online and off.""",style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("Content Standards.",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""These content standards apply to all User Contributions and use of the Interactive Services. User Contributions must in their entirety comply with all applicable federal, state, national, provincial, local, and international laws, and regulations. User Contributions must not:
a.	Depict any activity that is illegal or otherwise violates applicable law.
b.	Contain any material that is defamatory, obscene, indecent, abusive, offensive, harassing, violent, hateful, inflammatory, or otherwise objectionable.
c.	Promote violence or discrimination based on race, sex, religion, nationality, disability, sexual orientation, or age.
d.	Promote or depict pedophilia, child exploitation or abuse, age-play, incest, rape or nonconsensual sex, hypnosis, intoxication, sexual assault, extreme violence, nonconsensual pain, blood, cutting, erotic asphyxiation, torture, necrophilia, sadomasochistic abuse or hardcore bondage, extreme fisting, genital mutilation, bestiality, urine, scatological, or excrement-related material, enema play, vomiting, menstrual bleeding, paraphilia, or any other matter that would be considered obscene under the applicable community standards.
e.	Contain unsolicited sexual content or unsolicited language that sexually objectifies another person in a non-consensual way or contains fake or manipulated sexual content in relation to another person (including “deepfakes”).
f.	Promote, depict, or constitute “revenge porn” (being any sexually explicit material featuring any individual who has not given prior, express, and fully informed consent to that material (a) being taken, captured, or otherwise memorialized, or (b) being posted and shared on the Website.
g.	Promote or depict firearms, weapons, or any goods whose sale, possession, or use is subject to prohibitions or restrictions.
h.	Promote or depict alcohol drugs or drug paraphernalia.
i.	Infringe any copyright, patent, trademark, trade secret, or other intellectual property rights of any other person.
j.	Contain viruses, worms, Trojan horses, or any other computer code, files, or programs designed to interrupt, destroy, or limit the functionality of any computer software, hardware, mobile device, or telecommunications equipment.
k.	Violate the legal rights (including the rights of publicity and privacy) of any person or contain any material that could give rise to any civil or criminal liability under applicable law or otherwise may conflict with this agreement or the Privacy Policy.
l.	Be likely to deceive any person.
m.	Promote or solicit any illegal activity, or advocate, promote, or assist any unlawful act, including promoting or facilitating the prostitution of another person, sex trafficking, or human trafficking.
n.	Cause annoyance, inconvenience, or needless anxiety or be likely to upset, embarrass, alarm, or annoy any other person.
o.	Cause any chat screen to “scroll” faster than others can type to it or any action to a similar disruptive effect.
p.	Disrupt the normal flow of dialogue in chat or otherwise act in a manner that negatively affects other participants.
q.	Impersonate any person or misrepresent your identity or affiliation with any person or organization.
r.	Involve commercial activities or sales, including unsanctioned contests, sweepstakes, and other sales promotions, barter, or advertising, including soliciting creators for commercial ventures.
s.	Give the impression that they emanate from or are endorsed by us or any other person if that is not the case.
t.	Depict private or personal information of any person without their written consent.
u.	Request personal information from or share personal information with any creator or other user, including financial information, email address, telephone number, or mailing address.
v.	Request money from, or otherwise defraud creators or other users of the Website.
""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("Copyright and Content Usage",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              SizedBox(height: 2.h,),
              Text("1. Copyright Infringement",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),

              Text("""•	Prohibited Use: The use of copyrighted content, including but not limited to music, videos, images, and text without proper authorization or a legally valid reason (such as licensing or fair use) is strictly prohibited and constitutes a violation of iArab’s policies.
•	Fair Use and Exceptions: It is acknowledged that not all uses of copyrighted content without prior authorization constitute an infringement. Exceptions, such as the fair use doctrine or other applicable laws, may permit use of copyrighted material under specific circumstances.
""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("2. Music Licensing",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 14.px),),
              Text("""•	User Responsibility: Users are solely responsible for obtaining the necessary licenses for any copyrighted music or other content used within their uploads. iArab does not provide any music licensing services and disclaims all liability associated with the unauthorized use of copyrighted music.
•	Compliance: Users must ensure that their use of music and other copyrighted material complies with all applicable copyright laws and licensing agreements.
""",style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("3. Content Removal and Account Sanction",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 14.px),),
              Text("""•	Enforcement Actions: Content that infringes on the copyright of another may be subject to removal. Users found to have repeatedly infringed copyright or violated other terms of service and community guidelines may face suspension or termination of their account.
•	Rights Reserved: iArab reserves the right to refuse service to any user who has been determined to use the platform for infringing activities, including the prohibition of opening new accounts on the iArab platform.
""",style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("4. Copyright Infringement Notification",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 14.px),),
              Text("""•	Direct Resolution Encouraged: Direct contact with the user may facilitate a quicker and more favorable resolution. Alternatively, a Copyright Infringement Report may be filed.
•	Report Requirements: Complaints must include all information as specified in our online Copyright Infringement Report form. Incomplete reports may limit our ability to process your claims and could result in denial of the complaint.
•	Disclosure of Information: We may provide the accused account holder with your contact information, copyright ownership details, and the nature of the complaint.
""",style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("5. Copyright Infringement Counter-Notification",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 14.px),),
              Text("""•	Procedure for Contesting Claims: Users who receive a copyright infringement notification and believe it to be mistaken or believe they are authorized to use the content, may contact the copyright owner to seek retraction or submit a counter-notification via our Counter Notification Form.
•	Counter-Notification Requirements: All counter-notifications must include the necessary information as specified in the form. Incomplete submissions may limit our ability to process your claims and could result in denial.
•	Legal Process and Content Restoration: The counter-notification process may involve legal proceedings under the United States Digital Millennium Copyright Act (DMCA) or applicable foreign laws. Content may be restored based on the outcome of such processes, at iArab's sole discretion.
""",style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("6. Liability for Misuse",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 14.px),),
              Text("""•	Misrepresentation: Users should be aware that submitting misleading or fraudulent reports can result in liability for damages under section 512(f) of the DMCA or under similar laws applicable in other jurisdictions.""",style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 5.h,width: 5.h,)
            ],),
        ),
      ),
    );
  }
}
