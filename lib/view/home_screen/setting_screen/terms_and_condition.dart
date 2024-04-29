import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({Key? key}) : super(key: key);

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
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
          Text("Terms and Conditions ",style: TextStyle(color: Colors.black,fontFamily: "bold",fontSize: 18.px),),
          Text("THE AGREEMENT:",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 14.px),),
          Text("The use of this website and services on this website provided by IArab (hereinafter referred to as platform) are subject to the following Terms & Conditions, all parts and sub-parts of which are specifically incorporated by reference here. This Agreement shall govern the use of all pages on this website (hereinafter collectively referred to as Website) and any services provided by or on this Website (Services).",style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
                SizedBox(height: 2.h,),
              Text("DEFINITIONS",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("Agreement denotes these Terms and Conditions and the Privacy Policy and other documents provided to you by the Website.We, us, and our are references to website and applications.User, You, and your denotes the person who is accessing the website for taking or availing of any service from us. User shall include the company, partnership, sole trader, person, body corporate, or association taking services of this Website.Website shall mean and include iArab and any successor Website of the Company or any of its affiliates.Parties: Collectively, the parties to this Agreement (We and You) will be referred to as Parties.",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
          SizedBox(height: 2.h,),
              Text("ASSENT & ACCEPTANCE",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("PLEASE READ THESE TERMS OF USE, OUR PRIVACY POLICY, AND ALL APPLICABLE SUPPLEMENTAL TERMS (COLLECTIVELY, THE TERMS) CAREFULLY, AS THEY CONTAIN TERMS AND CONDITIONS THAT IMPACT YOUR RIGHTS, OBLIGATIONS, AND REMEDIES IN CONNECTION WITH YOUR USE OF THE SERVICES AND CONTENT. FOR EXAMPLE, THE TERMS INCLUDE:YOUR OBLIGATION IS TO COMPLY WITH ALL APPLICABLE LAWS AND REGULATIONS.LIMITATIONS OF OUR LIABILITY TO YOU; ANDA REQUIREMENT THAT YOU PURSUE CLAIMS OR SEEK RELIEF AGAINST US (INCLUDING MONETARY, INJUNCTIVE, AND DECLARATORY RELIEF) ON AN INDIVIDUAL BASIS RATHER THAN AS A PARTICIPANT IN ANY CLASS OR REPRESENTATIVE ACTION OR PROCEEDING.YOUR ACCESS TO AND USE OF THE SERVICES ARE CONDITIONED ON YOUR ACCEPTANCE OF AND COMPLIANCE WITH ALL APPLICABLE TERMS. If you do not agree to these Terms or our Privacy Policy, then please cease using the Services immediately. We reserve the right to change these Terms at any time (see “Changes to these Terms” below.) By accessing, browsing, and/or using the Services after updates to these Terms have been posted, you agree to be bound by the updated Terms. THESE TERMS AND OUR PRIVACY POLICY CONSTITUTE A BINDING AGREEMENT BETWEEN YOU AND IARAB",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
             SizedBox(height: 2.h,),
              Text("Consequences of Non-Compliance",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 14.px),),
              Text("Your failure to comply with the Terms may result in the suspension or termination of your account and/or access to the Services and may subject you to civil and criminal penalties.",style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("AGE RESTRICTION",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 14.px),),
              Text("You must be at least 18 (Eighteen) years of age to use this Website or any Services contained herein. By using this Website, you represent and warrant that you are at least 18 years of age and may legally agree to this Agreement. We assume no responsibility or liability for any misrepresentation of your age.",style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("ACCURACY OF INFORMATION",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 14.px),),
              Text("Occasionally there may be information on the Website that contains typographical errors, inaccuracies, or omissions that may relate to user descriptions, pricing, availability, promotions, and offers. We reserve the right, in our sole discretion, to make changes or modifications to these Terms and conditions at any time and for any reason. We undertake no obligation to update, amend or clarify information on the Website, including, without limitation, pricing information, except as required by law. No specified update or refresh date applied on the Website should be taken to indicate that all information on the Website or Services has been modified or updated. Please ensure that you check the applicable Terms every time you use our site so that you understand which Terms apply. You will be subject to and will be deemed to have been made aware of and to have accepted the changes in any revised Terms and conditions by your continued use of the site after the date such revised Terms and conditions are posted.",style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("ADVERTISEMENTS",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 14.px),),
              Text("During your use of the Website and Services, you may enter correspondence with or participate in promotions of advertisers or sponsors showing their goods or services through the Website and Services. Any such activity, and any terms, conditions, warranties, or representations associated with such activity, are solely between you and the applicable third party. We shall have no liability, obligation, or responsibility for any such correspondence, purchase, or promotion between you and any such third party.",style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("USE OF OUR SERVICES",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""By accessing and using the services provided by iArab, you agree to comply with these Terms and all relevant laws and regulations. As a user, you are required to:
1.	Legal Capacity: Confirm that you have the legal capacity to enter into these Terms and use iArab’s services.
2.	Intellectual Property: Refrain from copying, modifying, translating, reverse engineering, or otherwise altering any part of iArab's services or its content. Do not attempt to extract source code or reverse-engineer any algorithms, methods, or techniques used in iArab’s services.
3.	Prohibitions on Redistribution: Avoid distributing, licensing, selling, or otherwise commercially exploiting any part of iArab’s services.
4.	Commercial Use: Do not use iArab’s services for commercial purposes without obtaining prior written consent from iArab.
5.	Unauthorized Activities: Abstain from using iArab’s services for any unauthorized or illegal activities, including spamming, advertising, or commercial solicitation.
6.	Service Integrity: Do not interfere with the operational integrity of the service or disrupt the services or networks connected to iArab.
7.	Software Misuse: Avoid using automated systems, such as scripts, to engage with iArab’s services or extract data.
8.	Impersonation and Misrepresentation: Do not impersonate others or misrepresent your affiliation with any entity or individual through iArab’s services.
9.	Content Restrictions: Ensure that you do not post or transmit any content that is illegal, offensive, or potentially harmful, including material that is sexually explicit, promotes violence, or discriminates against others.
10.	Account Security: Do not use or access someone else’s account without authorization, or falsify your identity on iArab’s services.
11.	Conflict of Interest: Avoid activities that could create a conflict of interest or undermine the purpose of the services, such as manipulating reviews or engaging in fraudulent activities.
12.	Prohibited Content: Ensure that your content does not contain harmful computer codes, unsolicited promotions, private information of third parties, or material that infringes intellectual property rights or could be considered defamatory or inciting.
13.	Behavioral Guidelines: Do not engage in behavior that is threatening, harassing, or intended to upset or harm others.
14.	Expertise Requirement: Provide only advice or recommendations in areas where you are qualified or licensed to do so.
15.	General Conduct: Avoid posting any material that could be deemed objectionable by iArab, or that could restrict another user’s ability to use the services or expose iArab or its users to harm or liability.
"""
                  ,
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("USER OBLIGATIONS",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 14.px),),
              Text("As a user of the Website or Services, you may be asked to register with us. When you do so, you will choose a user identifier, which may be your email address or another term, as well as a password. You may also provide personal information, including, but not limited to, your name. You are responsible for ensuring the accuracy of this information. This identifying information will enable you to use the Website and Services. You must not share such identifying information with any third party, and if you discover that your identifying information has been compromised, you agree to notify us immediately in writing. An email notification will suffice. You are responsible for maintaining the safety and security of your identifying information, as well as keeping us apprised of any changes to your identifying information. Providing false or inaccurate information or using the Website or Services to further fraud or unlawful activity is grounds for immediate termination of this Agreement.",style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("User Registration and Profile Creation ",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 14.px),),
              Text("•	Users must provide accurate, complete, and up-to-date information during the registration process.•	Users are solely responsible for maintaining the confidentiality of their account credentials and for any activities that occur under their account.•	Users must be at least 18 years old to create an account and use the app. By creating an account, users represent and warrant that they meet this age requirement.•	The app reserves the right to suspend or terminate any account that violates these Terms and Conditions or is suspected of fraudulent activity"
              ,style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("In-App Purchases",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("•	The app may offer in-app purchases through the App Store and Google Play Store.•	Users are responsible for any charges incurred through in-app purchases, including any applicable taxes or fees.•	Refund policies for in-app purchases are subject to the terms and conditions of the respective app stores. The app does not have control over these policies and cannot grant refunds directly.•	Users acknowledge that virtual items or currency purchased through in-app purchases have no real-world value and cannot be exchanged for real money or goods."
              ,
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("USER CONTENT",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 14.px),),
              Text("""Content Responsibility. 
The website permits you to share content, post comments, feedback, etc., but you are solely responsible for the content posted by you. You represent that you have required permission to use the content.
When posting content to the website, please do not post content that:
•	Contains ill-mannered, profane, abusive, racist, or hateful language or expressions, text, photographs, or illustrations that are pornographic or in poor taste, and inflammatory attacks of a personal, racial or religious nature.
•	It is defamatory, threatening, disparaging, grossly inflammatory, false, misleading, fraudulent, inaccurate, unfair, and contains exaggeration or unsubstantiated claims.
•	Violating the privacy rights of any third party is unreasonably harmful or offensive to any individual or community.
•	Discriminates on the grounds of race, religion, national origin, gender, age, marital status, sexual orientation, or disability or refers to such matters in any manner prohibited by law.
•	Violates or inappropriately encourages the violation of any municipal, state, federal, or international law, rule, regulation, or ordinance.
•	Uses or attempts to use another's account, password, service, or system except as expressly permitted by the Terms of Use uploads or transmits viruses or other harmful, disruptive, or destructive files.
•	Sends repeated messages related to another user and/or makes derogatory or offensive comments about another individual or repeats prior posting of the same message under multiple emails or subjects.
•	Any submitted content that includes, but is not limited to, the following, will be refused. If repeated violations occur, we reserve the right to cancel user access to the website without advanced notice.
•	Users are solely responsible for the content they post, share, or transmit on the app, including but not limited to text, images, videos, and links. 
•	Users must not post or share any content that infringes upon the intellectual property rights of others, including copyrights, trademarks, or patents. 
•	Users must not post or share any content that is illegal, defamatory, obscene, pornographic, violent, discriminatory, or otherwise objectionable. 
•	The app reserves the right to remove any content that violates these Terms and Conditions or is deemed inappropriate, without prior notice. 
•	By posting or sharing content on the app, users grant the app a worldwide, non-exclusive, royalty-free license to use, reproduce, modify, adapt, publish, and distribute such content for the purpose of operating and promoting the app.
""",style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("A.	INTERACTION WITH OTHER USERS ",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""•	Users must interact with other users in a respectful, non-harassing, and non-discriminatory manner. 
•	Users must not engage in any form of bullying, harassment, hate speech, or personal attacks against other users. 
•	Users must not impersonate other individuals or entities or create fake accounts to mislead or deceive others. 
•	The app provides features such as comments, likes, and messaging for user interaction. Users must use these features responsibly and in compliance with these Terms and Conditions. 
•	The app reserves the right to suspend or terminate accounts that engage in abusive, harassing, or otherwise inappropriate behavior towards other users.
""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("B.	CULTURAL NORMS AND SENSITIVITIES ",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""•	Users must respect the cultural norms, traditions, and sensitivities of all cultures when using the app. 
•	Users must not post or share any content that is culturally insensitive, offensive, discriminatory, or disrespectful towards any individual, group, or community. 
•	The app encourages users to foster a diverse and inclusive environment and to engage in respectful and constructive dialogue. 
•	The app reserves the right to remove any content that violates these guidelines and to take appropriate action against users who repeatedly engage in culturally insensitive behavior.
""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("C.	USER LIABILITY AND RESPONSIBILITIES",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""•	Users are solely responsible for their actions and any consequences resulting from their use of the app. 
•	Users agree to indemnify and hold harmless the app, its developers, affiliates, and partners from any claims, damages, liabilities, or expenses arising from their use of the app or violation of these Terms and Conditions. 
•	The app is provided "as is" without any warranties, express or implied, including but not limited to warranties of merchantability, fitness for a particular purpose, or non-infringement. 
•	The app shall not be liable for any direct, indirect, incidental, consequential, or punitive damages resulting from the use or inability to use the app, even if advised of the possibility of such damages.
""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("D.	SEXUALITY AND SEXUAL CONTENT",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""•	The app strictly prohibits the promotion, engagement, or involvement in any form of sexual orientation or explicit sexual content. 
•	Users must not post, share, or engage in any activities related to explicit language, nudity, pornography, or sexually suggestive content within the app. 
•	Any violation of this policy will result in the immediate termination of the user's account and may be subject to legal action, depending on the severity of the violation and applicable laws. 
•	The app reserves the right to remove any content deemed inappropriate or in violation of this policy without prior notice. 
•	Users must comply with all applicable laws and regulations regarding sexual content and conduct in their jurisdiction.
""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("IFRAMES",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""Without prior approval and express written permission, you may not create frames around our Web pages or use other techniques that alter in any way the visual presentation or appearance of our platform.""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("GOOGLE PLAY STORE",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""By downloading the iArab Platform from Google Play (or its successors) operated by Google, Inc. or one of its affiliates ("Google"), you specifically acknowledge and agree that:
1.	In the event of any conflict between (a) the Google Play Terms of Services and the Google Play Business and Program Policies or such other terms which Google designates as default end user license terms for Google Play (collectively referred to as the "Google Play Terms"), and (b) the other terms and conditions in iArab's Terms, the Google Play Terms shall apply with respect to your use of the iArab Platform that you download from Google Play.
2.	You hereby acknowledge that Google does not have any responsibility or liability related to compliance or non-compliance by iArab or you (or any other user) under iArab's Terms or the Google Play Terms.
By downloading the iArab Platform from Google Play, you agree to be bound by these terms in addition to any applicable Google Play Terms. It is important to note that Google is not responsible for any issues or disputes that may arise between you and iArab in relation to your use of the iArab Platform or compliance with iArab's Terms.
""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("APPLE STORE",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""These Terms are between iArab and you; Apple is not a party to these Terms. The license granted to you hereunder is limited to a personal, limited, non-exclusive, non-transferable right to install the iArab Platform on the Apple device(s) authorized by Apple that you own or control for personal, non-commercial use, subject to the Usage Rules set forth in Apple's App Store Terms of Services. Apple is not responsible for the iArab Platform or the content thereof and has no obligation whatsoever to furnish any maintenance or support services with respect to the iArab Platform. In the event of any failure of the iArab Platform to conform to any applicable warranty, you may notify Apple, and Apple will refund the purchase price for the iArab Platform, if any, to you. To the maximum extent permitted by applicable law, Apple will have no other warranty obligation whatsoever with respect to the iArab Platform. Apple is not responsible for addressing any claims by you or a third party relating to the iArab Platform or your possession or use of the iArab Platform, including without limitation (a) product liability claims; (b) any claim that the iArab Platform fails to conform to any applicable legal or regulatory requirement; and (c) claims arising under consumer protection or similar legislation. In the event of any third party claim that the iArab Platform or your possession and use of the iArab Platform infringes such third party's intellectual property rights, Apple is not responsible for the investigation, defense, settlement, or discharge of such intellectual property infringement claim. You represent and warrant that (a) you are not located in a country that is subject to a U.S. Government embargo, or that has been designated by the U.S. Government as a "terrorist supporting" country; and (b) you are not listed on any U.S. Government list of prohibited or restricted parties. Apple and its subsidiaries are third-party beneficiaries of these Terms, and upon your acceptance of the terms and conditions of these Terms, Apple will have the right (and will be deemed to have accepted the right) to enforce these Terms against you as a third party beneficiary hereof. iArab expressly authorizes the use of the iArab Platform by multiple users through Family Sharing or any similar functionality provided by Apple.""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("ACCEPTABLE USE",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 14.px),),
              Text("""You agree not to use the Website or Services for any unlawful purpose or any purpose prohibited under this clause. You agree not to use the Website or Services in any way that could damage the Website, Services, or general business of iarab.org.
•	You further agree not to use the Website or Services:
•	To harass, abuse, or threaten others or otherwise violate any person's legal rights.
•	To violate any of our intellectual property rights or any third party.
•	To upload or otherwise disseminate any computer viruses or other software that may damage the property of another.
•	To perpetrate any fraud.
•	To engage in or create any unlawful gambling, sweepstakes, or pyramid scheme.
•	To publish or distribute any obscene or defamatory material.
•	To publish or distribute any material that incites violence, hate, or discrimination towards any group.
•	To unlawfully gather information about others.
""",style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("INTELLECTUAL PROPERTY",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""You agree that the Website and all Services provided by us are the property of IArab, including all copyrights, trademarks, trade secrets, patents, and other intellectual property ("Our IP"). You agree that we own all rights, title, and interest in and to the Our IP and that you will not use Our IP for any unlawful or infringing purpose. You agree not to reproduce or distribute Our IP in any way, including electronically or via registration of any new trademarks, trade names, service marks, or Uniform Resource Locators (URLs), without express written permission from us.""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("INDEMNIFICATION",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""To the maximum extent permitted by law, you agree to indemnify, defend and hold harmless IArab and its affiliates and/or related entities, whether direct or indirect, current, former or future, and its and their respective current, former, or future officers, directors, employees, agents, successors and assigns and related third parties (each an “Indemnified Party”), for any claims, causes of action, debts, damages, losses, costs, liabilities and expenses (including reasonable attorneys’ fees) relating to or arising out of any third-party claim that (a) your use of or inability to use the Services, (b) any user postings made by you, (c) your violation of any terms of this Agreement or your violation of any rights of a third party, or (d) your violation of any applicable laws, rules or regulations, except to the extent caused by any unlawful or negligent act or omission by IArab. IArab reserves the right, at its own cost, to assume the exclusive defense and control of any matter otherwise subject to indemnification by you, in which event you will fully cooperate with IArab in asserting any available defenses. An Indemnified Party may participate in the defense by counsel of its own choosing, at its own cost and expense. You shall not settle any claim that adversely affects an Indemnified Party or imposes any obligation or liability on an Indemnified Party without the Indemnified Party’s prior written consent.""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("BINDING ARBITRATION",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""If the Parties are unable to resolve a Dispute through informal negotiations, the Dispute (except those Disputes expressly excluded below) will be finally and exclusively resolved through binding arbitration. The arbitration may be conducted in person, through the submission of documents, by phone, or online. The arbitrator will decide in writing but need not provide a statement of reasons unless requested by either party. The arbitrator must follow applicable law, and any award may be challenged if the arbitrator fails to do so. The arbitration will take place in the United States. Except as otherwise provided herein, the Parties may litigate in court to compel arbitration, stay proceedings pending arbitration, or confirm, modify, vacate, or enter judgment on the award entered by the arbitrator.      
If for any reason, the Dispute proceeds in court rather than arbitration, the Dispute shall be commenced or prosecuted in the state and federal courts located in the United States, and the Parties hereby consent to and waive all defenses of lack of personal jurisdiction and forum nonconvenient concerning venue and jurisdiction in such state and federal courts.
In no event shall any Dispute brought by either party related in any way to the site be commenced more than one (1) year after the cause of action arose. If this provision is found to be illegal or unenforceable, then neither party will elect to arbitrate any Dispute falling within that portion of this provision found to be illegal or unenforceable, and such Dispute shall be decided by a court of competent jurisdiction within the courts listed for jurisdiction above, and the Parties agree to submit to the personal jurisdiction of that court.
""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("EXCLUSION OF LIABILITY",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""You understand and agree that we (A) do not guarantee the accuracy, completeness, validity, or timeliness of information listed by us or any third parties, and (B) shall not be responsible for any materials posted by us or any third party. You shall use your judgment, caution, and common sense in evaluating any prospective methods or offers and any information provided by us or any third party.
Further, we shall not be liable for direct, indirect consequential, or any other form of loss or damage that may be suffered by a user using the iarab.org Website, including loss of data or information or any kind of financial or physical loss or damage.
In no event shall IArab, nor its Owner, directors, employees, partners, agents, suppliers, or affiliates, be accountable for any indirect, incidental, special, eventful, or exemplary costs, including without limitation, loss of proceeds, figures, usage, goodwill, or other intangible losses, consequential from (i) your use or access of or failure to access or use the service; (ii) any conduct or content of any third party on the service; (iii) any content attained from the service; and (iv) unlawful access, use or alteration of your transmissions or content, whether or not based on guarantee, agreement, domestic wrong (including carelessness) or any other lawful concept, whether or not we've been aware of the possibility of such damage, and even if a cure set forth herein is originated to have futile of its important purpose.
""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("MODIFICATION & VARIATION",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""We may, from time to time and at any time without notice to you, modify this Agreement. You agree that we have the right to modify this Agreement or revise anything contained herein. You further agree that all modifications to this Agreement are in full force and effect immediately upon posting on the Website and that modifications or variations will replace any prior version of this Agreement unless prior versions are specifically referred to or incorporated into the latest modification or variation of this Agreement.""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("NO WARRANTIES",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""You agree that your use of the Website and Services is at your sole and exclusive risk and that any Services provided by us are on an "As Is" basis. We hereby expressly disclaim any express or implied warranties of any kind, including but not limited to the implied warranty of fitness for a particular purpose and the implied warranty of merchantability. We make no warranties that the Website or Services will meet your needs or that the Website or Services will be uninterrupted, error-free, or secure. We also make no warranties as to the reliability or accuracy of any information on the Website or obtained through the Services. You agree that any damage that may occur to you through your computer system or because of the loss of your data from your use of the Website or Services is your sole responsibility and that we are not liable for any such damage or loss.""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("LIMITATION ON LIABILITY",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""We are not liable for any damage that may occur to you because of your use of the Website or Services to the fullest extent permitted by law. This section applies to any claims by you, including, but not limited to, lost profits or revenues, consequential or punitive damages, negligence, strict liability, fraud, or torts of any kind.""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("GOVERNING LAW AND JURISDICTION",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""This website originates from the United States. The laws of the United States. Without regard to its conflict of law, principles will govern these terms to the contrary. You hereby agree that all disputes arising out of or in connection with these terms shall be submitted to the exclusive jurisdiction of the United States. By using this website, you consent to the jurisdiction and venue of such courts in connection with any action, suit, proceeding, or claim arising under or because of these terms. You at this moment waive any right to trial by jury arising out of these terms.""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("SEVERABILITY",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""If any provision of these Terms and conditions is determined to be unlawful, void, or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms and conditions, such determination shall not affect the validity and enforceability of any other remaining provisions.""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),
              SizedBox(height: 2.h,),
              Text("CONTACTING US",style: TextStyle(color: Colors.black,fontFamily: "medium",fontSize: 15.px),),
              Text("""If you would like to contact us to understand more about our terms or wish to contact us concerning any matter, you may do so via the contact us page or email us. 
This document was last updated on March 31, 2024
""",
                style: TextStyle(color: Colors.black,fontFamily: "regular",fontSize: 12.px),),


              SizedBox(height: 5.h,width: 5.h,)
            ],),
        ),
      ),
    );
  }
}
