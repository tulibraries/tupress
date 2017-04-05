# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# #

# ruby encoding: utf-8

Book.destroy_all

Book.create(
						book_id: '2015',
						title: 'A is for Art Museum', 
						author: [
							'Katy Friedland', 
							'Marla K. Shoemaker'
						], 
						description: '<p class="award">Honorable mention in the AAM (American Association of Museums) design competition., 2008</p><P>An art museum is a magical place. What will you find inside? This playful primer features 37 full-color illustrations of paintings, sculpture, tapestries, prints, photographs, and installations from the collections of the Philadelphia Museum of Art. Children can learn their ABCs while discovering the beauty of a bridge by Monet, a dancer by Degas, a medieval knight\’s helmet, a Japanese teahouse, and other wonders from around the world.</P><P>In <i>A is for Art Museum</i>, children are encouraged to see art in new ways. Each image is accompanied by questions designed to engage their imaginations and spark lively conversations. Activities at the back of the book suggest ways for children and adults to create stories out of each picture, or to turn a trip to an art museum into a “treasure hunt.” Like a visit to a museum, <i>A is for Art Museum</i> provides endless opportunities for interaction, fun, and learning.</P><p>Recommended for ages 2-5.</P>', 
						reviews: [
							'"Coffee-table books aren’t just for grown-ups, as proven by A Is for Art Museum, a kid-sized catalog that brings children into the Philadelphia Museum of Art through pictures and the alphabet. Every letter is tied to a piece in the museum, and asks readers a question about the photo…. It’s the perfect museum companion, too, for a first trip." <br><strong> —The Philadelphia Inquirer</strong> ', 
							'"Ages 2 to 5 will learn about art, shapes, colors and more through paintings and other objects found at the Philadelphia Art Museum. Famous artists have their works included in an educational format, showing children that different visions of the world are still accessible. Each page asks questions and helps develop the child’s thinking process as they search for letters, images and more. Truly a wonderful addition to any child’s library."<br><strong>—Parents Express</strong>', 
							'"A highly engaging introduction to art, this thoughtfully designed volume will inspire young children to see not only the alphabet in an entirely new way but also the world around them as they discover and learn to view paintings, sculptures, photographs, and other works and installations housed at the Philadelphia Museum of Art.... This would be a wonderful gift for any young child." <br><strong>—The Bloomsbury Review</strong> '
						], 
						about_author: [
							'<strong>Katy Friedland</strong> is Manager of Family and Children\'s Programs at the Philadelphia Museum of Art.', 
							'<strong>Marla K. Shoemaker</strong> is Senior Curator of Education at the Philadelphia Museum of Art.'
						], 
						subjects: [
							'1057', 
							'1071', 
							'1051'
						], 
						in_series: [
							'S-149',
							'S-188'
							],
						is_guide: "1",
						award: "Athenæum of Philadelphia’s Literary Award, 2004",
						format: '64 pp • 8.25x8.25 • 145 tables • 37 color illustrations', 
						binding: [
							{type: 'Cloth', ean: '978-1-59213-963-7', price: '18.95'},
							{type: 'Paper', ean: '978-2-59213-963-9', price: '12.95'}
						], 
						pub_date: 'Sep 08', 
						isbn: '9781592139637', 
						ean: '978-1-59213-963-7', 
						cover_image: 'http://www.temple.edu/tempress/titles/2015_reg.gif'
						)

# Subject.create(subject: '')
# Subject.destroy_all

Subject.create(subject_id: '1029', subject: 'African Studies')
Subject.create(subject_id: '1030', subject: 'African American Studies')
Subject.create(subject_id: '1031', subject: 'Aging')
Subject.create(subject_id: '1032', subject: 'American Studies')
Subject.create(subject_id: '1033', subject: 'Animals and Society')
Subject.create(subject_id: '1034', subject: 'Anthropology')
Subject.create(subject_id: '1035', subject: 'Art and Photography')
Subject.create(subject_id: '1036', subject: 'Asian Studies')
Subject.create(subject_id: '1037', subject: 'Asian American Studies')
Subject.create(subject_id: '1038', subject: 'Biography/Memoir/Autobiography')
Subject.create(subject_id: '1039', subject: 'Business/Economics')
Subject.create(subject_id: '1040', subject: 'Children\'s Books')
Subject.create(subject_id: '1041', subject: 'Cinema Studies')
Subject.create(subject_id: '1043', subject: 'Community Organizing and Social Movements')
Subject.create(subject_id: '1045', subject: 'Cultural Studies')
Subject.create(subject_id: '1046', subject: 'Music and Dance')
Subject.create(subject_id: '1047', subject: 'Death and Dying')
Subject.create(subject_id: '1048', subject: 'Disability Studies')
Subject.create(subject_id: '1049', subject: 'Drama')
Subject.create(subject_id: '1051', subject: 'Education')
Subject.create(subject_id: '1055', subject: 'Family Policy')
Subject.create(subject_id: '1056', subject: 'Gender Studies')
Subject.create(subject_id: '1057', subject: 'General Interest')
Subject.create(subject_id: '1058', subject: 'Geography')
Subject.create(subject_id: '1059', subject: 'Health and Health Policy')
Subject.create(subject_id: '1060', subject: 'History')
Subject.create(subject_id: '1061', subject: 'Immigration')
Subject.create(subject_id: '1062', subject: 'Jewish Studies')
Subject.create(subject_id: '1063', subject: 'Labor Studies and Work')
Subject.create(subject_id: '1064', subject: 'Latin American/Caribbean Studies')
Subject.create(subject_id: '1065', subject: 'Latino/a Studies')
Subject.create(subject_id: '1066', subject: 'Law and Criminology')
Subject.create(subject_id: '1067', subject: 'Literature and Drama')
Subject.create(subject_id: '1068', subject: 'Mass Media and Communications')
Subject.create(subject_id: '1069', subject: 'Music and Dance')
Subject.create(subject_id: '1070', subject: 'Nature and the Environment')
Subject.create(subject_id: '1071', subject: 'Philadelphia Region')
Subject.create(subject_id: '1072', subject: 'Philosophy and Ethics')
Subject.create(subject_id: '1074', subject: 'Political Science and Public Policy')
Subject.create(subject_id: '1075', subject: 'Psychology')
Subject.create(subject_id: '1077', subject: 'Race and Ethnicity')
Subject.create(subject_id: '1078', subject: 'Religion')
Subject.create(subject_id: '1079', subject: 'Science')
Subject.create(subject_id: '1080', subject: 'Sexuality Studies/Sexual Identity')
Subject.create(subject_id: '1082', subject: 'Sociology')
Subject.create(subject_id: '1083', subject: 'Sports')
Subject.create(subject_id: '1084', subject: 'Technology')
Subject.create(subject_id: '1085', subject: 'Urban Studies')
Subject.create(subject_id: '1086', subject: 'Women\'s Studies')
Subject.create(subject_id: '1088', subject: 'Youth Studies')

