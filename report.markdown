% Accessibility of Student Association Websites
% Kevin Ross
% December 6, 2013
---
title: 'Accessibility of Student Association Websites'
author: 'Kevin Ross'
tags: [html, accessibility, section508, w3c]
abstract: |
    Discusses the use, and lack of use, of HTML accessibility features 
    on the Algonquin College Student Association website.
...

\pagenumbering{gobble}
Fall 2013  
  
Professor C. Côté, Room B325a  

Algonquin College  
1385 Woodroffe Ave.  
Ottawa, ON  
K2G 1V8  

Attached is my proposal for an upgrade in accessibility for the Algonquin Student Association (SA) website.

The purpose of this proposal is to provide a detailed explanation of the techniques used in website accessibility along with a breakdown of several deficiencies in the SA website.  Included are descriptions of actual technologies along with specific examples of deficiencies.  Also included is a breakdown of costs and time requirements.

Throughout this proposal, a familiarity with basic concepts of accessibility and usability will be essential.  Given the importance of this familiarity, some technologies are explained in detail.

Currently, I have almost a decade of software development experience.  For the past 3 years, I have been donating my time and skill to a club at the University of Ottawa so that they will have a best-in-class web application to manage their club's activities and members.  Given the inclusive nature of clubs at the University of Ottawa, I'm required to ensure the website is accessible.  Based on this history, I'm confident that the solutions presented in this report are viable and beneficial to the SA.

I'd like to thank John MacFarlane for providing an excellent tool used to produce this document and Caroline Côté for her invaluable feedback.

Overall, I have enjoyed writing this report as it has given me the skills I need to produce further reports in my career along with the requisite elements of such a report.  I especially enjoyed the challenge I found while deciding on a production method; using MacFarlane's tools along with other tools geared towards finishing the output from his tools has given me invaluable insight into document creation.

I'm happy to answer any questions that may not be answered in this proposal as well as provide any background information desired; I can be reached at [r0ssar00@gmail.com](mailto:r0ssar00@gmail.com) or [ross0262@algonquinlive.com](mailto:ross0262@algonquinlive.com).

Sincerely,  
      
      
\underline{~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~}  
Kevin Ross
\clearpage
\def\pschool{Algonquin College}
\def\pdepartment{School of Advanced Technology}
\include{./title}
\def\ppreppedfor{Carolyn Côté}
\def\pcoursecode{ENL1819}
\include{./title}
\pagenumbering{roman}

\clearpage

# Declaration of Sole Authorship
I, Kevin Ross, confirm that this work submitted for assessment is my own and is expressed in my own words. Any uses made within it of the works of any other author, in any form (ideas, equations, figures, texts, tables, programs), are properly acknowledged at the point of use. A list of the references used is included.

\clearpage

# Summary
Medical advances in the last 100 years have identified and treated hundreds, if not thousands, of deficits of the human body.  Some of these involve permanent disabilities, which by their very nature mean a person has to adapt to lifelong changes.  These adaptations usually involve some sort of assistive device.  The focus of this report is that of computer-based software known as screen readers.

The Algonquin Student Association (SA) website currently has deficits with respect to accessibility.  Most of these issues deal with images and flash objects; given that these types of content are inaccessible to those using screen readers, they must be altered to allow all users to consume them.

Since screen readers consume text and produce audio, the ideal scenario is the complete absence of images or flash objects.  For some images, such as restaurant menus, this is a fairly simple task: either annotate the image with the menu's content or transcribe the menu's contents into text and replace the image entirely.  For other types of content, such as flash objects, the content of the flash object needs to be considered.  In the case of the SA website, flash is largely used to present image galleries.  Options for flash galleries are limited given that the content more than likely cannot be replaced with text; the ideal option is to replace the flash object with a HTML, javascript, and CSS-based structure that displays the images along with captions and/or annotations.  Given that Facebook currently implements such a design and that some SA departments have migrated their images to Facebook already, the ideal solution for the remaining departments is to follow suite.

Given the relatively small number of pages that require changes, the amount of work required is within the current abilities and budget of the SA.  A cost of under $1000 is entirely reasonable based on the amount of work required and the salary of employees of the SA involved.