Series.create(series_id: 'S-143', series: 'Africans in the Diaspora', description: '')
Series.create(series_id: 'S-144', series: 'African Soundscapes', description: 'African music has been a topic of considerable scholarly and general interest. The books in this new interdisciplinary series will highlight contemporary African music in its cultural contexts and the contributions of African expressive culture to global music traditions. The series will include works by scholars based in Africa.')
Series.create(series_id: 'S-145', series: 'America in Transition: Radical Perspectives', description: 'America in Transition: Radical Perspectives, edited by Gary L. Francione, presents radical interdisciplinary critiques of U.S. social institutions. The books included will analyze and interpret issues of class, race, gender, sexual orientation, ability, and species and suggest solutions for the problems they raise as we enter the twenty-first century.')
Series.create(series_id: 'S-146', series: 'American Civilization', description: 'The focus of American Civilization, edited by Allen F. Davis, is American cultural history. In keeping with the interdisciplinary work in this field, which characteristically brings together art history, literary history and theory, and material culture, the titles in this series cover diverse aspects of American experienceâfrom attitudes toward death to twentieth-century design innovations to images of country life in art and letters to trade unions\' reliance on religious discourse. The series has been a pioneer in presenting work that uses photographs as historical documents and from its inception has been firmly committed to women\'s studies. As the first university press series in the field, American Civilization provided the inspiration and the standard for much of the interdisciplinary work developing in the contemporary academy.')
Series.create(series_id: 'S-147', series: 'American Subjects', description: 'The American Subjects series, edited by Robert Dawidoff, will introduce readers to unfamiliar areas or figures in American culture. All of the titles in this series will be the first on their particular subject. Each will tell an unfamiliar story and will emphasize the cultural side of how Americans have lived and what they have created or thought.')
Series.create(series_id: 'S-148', series: 'Animals, Culture, and Society', description: 'Animals, Culture, and Society, edited by Arnold Arluke and Clinton R. Sanders, is concerned with probing the complex and contradictory human-animal relationship through the publication of accessible books that consider the place of animals in our culture, our literature, our society, and our homes.')
Series.create(series_id: 'S-149', series: 'Animals and Ethics ', description: 'Building on the idea that human and non-human animals share a common environment, the Animals and Ethics series will produce a wide range of books that explain animal behavior, show how humansâ decisions and dispersal around the planet affect animalsâ interests and experience, and propose practical solutions to the ethical problems that arise from human effects on our world. The books will be rooted in the natural and social sciences, but the authors--mostly scientists, social scientists and philosophersâwill write for a broad audience, including children. ')
Series.create(series_id: 'S-150', series: 'The Arts and Their Philosophies', description: 'The volumes in The Arts and Their Philosophies, edited by Joseph Margolis, include: overviews of such well-defined sub-disciplines as the philosophy of music, film, and literature; studies of important figures, schools, and movements; monographs on such topics as postmodernism, texts and interpretation, reference in fiction, and the methodology of art history; explorations of the intersection of the arts and other disciplines, such as feminism and interpretation, art and politics; and translations of major works.')
Series.create(series_id: 'S-151', series: 'Asian American History and Culture', description: 'Founded by Sucheng Chan in 1991, the Asian American History and Culture series has sponsored innovative scholarship that has redefined, expanded, and advanced the field of Asian American studies while strengthening its links to related areas of scholarly inquiry and engaged critique. Like the field from which it emerged, the series remains rooted in the social sciences and humanities, encompassing multiple regions, formations, communities, and identities. Extending the vision of founding editor Sucheng Chan and emeriti editor Michael Omi, David Palumbo-Liu, K. Scott Wong and Linda Trinh VÃµ, series editors Cathy Schlund-Vials, Rick Bonus, and Shelley Sang-Hee Lee continue to develop a foundational collection that embodies a range of theoretical and methodological approaches to Asian American studies.')
Series.create(series_id: 'S-152', series: 'Baseball Encyclopedias of North America', description: 'The purpose of Baseball Encyclopedias of North America, edited by Rich Westcott, is to examine each of the clubs in big league baseball in an encyclopedic format. That is, to provide baseball fans a place to go to find information on a particular team organized in such a fashion that is available nowhere else. The series editor aims to concentrate on the 16 original teams of both leagues and publish each book as he is able to find the right person to do it. The books will all be unique because of their emphasis on three major components: 1) short, straight forward prose accounts of all aspects of the team including seasons, players, stadiums and front office people, 2) listings and statistics of all players of the team, and 3) heavy illustrations. These books can be read cover to cover or used as reference materials.')
Series.create(series_id: 'S-153', series: 'Baseball in America', description: '')
Series.create(series_id: 'S-154', series: 'Border Lines: Works in Translation', description: 'Border Lines, edited by Lawrence Venuti, is a translation series designed to make important foreign literary works available to an English-language audience and to recognize and support the role of translation in promoting cultural diversity. The books will be primarily fiction and poetry, but the series will also consider drama and non-fiction genres like memoirs and criticism. Preference will be given to foreign writers who have never been translated into English, and to foreign literatures that are underrepresented in Anglo-American culture because of aesthetic, cultural, or political differences.')
Series.create(series_id: 'S-157', series: 'Conflicts in Urban and Regional Development', description: 'Conflicts in Urban and Regional Development, edited by John R. Logan and Todd Swanstrom, includes books on urban policy and issues of city and regional planning, accounts of the political economy of individual cities, and books that compare policies across cities and countries.')
Series.create(series_id: 'S-158', series: 'Critical Perspectives on the Past', description: 'Critical Perspectives on the Past, edited by Susan Porter Benson, Stephen Brier, and Roy Rosenzweig, is concerned with the traditional and nontraditional ways in which historical ideas are formed. In its attentiveness to issues of race, class, and gender and to the role of human agency in shaping events, the series is as critical of traditional historical method as content. Emphasizing that history is itself an interpretation of material events, the series demonstrates that the historian\'s choices of subject, narrative technique, and documentation are politically as well as intellectually constructed.')
Series.create(series_id: 'S-159', series: 'Culture and the Moving Image', description: 'The Culture and the Moving Image series, edited by Robert Sklar, seeks to publish innovative scholarship and criticism on cinema, television, and the culture of the moving image. The series will emphasize works that view these media in their broad cultural and social frameworks. Its themes will include a global perspective on the world-wide production of images; the links between film, television, and video art; a concern with issues of race, class, and gender; and an engagement with the growing convergence of history and theory in moving image studies.')
Series.create(series_id: 'S-160', series: 'Emerging Media: History, Theory, Narrative', description: 'Moving beyond the reductive and ambiguous conclusions that new media is either utopian or dystopian, this series will situate emerging media in the context of history, art, and theory. Books in the series will address the fact that new media is shaped by specific historic currents, from the history of communication technologies, to the history of mass entertainment, to the tradition-bound practices of multimedia design. These historical underpinnings of new media forms will also engage the insights of artists, storytellers, and theorists.')
Series.create(series_id: 'S-163', series: 'Gender, Family, and the Law', description: 'Gender, Family, and the Law, edited by D. Kelly Weisberg, aims to present a rich and diverse collection of books from social science and legal perspectives on topics relevant to gender, the family, and public policy. It attempts to shed light on the complex nature of public regulation of the private family by addressing the law\'s response to the changing nature of men\'s and women\'s roles and the evolution of the family.')
Series.create(series_id: 'S-164', series: 'Global Youth', description: 'The Global Youth Book Series, edited by Craig Jeffrey and Jane Dyson, comprises research-based studies of young people in the context of global social, political and economic change. The series brings together work that examines youth and aspects of global change within sociology, anthropology, development studies, geography, and educational studies. Our emphasis is on youth in areas of the world that are often excluded from mainstream discussions of young people, such as Latin America, Africa, Asia and Eastern Europe, but we also welcome studies from Western Europe and North America, and books that bridge the global north and global south.')
Series.create(series_id: 'S-165', series: 'Global Ethics and Policy', description: 'Global ethics and international political theory are relatively new fields prompted by the growing interconnections of economies, technologies, societies, cultures, and legal systems that together comprise globalization. The Global Ethics and Politics Series, edited by Carol C. Gould, will feature original authored works and distinctive collections dealing with the contemporary ethical issues that are raised by globalization and by the new democratic forms of global governance that can contribute to the realization of justice and human rights. It will also consider new cross-cultural approaches to ethics and political norms and the conditions for intercultural understanding and conflict resolution in a globalizing world. Within these parameters, the series will include books on such themes as ethical issues regarding globalization; cross-cultural approaches to ethics and human rights; new perspectives on transnational democracy and the use of global governance institutions and international law to address questions of global justice and questions of war and peace.')
Series.create(series_id: 'S-166', series: 'Health, Society, and Policy', description: 'No longer active. Health, Society and Policy, edited by Sheryl Ruzek and Irving Kenneth Zola, takes a critical stance with regard to health policy and medical practice, ranging broadly in subject matter. Backlist titles include books on the legal and professional status of midwifery, the experience and regulation of kidney transplants, the evolution of federal law on architectural access, and a political/ethical argument for making the community responsible for universal access to health care.')
Series.create(series_id: 'S-167', series: 'History and the Public', description: 'The History and the Public book series, edited by Steve Conn, aims to foster conversations among practitioners, public historians, and academic historians of all stripes from the United States and internationally. This series begins with the assumption that almost all the work we do as historians has a public dimension and a public purpose. We will publish research monographs, author collaborations, and edited collections that examine the variety of ways in which history and historians interact with a wider public. The series will broaden our conception of what is meant by "public history," while also demonstrating the role historians can and should play in the civic arena.')
Series.create(series_id: 'S-168', series: 'Labor and Social Change', description: 'Labor and Social Change, edited by Paula Rayman and Carmen Sirianni, includes books on workplace issues like worker participation, quality of work life, shorter hours, technological change, and productivity, as well as union and community organizing and ethnographies of particular occupations.')
Series.create(series_id: 'S-169', series: 'Labor in Crisis', description: 'The hope for a revived progressive movement in American politics and culture depends to a large extent on the possibility of a revived labor movement. This series will stimulate debate and discussion about the state of the American labor movement and its relation to the future of America by publishing short, provocative books that offer varying analyses and prescriptions for labor\'s revival as well as diverse assessments of its prospects. Books in the series will be relevant to a vision of the labor movement that presupposes movements and people who care about the chances of more equality, more democratic participation in the institutions of political and social life, and more power for those traditionally excluded from economic and political decision making.')
Series.create(series_id: 'S-170', series: 'Mapping Racisms', description: 'The books in Mapping Racisms, edited by Jo Carrillo, Darrell Y. Hamamoto, Rodolfo D. Torres, and E. Frances White, assess the changing nature and meaning of racialized social relations in the United States. Although many of the works in the series are expected to be cultural, socio-economic, and historical studies devoted to a single ethnic group, the editors are especially interested in manuscripts that explore comparisons among these groups and analyze contemporary expressions of racialized relations and identities in the context of demographic shifts, changing class formations, and new forms of global dislocation. The aim of the series is to publish books that are analytical and rigorous, but at the same time appealing to a general audience.')
Series.create(series_id: 'S-171', series: 'The New Academy', description: 'The accelerated growth of interdisciplinary programs is just one indicator of the radical changes that have occurred within the academy during the past thirty years. Women\'s studies, peace studies, disability studies, environmental studies, queer studies, postcolonial studies, gender studies, ethnic studies (together and separately), cultural studies, and many more, have become established sites of inquiry. Much is owed to past generations of writers and thinkers whose voices were silenced, only now to be welcomed by academia. Considering this shifting of borders and expansion of domains, books in The New Academy, a series edited by Elizabeth Kamarck Minnich, explore conceptual tools developed by recent scholarship to extend, reconfigure, and comment upon intersections and divisions among established and emerging fields of academic study. Moving beyond rhetoric and jargon, the series engages the growing readership for critical and creative, inclusive and reconciling scholarship.')
Series.create(series_id: 'S-172', series: 'Philadelphia Voices, Philadelphia Visions', description: 'Philadelphia has always been a city that has embraced a richness of voice and vision, defying attempts to define it in a one-dimensional frame. Books in this series, Philadelphia Voices, Philadelphia Visions, edited by David W. Bartelt, will give voice to the diverse communities and perspectives that help define the city, and to address public issues that the city\'s community, civic and academic leadership raise in the public arena. The series is interdisciplinary, encompassing discussions of social divisions, cultural heterogeneity, and the importance of popular culture as expressions of communities that critique, celebrate, and continually reconstitute the Philadelphia region.')
Series.create(series_id: 'S-173', series: 'Place, Culture, and Politics', description: 'Place, Culture, and Politics is edited by Neil Smith, Graduate Center, City University of New York. Many of the most pressing political issues today are widely understood to occupy the nexus between place, culture and politics. Books in this series will make clear the pivotal role of space and place in questions of politics and culture. The series is interdisciplinary, ranging freely between the social sciences and humanities and, to a lesser extent, the physical and life sciences. The primary aim of these texts will be to influence public opinion more than to increase the purely academic stock of knowledge. Books will be explicitly political; they will have a point of view, multiple points of view, and will engage current events and ideas.')
Series.create(series_id: 'S-174', series: 'Policy and Politics in Industrial States', description: 'Each volume in Policy and Politics in Industrial States, edited by Douglas E. Ashford, Peter J. Katzenstein, and T.J. Pempel, is a sophisticated textbook that focuses on a single country but in a comparative policy context. Each consists of a balance of analysis and primary documents for six major issues. The issues include topics like economic policy, labor relations, social welfare, and the internal organization of the state.')
Series.create(series_id: 'S-175', series: 'Politics, History, and Social Change', description: 'This series will disseminate serious works that analyze the social changes that have transformed our world during the twentieth century and beyond. The main topics to be addressed include international migration; human rights; the political uses of history; the past and future of the nation-state; decolonization and the legacy of imperialism; and global inequality. The series will also translate into English outstanding works by scholars writing in other languages.')
Series.create(series_id: 'S-176', series: 'Puerto Rican Studies', description: 'The objective of Puerto Rican Studies, edited by Luz del Alba Acevedo, Juan Flores, and Emilio Pantojas-GarcÃ­a, is to bring to publication work on the Puerto Rican experience that is of interest to a wide range of audiences beyond the fields of Puerto Rican and ethnic studies, as well as to provide new insights into other interdisciplinary fields such as cultural studies, women\'s studies, and urban studies. The series provides a forum for young, creative and daring scholars venturing into nontraditional ways of dealing with issues in Puerto Rican studies. The editors are concerned with producing work that will appeal to the wider North American and English-speaking audiences reaching scholars, writers, activists, feminists, and intellectually curious people throughout the hemisphere and Europe.')
Series.create(series_id: 'S-177', series: 'Queer Politics, Queer Theories', description: 'The last ten years have seen the growth of rich research in the politics of sexuality. Queer Politics, Queer Theories, edited by Craig Rimmerman, aims at developing this research both within and across disciplines. The series will focus on politics in the broadest sense: not only state- and government-oriented studies, but also community politics and the internal politics of new social movements. Such work may originate in political science, sociology, economics, American studies, philosophy, law, history, or anthropology. The series will be defined not by particular academic disciplines but by the questions raised in it. The keys are a concern for the play of power and meaning in discussions of sexuality, and/or a reading of the role of sexuality and sexual identities in conceptions of social and political studies or in our common life.')
Series.create(series_id: 'S-178', series: 'The Rhetoric Series ', description: '')
Series.create(series_id: 'S-179', series: 'Sexuality Studies', description: 'Sexuality Studies, edited by Janice Irvine and Regina Kunzel, features work in sexuality studies broadly construed, in its social, cultural, and political dimensions, and in both historical and contemporary formations. The series includes titles located within disciplinary and interdisciplinary frames that combine theoretical methodologies with empirical research. ')
Series.create(series_id: 'S-180', series: 'The Social Logic of Politics', description: 'The Social Logic of Politics Series, edited by Scott D. McClurg (formerly edited by Alan S. Zuckerman), directs attention to several related clusters of research in the social sciences. At the core is a theoretical principle: individuals make political decisions, like other choices, by taking into account cues from other persons. Studies move from individuals to groups to large scale collectivities. Usually examining micro-politics-voting and other forms of political participation; the place of politics in households, the family, the friendship unit, and the neighborhood- this research also studies how broader political and social contexts influence and are influenced by these micro-processes. It includes as well "small group behavior" in political institutions, such as exchanges of cues in legislatures and patron-client relations in bureaucratic agencies and political parties. Books in The Social Logic of Politics Series will apply research techniques that run the gamut of contemporary political science, sociology, communications, and geography. ')
Series.create(series_id: 'S-181', series: 'Sound Matters', description: 'Using music as the entry point for cultural analysis, books in the series Sound Matters, edited by Michael Jarrett, seek to articulate the values, beliefs, and dreams of the societies that create it. This series invites project proposals whose interdisciplinary approaches to music and cultural analysis will result in innovative, provocative, and accessible results.')
Series.create(series_id: 'S-182', series: 'Sporting', description: 'As an international cultural activity for athleticism, spectatorship, and global cultural exchange, sport is unmatched by any other force on earth. And yet it remains a consistently understudied dimension of history and cultural studies. Sporting, edited by Amy Bass, aims to contribute to the study of sport by publishing works by people across a range of disciplines, by professional sportswriters, and by athletes to add substance to our still emerging notion of globalization.')
Series.create(series_id: 'S-183', series: 'Studies in Latin American and Caribbean Music', description: 'Studies in Latin American and Caribbean Music, edited by Peter Manuel, aims to present interdisciplinary studies in the traditional and contemporary musics of Latin America and the Caribbean.')
Series.create(series_id: 'S-184', series: 'Teaching/Learning Social Justice', description: 'The series Teaching/Learning Social Justice, edited by Lee Anne Bell, is concerned with educational practices that promote democracy and equality in a diverse society. "Social Justice" is used as an umbrella term for the many topics and concerns connoted by the terms democracy, equality, and diversity, while the term "Teaching/Learning" emphasizes the essential connections between theory and practice that this series examines. Books in the series will look at a broad range of educational arenas to examine the many ways people engage diversity, democracy, and social change in classrooms and communities. The series will draw on the lived experiences of people who struggle to critically analyze and challenge oppressive relationships and institutions, and to imagine and create more just and inclusive alternatives. The series\' focus will be on both popular education and education in formal institutions, and its audience is educators and activists who believe in the possibility of social change through education.')
Series.create(series_id: 'S-185', series: 'Technology and Urban Growth', description: 'Technology and Urban Growth, edited by Blaine Brownell, Donald T. Critchlow, Mark S. Foster, Joel Tarr, and Mark Rose, focuses on the relationships between urban growth and change and developments in technological fields such as transport, utilities, and housing and office construction.')
Series.create(series_id: 'S-186', series: 'Themes in the History of Philosophy', description: 'Themes in the History of Philosophy, edited by Edith Wyschogrod, will serve as a collection of outstanding work in the history of philosophy. It will include interpretations of significant themes, problems, and tendencies in the history of thought; studies of important thinkers, schools, and movements; and inquiries into the relation of previous philosophies to literature, art, and history.')
Series.create(series_id: 'S-187', series: 'Urban Life, Landscape, and Policy', description: 'The Urban Life, Landscape, and Policy Series, edited by David Stradling, Larry Bennett, and Davarian Baldwin, was founded by the late Zane L. Miller to publish books that examine past and contemporary cities, focusing on cultural and social issues. The editors seek proposals that analyze processes of urban change relevant to the future of cities and their metropolitan regions, and that examine urban and regional planning, environmental issues, and urban policy studies, thus contributing to ongoing debates. ')
Series.create(series_id: 'S-188', series: 'Visual Studies', description: 'Visual Studies, edited by Douglas Harper, will consist of a broad range of books that regard photography, film, and other visual media as vehicles for exploring social and cultural themes. We are developing a series of illustrated books that draw on photographs as primary documents and that include a substantial analytic text; however, we will also consider unillustrated manuscripts on visual subjects. Douglas Harper is a photographer and sociologist who teaches at Potsdam College of the State University of New York.')
Series.create(series_id: 'S-189', series: 'Voices of Latin American Life', description: 'Voices of Latin American Life, edited by Arthur Schmidt, aims to bring the texture and humanity of Latin American experiences to English-language readers through translations of works that impart direct voices. Through testimonial literature, interviews, and essays, the series will present important Latin American views from the famous and the anonymous that reflect the immense challenges of fundamental issues and of daily life in the late twentieth and early twenty-first centuries.')
Series.create(series_id: 'S-190', series: 'Wide Angle Books', description: 'The mission of Wide Angle Books is to document, chronicle, and honor those institutions that have worked effectively to maintain a public presence and public spaces for alternative forms of media. These books recognize that institutional support of media happens at a variety of levels in a film series, in a video distribution organization, in a transnational digital network, in a grassroots production organization and in locations across the globe. Individual volumes in the series focus on such forms of primary documentation as letters, institutional records, and oral histories, presented and contextualized by leading media history scholars.')
Series.create(series_id: 'S-191', series: 'Women in the Political Economy', description: 'No longer active. Women in the Political Economy, edited by Ronnie J. Steinberg, includes books on women and issues of work, family, social movements, politics, feminism, and empowerment. It emphasizes women\'s roles in society and the social construction of gender and also explores current policy issues like comparable worth, international development, job training, and parental leave.')
Series.create(series_id: 'S-192', series: 'Religious Engagement in Democratic Politics', description: 'The Religious Engagement in Democratic Politics series, edited by Paul A. Djupe, will collect work that explores in theoretically and empirically rigorous ways variations in and determinants of religious presence in the politics of democratic nationsâfrom those with a long history of institutionalized democracy to those struggling to establish free, contested elections and systems of rights and liberties. Books in the series will demonstrate application of one or more of a variety of quantitative and qualitative methodologies to explore the robust and highly variable presence of religion in democracies.Prospective authors should contact series editor Paul Djupe or Senior Editor Aaron Javsicas at Temple University Press to discuss their work in progress for inclusion in the series. ')
Series.create(series_id: 'S-194', series: 'Insubordinate Spaces', description: '')
Series.create(series_id: 'S-195', series: 'Pennsylvania History', description: 'The Pennsylvania History series, designed to make high-quality scholarship accessible for students, advances the mission of the Pennsylvania Historical Association by engaging with key social, political, and cultural issues in the history of the state and region.')
Series.create(series_id: 'S-196', series: 'Critical Race, Indigeneity, and Relationality', description: '')

Review.create(title: 'Boathouse Row', title_id: '2375', author: 'Dotty Brown', review: '"Brown reveals numerous charismatic and talented personalities, tells a slew of frequently amusing and inspiring stories, and leaves the lucky reader understanding one of the prouder aspects of Philadelphia sports and recreational culture. Beautifully illustrated, this is the rare volume that both serves as a handsome coffee table book and as a first-rate read. It fills a gap in the literature and show remain the standard work on boat racing\'s own Philadelphia story for decades to come."', source: 'Pennsylvania Heritage', source_link: 'https://gallery.mailchimp.com/e49e3b3e54d82f4290d30fc59/files/e7fc74f3-4857-448b-9524-61faf41e8f2f/PAHeritageBR.pdf', source_date: 'Spring 2017')
Review.create(title: 'We Shall Not Be Moved/No nos moverán', title_id: '2380', author: 'David Spener', review: '"[A] concise, readable examination of the arts of resistance and the inspiration of left-wing internationalism. Rich in its multidisciplinary fluency, the book draws theory and method from musicology, sociology, anthropology, and history to trace how the English language \'We Shall Not Be Moved\' originated as an African American antebellum spiritual, then became a militant twentieth-century labor tune, and then a Civil Rights freedom song, and ultimately a \'transnational social movement anthem\' reconceived in Spanish-speaking communities on both sides of the Atlantic as \'No Nos Moverán.\' Spener navigates a lot of territory—linguistically, culturally, geographically, and historically—in the book, and he does it well. The text is lean and learned. The author is steeped in the traditions and orientations of social justice movement culture. He writes with authority and with clear admiration for his subject matter."', source: 'Peace & Change', source_link: 'https://gallery.mailchimp.com/e49e3b3e54d82f4290d30fc59/files/1c28bafd-e4d0-47c0-84bf-ba20d7dca1bf/Garabedian_2017_Peace___Change.pdf', source_date: 'April 2017')
Review.create(title: 'Illness or Deviance?', title_id: '2273', author: 'Jennifer Murphy', review: '"This book is a most worthwhile read.... Murphy\'s study provides the first realistic and critical look at how and why drug courts attempt to manipulate their clients, how clients adjust to these efforts, and what difficulties and confusions this leads to. In the process, she has created an analytical path for future studies of drug courts and laid the groundwork for more realistic evaluation of them."', source: 'Criminal Law and Criminal Justice Books', source_link: 'http://clcjbooks.rutgers.edu/books/illness-or-deviance-drug-courts-drug-treatment-and-the-ambiguity-of-addiction/', source_date: 'January 2017')
Review.create(title: 'Sesqui', title_id: '2115', author: 'Thomas Keels', review: '"Historian Keels recounts Philadelphia\'s spectacularly unsuccessful attempt in 1926 to celebrate the sesquicentennial of American independence with a world\'s fair.... The author demonstrates at length how the fair was entangled with local and state factional politics.... [R]eaders get broader context in a series of well-presented chapters that address the fascinating intersection of the fair with important national issues related to immigration, race, gender, and even sports."', source: 'Library Journal', source_link: 'http://reviews.libraryjournal.com/2016/11/books/nonfic/nonfiction-on-the-philadelphia-worlds-fair-of-1926-and-from-the-movie-doctors-xpress-reviews/', source_date: 'November 18, 2016')
Review.create(title: 'Shaming the Constitution', title_id: '2378', author: 'Michael Perlin and Heather Ellis Cucolo', review: '"[A] must read for registrants and their families.... It points out the failures in our justice system when it comes to sex offenders and provides common sense ideas about where courts have gone wrong and what they need to do better."', source: 'The Scarlet Letter Echo: Women Against Registry', source_link: 'http://blog.womenagainstregistry.com/shaming-the-constitution/', source_date: 'March 12, 2017')
Review.create(title: 'Ball Don\'t Lie!', title_id: '2361', author: 'Yago Colás', review: '[briefly mentioned on page 204]: "Theorizing at the \'intersection of language and basketball,\' this cultural study examines the central myths that construct the sport, from basketball\'s invention in 1891 to its expansive global present. Colás excavates the naturalization and circulation of the game\'s predominant myths to demonstrate how \'alternative accounts\' of critical genealogies and \inventions\' central to the sport\'s performance might challenge these narratives. The three chronological sections that organize this project consider how the sport\'s initial inception, its intersectional growth with the Civil Rights movement, and contemporary global spread have contributed to dynamics of race, class, gender, and \'physical culture\' in US society."', source: 'American Literature', source_link: '', source_date: 'March 2017')
Review.create(title: 'Liberating Service Learning and the Rest of Higher Education Civic Engagement', title_id: '2401', author: 'Randy Stoecker', review: '"Stoecker does not shy away from asking the hard questions, including challenging widely celebrated dominant theories, practices, and even histories in institutionalized service learning. He challenges those in the field to reflect on the language we use, terms like reciprocity, partnership, and social justice, and to critically examine if our practice actually aligns with proclaimed theories and values.... Stoecker understands the deep complexity of service learning work, tapping into the conflicting feelings practitioners navigate as we offer soundbites or quotes for news articles, write letters of recommendation, apply for grants, and receive awards and accolades for our work with the community. He challenges the field to ask the hard questions of not only ourselves but also of our institutional leaders, and encourages us to reconsider our practice and take risks."', source: 'Partnerships: A Journal of Service-Learning and Civic Engagement', source_link: 'https://gallery.mailchimp.com/e49e3b3e54d82f4290d30fc59/files/1ae6b4d8-2bc6-4eed-bc98-3300bbdab9a0/LiberatingServiceLearning_Partnerships.pdf', source_date: 'Volume 7, No. 2, 2016')
Review.create(title: 'The Enigmatic Academy', title_id: '2177', author: 'Christian Churchill and Gerald Levy', review: '"[T]his book will be of most value to those seeking qualitative accounts of class-based socialization in different types of educational settings. The authors have done a fine job of shedding light on sites like small liberal arts colleges, elite boarding schools, and unaccredited job training programs that are often not part of mainstream discussions in sociology of education areas focused on the modal educational experience."', source: 'Contemporary Sociology', source_link: 'http://journals.sagepub.com/doi/full/10.1177/0094306117692573h', source_date: 'March 2017')
Review.create(title: 'The Struggling State', title_id: '2371', author: 'Jennifer Riggan', review: '"Riggan critically analyses the Eritrean governments\' policy of societal militarisation and its impact on educational sector.... I am highly impressed by Riggan\'s in-depth analysis and her detailed insights concerning the authoritarian state and its violent and punitive character. Her study illustrates how the introduction of indefinite national service has negatively affected education, social capital formation and the nation-building and development processes. Riggan shows a high level of scholarship and thorough knowledge of her subject matter.... I highly recommend this book as a testimony of a critical juncture in Eritrea\'s troubled history."', source: 'Journal of Modern African Studies', source_link: 'https://gallery.mailchimp.com/e49e3b3e54d82f4290d30fc59/files/c7eaa700-1416-426e-8dd5-723e4925196a/RigganJoMAS.pdf', source_date: 'March 2017')
Review.create(title: 'American Heathens', title_id: '2296', author: 'Jennifer Snook', review: '"American Heathens provides both an overview of the various discourses, practices, and social networks that constitute the Heathen current in the United States, as well as analyses of that current in terms of social constructivist theory.... [The] topics are all treated with great care and nuance—yielding insightful analyses of facets of a new religious movement of increasing global importance that has not previously been explored by any within academia.... [T]he academic merits and complete novelty in terms of the subject of American Heathens makes it required reading for any scholars engaging with contemporary Neopaganism in general or with Heathenry in particular."', source: 'Nova Religio', source_link: 'https://gallery.mailchimp.com/e49e3b3e54d82f4290d30fc59/files/f4fe42fd-3640-4d15-bde8-05b6d0b10adb/Snook_Novo_Religio.pdf', source_date: 'February 2017')
Review.create(title: 'Exploring the Roots of Digital and Media Literacy through Personal Narrative', title_id: '2329', author: 'Renee Hobbs [editor]', review: '"This book certainly provides a fresh way of introducing new readers to key intellectual thinkers, some of whom were writing about media, education, technology and culture a good while before media and communication studies emerged as distinct fields. It is also an entertaining read, with an engaging mix of individual accounts, well-chosen quotation and scholarly discussion. Both old hands and novitiates will find many points of interest in this collection."', source: 'European Journal of Communication', source_link: 'https://gallery.mailchimp.com/e49e3b3e54d82f4290d30fc59/files/e261ef81-2836-469a-809a-f3f3e564b8e2/HobbsEJOC.pdf', source_date: 'February 2017')