These changes won't impact the design or ability for non users of screen readers to consume content as the purpose is to make content accessible.  Since, by definition, the content will be accessible, all users will be able to consume it.  Additionally, based on design guidelines, the design of the site won't be impacted by these changes; in fact, the design will likely be improved due to the web browser's ability to interpret the text and format it accordingly.


\clearpage
\renewcommand{\contentsname}{Table of Contents}
\addcontentsline{toc}{section}{Table of Contents}
\tableofcontents
\clearpage
\addcontentsline{toc}{section}{\listfigurename}
\listoffigures
\clearpage
\pagenumbering{arabic}

# Introduction
The purpose of this report is to propose a solution to the problem of the Algonquin Student Association website currently lacking proper accessibility infrastructure.  As more and more students enter or consider Algonquin as a post-secondary institution, an increasing number of those students will rely on software such as screen readers to be able to navigate the website.

Several technologies exist for those with disabilities that either enable or assist users with computer usage.  Some of these technologies require no additional support from content producers while others require producers to format content in specific ways.  Most of the adaptations relate to images and video.

Images are incredibly hard for software to parse correctly; an image could depict anything and without context, software has no idea what to look for.  Around the time the internet started to evolve into it's present form, users who had impairments found themselves without a way to consume content.  They would read comments such as "See diagram for details" and be completely without a way of actually getting the information from the hypothetical diagram.  Users needed a feature that would give them descriptive information about images; the Worldwide Web Consortium, a group that publishes standards for web content, published the Web Content Accessibility Guidelines[[@w3cguide]] in 2008 that provide for methods that remedy this situation, among others.

My proposed solution would be to implement the standard in the aforementioned guide on the Algonquin Student Association's website, using techniques specified in the companion document Techniques and Failures for Web Content Accessibility Guidelines[[@w3ctech]].  Specific mention is given to the use of "alt" tags for images along with the elimination of flash-based photo galleries.  The cost of this solution will be minimal as most content changes are simply the addition of a line of text to the source code.  As for the more involved changes, such as the flash-based galleries, there are several packages on the internet which accomplish the desired functionality.  The timeline for the changes is measured in days, at most a week.

This report will be of importance to the Algonquin Student Association so that they may make changes to support accessibility.  Many members of both students and faculty will greatly benefit from not only the use of "alt" tags, but especially the replacement of flash-based galleries with galleries written in HTML.

Excluded from this report are factors related to missing and/or incorrect content.  Missing and/or incorrect content reduces accessibility however I will assume that during the course of the implementation of this solution, missing and/or incorrect content will be replaced or the references removed.

\clearpage

# Discussion
Before discussing the problems and possible solutions, it is beneficial for the reader to become familiar with the history of web content accessibility along with technologies used by those requiring assistance.

## History
The Worldwide Web Consortium publishes several documents pertaining to accessibility, including but not limited to a list of guidelines[[@w3cguide]], a list of techniques and failures[[@w3ctech]], and techniques for rich internet applications[[@w3caria]].  Additionally, several major governments publish documents that departments are expected to adhere to[[@canstd]][[@usstd]].  Especially in Ontario, governmental departments and publicly funded institutions are now required to adhere to The Accessibility Standards for Customer Service[[@aodacust]] as per The Accessibility for Ontarians with Disabilities Act, 2005[[@aoda]]. These documents all specify how content should be presented, structured, and organized to ensure that all users may be able to consume the aforementioned content.

## Technology
The technology primarily addressed in this report is the screen reader.  A screen reader is designed to inspect the text in a window and provide the user with an auditory representation of the layout and contents of the window.  Most often, the screen reader transforms the window into lists of lists presented as a tree and traverses the tree depth-first.  Optimally, this results in the user hearing the window from top to bottom, left to right, as an unassisted user would read it.  Part of the standards on web accessibility is ensuring the content is in the proper order to facilitate this type of traversal.