Conference.create(month: [{id: '1', name: 'January'}], conference: 'Modern Language Association', link: 'https://www.mla.org/Convention', venue: '', location: 'Philadelphia, PA', dates: 'January 5 - 8, 2017', booth: '')
Conference.create(month: [{id: '1', name: 'January'}], conference: 'American Historical Association', link: 'https://www.historians.org/', venue: '', location: 'Denver, CO', dates: 'January 5 - 8, 2017', booth: 'Booth #517')
Conference.create(month: [{id: '1', name: 'January'}], conference: 'American Library Association Mid-Winter', link: 'http://2017.alamidwinter.org/', venue: '', location: 'Atlanta, GA', dates: 'January 20 - 24, 2017', booth: '')
Conference.create(month: [{id: '2', name: 'February'}], conference: 'Eastern Sociological Society', link: 'http://www.essnet.org/annual-meeting/overview/', venue: 'Sheraton Philadelphia Downtown', location: 'Philadelphia, PA', dates: 'February 23 - 26, 2017', booth: 'Space #5 (Liberty A - Ballroom level)')
Conference.create(
	month: [{id: '4', name: 'April'}], 
	conference: 'Organization of American Historians', 
	link: 'http://www.oah.org/meetings-events/2017/', 
	venue: '', 
	location: 'New Orleans, LA', 
	dates: 'April 6 - 9, 2017', 
	booth: 'Booth #118')
Conference.create(
	month: [{id: '4', name: 'April'}], 
	conference: 'Association for Asian American Studies', 
	link: 'http://aaastudies.org/2017-aaas-conference/', 
	venue: '', 
	location: 'Portland, OR', 
	dates: 'April 13 - 15, 2017', 
	booth: 'Booth #TBD')
Conference.create(
	month: [{id: '5', name: 'May'}], 
	conference: 'Book Expo America', 
	link: 'http://www.bookexpoamerica.com/Show-Info/', 
	venue: '', 
	location: 'New York City, NY', 
	dates: 'May 31 - June 2, 2017', 
	booth: '')
Conference.create(
	month: [{id: '6', name: 'June'}], 
	conference: 'Association of American University Presses', 
	link: 'http://www.aaupnet.org/events-a-conferences/annual-meeting/aaup-2017', 
	venue: 'JW Marriott Austin', 
	location: 'Austin, TX ', 
	dates: 'June 11 - 13, 2017', 
	booth: '')
Conference.create(
	month: [{id: '6', name: 'June'}], 
	conference: 'American Library Association', 
	link: 'http://2017.alaannual.org/', 
	venue: 'JW Marriott Austin', 
	location: 'Chicago, IL', 
	dates: 'June 22 - 27, 2017', 
	booth: '')