## Background
One of the main focuses of these standards is on images.  In most other types of content, the computer is able to interpret the structure and layout of the content and inform the user of the approximate order the content is to be consumed along with the actual content itself.  Images present a unique problem in that the computer is unable to understand the content and as such, is unable to provide an interpretation for the end user.  In a website where no special provisions are made for accessibility, this content is effectively invisible to the end user.  Apple’s VoiceOver screen reading software is a particularly effective tool for end users but it’s at a complete loss in this case, as shown in Figure \ref{menuimg}.

![Path VoiceOver follows through a document with an image with no metadata.  Note the arrows indicating the direction of travel; starting from the top right at Home and Quick Contact, the path proceeds to the SA logo, then the campus list, and then the navigation bar.  The rest of the path should be fairly evident. A transcript can be found in [Appendix A](#transcript-of-an-inaccessible-page-with-an-image)\label{menuimg}](alg_menu_vo_path.png)

\clearpage

One of the other types of content that is impossible for software to interpret, regardless of provisions made, is flash content.  Flash content is effectively a black box to screen readers as flash is a binary, rather than text-based, format and is basically a computer program in it’s own right.  It is possible for authors of flash content to embed screen reading software into the flash application but that is entirely up to the flash author and may be completely outside the control of the web page author.  All a web page author can do is annotate the area the flash applet resides in with metadata, anything else must be done in the flash applet itself.  Without this metadata, the object is invisible to the end user.  The same software mentioned above, VoiceOver, has exactly the same issue with flash as it does with metadata-less images, as shown in Figure \ref{flashgal}.

![Path VoiceOver follows through a document with a flash video.  The path is identical to that of the page with an image. \label{flashgal}](alg_gal_vo_path.png)

The standards referenced earlier describe several ways the above issues can be mitigated.  Primarily, the use of metadata is the easiest and fastest way for content creators to make their content available to consumers.  Such metadata includes attributes such as “alt” and “title” for images, links, and objects such as flash.  When attributes such as these are attached to the portion of the document that specifies the offending objects, the screen reader is able to read the metadata and present it to the end user.  In Figure \ref{winplayer}, the page has the requisite tags and as such, the screen reader is able to pass the contained information on to the end user.

![Path VoiceOver follows through a document[[@winplayer]] with an image with metadata.  The path starts at the navigation bar at the top of the page, proceeds to the logo, then the advertisement followed by the page contents on the left.  It proceeds upon a predictable path until the end of the page however it may be difficult to see the path around the image: it visits the image, describes it, and then reads the description underneath it.  The transcript can be found in [Appendix A](#transcript-of-an-accessible-page-with-an-image) \label{winplayer}](win_player_vo_path.png)

## Current Situation At Algonquin
The current situation at Algonquin is largely okay.  Most of the site is, in fact, accessible; the main content is presented fairly early on by screen readers and the navigation is left to the end for most pages.  In the ideal page, this is desired as the user likely has knowledge of the navigation elements already and is more interested in the main content.  Other areas of the site currently lack this layout, mainly due to the main content being images or flash objects.  Overall, the site is accessible however has exceptions.

### Images
The first major accessibility failure is that existing photos such as the menu for The Observatory[[@algsamenu]] have no metadata associated with them.  The end user will quite literally skip over the image in the document and have no idea there is even an image, they might even be under the impression that the page is incomplete.  This is a serious and insurmountable obstacle for someone who wishes to peruse the menu as the only other option is to visit the establishment and have someone read off the menu.  It may not even be possible for this to be an option as other disabilities may be in play.

### Galleries
The other major accessibility failure is the use of flash-based galleries.  As mentioned before, this content is completely invisible to the end user and therefore the aforementioned issues with images apply.

## Proposed Solution
### Images
As referred to earlier, the use of alt and title attributes make the page completely visible.  Adding these attributes is simply a matter of opening the relevant page in a text editor, finding the relevant image in the document, and appending the requisite text.

Ideally, for information such as the menu for The Observatory, the information would be extracted from the image and inserted into a table while removing the original image.

Depending on the content management system used by the student association, the difficulty of adding this data ranges from very easy, in the case of using a point-and-click editor, to very difficult, in the case of editing the page source code directly.

### Galleries
In current web development methodologies, the use of flash is deprecated and a solution based on HTML, javascript, and CSS is preferred.  Several implementations exist on the internet and the addition of which is usually a simple matter of removing the reference to the flash applet and replacing it with HTML markup as required by the chosen implementation.  Usually, gallery implementations are written such that if a user uses an alternative stylesheet or has javascript disabled, the gallery degrades into a linear row or column of images.  This is ideal in that screen readers are unable to interpret CSS or javascript and as such, merely see what would be on screen if either, or both, of the aforementioned degradation conditions were true.

Alternatively, the author may migrate the images over to a site such as Facebook, as has already been done with the SA event and The Observatory photos.  In this case, the work needed is minimal as Facebook has already implemented the gallery and all the author needs to do is upload the photos and provide captions.

## Cost
The cost of making the Algonquin Student Association web site is fairly minimal in both monetary and time costs.  In terms of time, an afternoon is all I expect a user would spend adding metadata to photos and extracting textual content.  The time to convert galleries from flash would take a little longer as there is likely no “drag-n-drop” method if the author chose to convert to a HTML+javascript+CSS-based solution.  If the author chose to use Facebook, the initial time investment would be about the same but maintenance would be much cheaper.

In terms of monetary cost, the work involved is typically already a part of the assigned author’s duties so their would be no additional payment upon completion.  It’s possible that the author may choose a gallery implementation that requires payment however I personally know of no such implementations.  The optimal solution, Facebook, is free, so there should be no cost to this project.

## Qualifications
I've been developing software for almost 9 years.  In that time, I've developed countless tools for personal use to automate repetitive tasks and ease my daily workload.  Additionally, I've donated considerable time over the past 3 years to the University of Ottawa's club, Humans vs Infected, to develop and administer the web application used to manage the game.  The web application consists of content and player management systems which use a range of technologies from HTML, javascript, and CSS to Python and MySQL.  Throughout the development of the website, I've endeavoured to make the content accessible through the minimization of image use, the complete lack of flash objects, and the overall layout of the pages.

I'm also visually impaired myself.  Although I don't require the use of a screen reader, other parts of the standards deal with allowing the content to re-arrange as the text size or window size change.  I frequently change the sizes of both to enable me to read content more comfortably.  During the course of my use of the internet, I've learned how to adjust the source code of inaccessible pages to allow me to change the sizes with the ultimate purpose of allowing the text to re-arrange itself into shorter lines.

\clearpage

# Conclusion
The standards dictate a lot of requirements for pages to be accessible, however as they are standards, they need to account for every possible situation.  Based on the content currently on the Algonquin Student Association website, the applicable changes are not onerous and won't take a great deal of time to implement.

It's common belief that making a website accessible will impact usability and design.  Based on an interview with Léonie Watson[[@interview]], this is not the case.  There is absolutely no reason to not make websites accessible.  The SA website is fairly usable and has a pleasing design and is still reasonably accessible in most cases so it is a case that can be used to prove this point.

Based on an article[[@ogrady]] published by Laura O'Grady, more needs to be done to make sites accessible.  While the article was focussed on health care sites, the fact is that the content is not specific to health care.  By making the SA website more accessible, we can help make the internet more accessible for everyone.

For any questions, I can be contacted at [r0ssar00@gmail.com](mailto:r0ssar00@gmail.com) or  
[ross0262@algonquinlive.com](mailto:r0ssar00@gmail.com).

\clearpage

# References

---
csl: ieee.csl
references:
- id: ogrady
  title: Accessibility compliance rates of consumer-oriented Canadian health care Web sites
  author:
  - family: O'Grady
    given: [Laura]
  container-title: Medical Informatics & The Internet In Medicine
  volume: 30
  issue: 4
  page: 287-295
  type: article-journal
  url: 'http://ehis.ebscohost.com/ehost/detail?sid=9181dd17-97db-4eb5-8e86-7cd441f06329%40sessionmgr114&vid=1&hid=115&bdata=JnNpdGU9ZWhvc3QtbGl2ZQ%3d%3d#db=a9h&AN=20063424'
  issued:
    year: 2005
    month: 9
  accessed:
    year: 2013
    month: 9
    day: 24
- id: w3ctech
  title: Techniques and Failures for Web Content Accessibility Guidelines 2.0
  author: 
  - literal: W3C
  container-title: Worldwide Web Consortium
  type: webpage
  ref-type: webpage
  issued:
    year: 2013
    month: 9
    day: 5
  url: 'http://www.w3.org/TR/WCAG20-HTML-TECHS/'
  accessed:
    year: 2013
    month: 9
    day: 24
- id: w3cguide
  title: Web Content Accessibility Guidelines 2.0
  author:
  - literal: W3C
  container-title: Worldwide Web Consortium
  type: webpage
  issued:
    year: 2008
    month: 12
    day: 11
  url: 'http://www.w3.org/TR/WCAG20/'
  accessed:
    year: 2013
    month: 9
    day: 24
- id: w3caria
  title: Accessible Rich Internet Applications (WAI_ARIA) 1.0
  author:
  - literal: W3C
  container-title: Worldwide Web Consortium
  type: webpage
  issued:
    year: 2011
  url: 'http://www.w3.org/TR/wai-aria/'
  accessed:
    year: 2013
    month: 9
    day: 24
- id: canstd
  title: Standard on Web Accessibility
  author:
  - literal: Treasury Board of Canada Secretariat
  container-title: Canada
  type: webpage
  issued:
    year: 2011
  url: 'http://www.tbs-sct.gc.ca/pol/doc-eng.aspx?id=23601'
  accessed:
    year: 2013
    month: 9
    day: 24
- id: oldinfo
  title: Building Accessible Websites
  author:
  - family: Clark
    given: [J]
  publisher: New Riders Publishing
  issued:
    year: 2002
  type: book
- id: interview
  title: 'Léonie Watson: accessibility is not the enemy of design'
  author:
  - literal: Creative Blog
  issued:
    year: 2013
  publisher: Creative Blog
  type: webpage
  url: 'http://www.creativebloq.com/web-design/why-accessibility-not-enemy-beauty-8134056'
  accessed:
    year: 2013
    month: 9
    day: 24
- id: usstd
  title: Section 508
  author:
  - literal: General Services Administration’s Office of Governmentwide Policy
  container-title: United States of America
  type: webpage
  url: 'http://www.section508.gov/index.cfm?fuseAction=stdsdoc'
  accessed:
    year: 2013
    month: 9
    day: 24
- id: algsamenu
  title: Menu
  author:
  - literal: Algonquin Student Association
  container-title: The Observatory
  type: webpage
  url: 'http://www.algonquinsa.com/ob/menu.aspx'
  accessed:
    year: 2013
    month: 9
    day: 24
- id: algsagal
  title: Photo Gallery
  author:
  - literal: Algonquin Student Association
  container-title: Thunder Athletics "Let's Get Thunderstruck"
  type: webpage
  url: 'http://www.algonquinsa.com/athletics/photo-gallery.aspx'
  accessed:
    year: 2013
    month: 10
    day: 22
- id: winplayer
  title: "Step 1: Run Windows Media Player"
  author:
  - literal: Knowzy
  type: webpage
  url: ‘http://www.knowzy.com/Computers/Audio/How_To_Rip_A_CD_To_MP3_Files/Windows_Media_Player_CD_Ripping-01.htm'
  accessed:
    year: 2013
    month: 11
    day: 15
  issued:
    year: 2005
    month: 09
    day: 14
  updated:
    year: 2011
    month: 06
    day: 27
- id: aoda
  title: "Accessibility for Ontarians with Disabilities Act, 2005"
  author:
  - literal: Ontario Government
  type: webpage
  url: 'http://www.e-laws.gov.on.ca/html/statutes/english/elaws_statutes_05a11_e.htm'
  issued:
    year: 2005
  accessed:
    year: 2013
    month: 12
    day: 5
- id: aodacust
  title: 'Accessibility Standards for Customer Service'
  author:
  - literal: Ontario Government
  type: webpage
  url: 'http://www.e-laws.gov.on.ca/html/source/regs/english/2007/elaws_src_regs_r07429_e.htm'
  issued:
    year: 2007
    month: 7
    day: 27
  accessed:
    year: 2013
    month: 12
    day: 5
...