Conference.create(
	month: [{id: '8', name: 'August'}], 
	conference: 'American Sociological Association', 
	link: 'http://www.asanet.org/annual-meeting-2017', 
	venue: '', 
	location: 'Montreal, Quebec, Canada', 
	dates: 'August 12 - 15, 2017', 
	booth: 'Booth #TBD')
Conference.create(
	month: [{id: '8', name: 'August'}], 
	conference: 'American Poltical Science Association', 
	link: 'http://www.asanet.org/annual-meeting-2017', 
	venue: 'Hilton San Francisco Union Square', 
	location: 'San Francisco, CA', 
	dates: 'August 31 - September 3, 2017', 
	booth: 'Booth #711')
Conference.create(
	month: [{id: '9', name: 'September'}], 
	conference: 'American Poltical Science Association', 
	link: 'http://www.asanet.org/annual-meeting-2017', 
	venue: 'Hilton San Francisco Union Square', 
	location: 'San Francisco, CA', 
	dates: 'August 31 - September 3, 2017', 
	booth: 'Booth #711')
Conference.create(
	month: [{id: '11', name: 'November'}], 
	conference: 'American Studies Association', 
	link: 'https://www.theasa.net/annual-meeting/years-meeting', 
	venue: 'Hyatt Regency Chicago', 
	location: 'Chicago, IL', 
	dates: 'November 9 - 12, 2017', 
	booth: 'Booth #TBD (Crystal Ballroom)')
Conference.create(
	month: [{id: '11', name: 'November'}], 
	conference: 'The American Society of Criminology', 
	link: 'https://www.theasa.net/annual-meeting/years-meeting', 
	venue: 'Philadelphia Marriott Downtown', 
	location: 'Philadelphia, PA', 
	dates: 'November 15 - 17, 2017', 
	booth: 'Booth #TBD')






