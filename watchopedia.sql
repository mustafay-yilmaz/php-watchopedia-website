-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: sql101.epizy.com
-- Üretim Zamanı: 23 May 2023, 16:37:32
-- Sunucu sürümü: 10.4.17-MariaDB
-- PHP Sürümü: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `epiz_34257026_watchopedia`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `accounts`
--

CREATE TABLE `accounts` (
  `accounts_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(128) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `usermode` int(1) NOT NULL DEFAULT 0,
  `description` text NOT NULL DEFAULT 'Hakkında bir şeyler yaz...'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `accounts`
--

INSERT INTO `accounts` (`accounts_id`, `username`, `password`, `firstname`, `lastname`, `email`, `birthdate`, `usermode`, `description`) VALUES
(328, 'wassapman', '07ab59f4731b0790d0acfded6a52d2c53e7e3c6a1e241f6dfe3a41f3072e07fb', 'Mustafa Yüksel', 'Yıldız', 'musti-okur@hotmail.com', '0000-00-00', 1, 'Şuan video çekiyorum'),
(337, '20360859021', '07ab59f4731b0790d0acfded6a52d2c53e7e3c6a1e241f6dfe3a41f3072e07fb', 'Mustafa', 'Yıldız', '20360859021@ogrenci.btu.edu.tr', '0000-00-00', 0, 'merhaba'),
(340, 'musti', '3c9d4d0799b7f67ba857ee967a04babebc87e5e4bc6687639ecd09a528feb501', 'mustafa', 'deniz', 'mustafa@hotmail.com', '2023-05-28', 0, 'Hakkında bir şeyler yaz...'),
(341, 'user', 'e606e38b0d8c19b24cf0ee3808183162ea7cd63ff7912dbb22b5e803286b4446', 'adsa', 'adas', 'adsaa@asdadsa.com', '2023-05-25', 0, 'Hakkında bir şeyler yaz...');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `movies`
--

CREATE TABLE `movies` (
  `movie_id` bigint(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` year(4) NOT NULL,
  `score` float NOT NULL DEFAULT 0,
  `rank` int(10) NOT NULL,
  `img` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `trailer` varchar(100) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `usercount` int(50) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `movies`
--

INSERT INTO `movies` (`movie_id`, `name`, `date`, `score`, `rank`, `img`, `description`, `trailer`, `genre`, `usercount`) VALUES
(8, 'Esaretin Bedeli', 1994, 3.5, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0017/64/thumb_1663770_movie_default.webp', 'Genç ve başarılı bir banker olan Andy Dufresne, karısını ve onun sevgilisini öldürmek suçundan ömür boyu hapse mahkum edilir ve Shawshank hapishanesine gönderilir. İşkence, tecavüz, dayak dahil her türlü kötü koşulun hüküm sürdüğü hapishane koşullarında, Andy’nin hayata bağlı ve her daim iyi bir şeyler bulma çabası içindeki hali, çevresindeki herkesi çok etkileyecektir. Bir süre sonra parmaklıkların arkasında bile özgür bir yaşam olabileceğine bütün mahkumları inandırır. Bu mahkumlardan biri olan Red ve Andy, unutulmaz bir dostluk kurarak hapishaneyi bambaşka bir yer haline getirirler. Stephen King’in korku türü haricindeki ender romanlarından birinin uyarlaması olan film, gösterime çıktığı yılda inanılmaz bir başarı elde etmiş ve gişe rekorları kırmıştı.', 'n9hGG64B4CY', 'Dram', 2),
(9, 'The Godfather (BABA)', 1972, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0016/17/thumb_1516767_movie_default.webp', 'Don Corleone’nin kızı Connie’nin düğününde, ailenin en küçük oğlu ve bir savaş gazisi olan Michael babasıyla barışır. Bir suikast girişimi, Don’u artık işleri yönetemeyecek duruma düşürünce, ailenin başına Michael ve ağabeyi Sonny geçerler. Danışmanları Tom Hagen’in de yardımlarıyla diğer ailelere savaş açan Corleone ailesi, eski moda yöntemleri de değiştirmeye başlar.Mario Puzo’nun çok satan kitabından Puzo ve yönetmen Francis Ford Coppola tarafından sinemaya uyarlanan eser, 40’lar ve 50’lerin Amerika’sında, bir İtalyan mafya ailesinin destansı öyküsünü konu alıyor.', '76h6LCVk_Gk', 'Polisiye, Dram', 0),
(11, 'Kara Şövalye', 2008, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/68/thumb_1367047_movie_default.webp', 'Batman Başlıyor ile Batman serisine yeni bir soluk getiren ve son iki filmle yakalanan ciddiyetsiz havayı değiştirip farklı bir kahraman filmine imza atan Christopher Nolan devam filmi Kara Şövalye’nin de yönetmen koltuğunda.  Batman, Teğmen Gordon ve Savcı Harvey Dent işbirliği sayesinde Gotham sokakları suç örgütlerinden yavaş yavaş temizlenmeye başlamıştır.  Bu başarılı ortaklığın meyve vermeye başladığı sıralarda ortaya çıkan yeni suç dehası Joker’in dehşet saçmaya başlamasıyla Gotham, karmaşanın hakim olduğu eski günlerine dönme tehlikesiyle karşı karşıya kalır. Tekrardan şehri Joker’in yarattığı suç ve dehşet ortamından arındırmak zorunda kalan Batman, varlığının suçluların azalmasına yardımcı mı olduğu, yoksa var olduğu için mi yeni suçluların ortaya çıktığı konusunda kendisini sorgulamaya başlayacaktır.  Christian Bale’in tekrardan Batman/Bruce Wayne olarak kamera karşısına geçtiği filmde efsanevi Joker rolü Jack Nicholson’dan Ocak ayında hayatını kaybeden Heath Ledger’a devredildi. Açılışında Ledger’ın anısına yapımcılar tarafından bir de anma yazısı yayınlanacak. Ayrıca izleyiciler, destekleyen salonlarda, açılışı da dahil olmak üzere 6 sahnesi IMAX kamerasıyla çekilen filmi izleyerek IMAX deneyimini yaşayabilecekler.', 'EXeTwQWrcwY', 'Aksiyon, Polisiye', 0),
(12, 'Baba 2', 1974, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/46/thumb_1345466_movie_default.webp', 'Genç Vito Corleone, Amerika’ya yeni gelmiştir. 1917 yılında, New York şehri’nin yerel mafyalarından birinin liderini öldürünce saygınlık kazanır ve korkulan biri haline gelir.\r\n\r\nBu arada, 50 yıl sonra, Michael Corleone, Washington’da senato komitesine aile işleriyle ilgili ifade vermektedir.\r\n\r\n1972 yapımı ilk filmin devamı niteliğinde, yine yazar Mario Puzo ve yönetmen Francis Ford Coppola’nın yaratıcı ellerinden çıkmış usta işi bir yapım. Eleştirmenler tarafından, önceki filmden daha başarılı bulunan az sayıdaki devam filminden biri olarak kabul ediliyor.', 'tF_v4ZZkQWE', 'Polisiye, Dram', 0),
(13, '12 Kızgın Adam', 1957, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/68/thumb_1367021_movie_default.webp', 'Latin kökenli bir Amerikalı genç babasını bıçaklayarak öldürdüğü gerekçesiyle birinci dereceden cinayetle suçlanır ve mahkeme önüne çıkarılır. Sanığın kaybettiğini söylediği bir bıçak cinayetin işlendiği odada bulunmuştur, mahkemeye sunduğu savunma oldukça zayıftır ve kurbanın çığlıklarını ve katilin kaçışını duyduklarını söyleyen pek çok tanık vardır, dolayısıyla dava kısa sürecek gibi görünmektedir. Sanık suçlu bulunduğu taktirde idama mahkum edilecektir.  Jüri üyeleri kararı açıklamak için odalarından döndüklerinde şaşırtıcı olmayan sonuçlar ortaya çıkar: oniki jüri üyesinden onbiri genç adam hakkında \"suçlu\" hükmünde bulunmuşlardır. Sekiz numaralı jüri üyesi Davis \"suçsuz\" hükmü yönünde oy veren tek üyedir.  Davis’in jüri üyelerini kararlarını tekrar düşünmeye ve eldeki kanıtları tekrar değerlendirmeye ikna etmeye çalışması esnasında her jüri üyesinin \"suçlu\" kararı vermesinin arkasında aralarında yabancı düşmanlığı, kanuna aşırı güven, çoğunluğa uyma, geçmişle hesaplaşma gibi farklı kişisel sebepler olduğu ortaya çıkar.', '_13J_9B5jEk', ' Polisiye, Dram ', 0),
(14, 'Dövüş Kulübü', 1999, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0017/39/thumb_1638614_movie_default.webp', 'Bir araba şirketinde çalışan genç ve profesyonel baş karakter geceleri uyuyamamaktadır. Kahramanımız, bir terapi grubuna katılarak kendini onlardan biri gibi gösterir. Bu durum ona içsel bir rahatlama vermektedir. Bu gruplara katılmak hayatının bir parçası olmuşken, önüne Marla Singer engeli çıkar ve Marla’yla aynı gruplara katılmamak üzere anlaşırlar. Bir iş gezisi dönüşü kahramanımızın evi patlamada yanar. Daha sonraları evinde kalacağı bir arkadaşı olan sabun satıcısı Tyler Durden’ı çağırır ve barda başlayan dövüş serüveni bir kulübe dönüşerek sokaklara yayılır.', 'qtRKdVHc-cE', 'Dram', 0),
(15, 'Forrest Gump', 1994, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0010/26/thumb_925450_movie_default.webp', 'Forrest Gump, zeka seviyesi 75 olan bir erkeğin hayatını ele alıyor. Zeka seviyesi nedeni ile devlet okullarına girmekte bile zorlanan Forrest Gump zamanla akla mantığa uymayan başarılara imza atıyor. Her ne kadar zeka seviyesi düşük olsa da fiziksel olarak son derece sağlam olan Forrest Gump, zamanla gelişen olaylar zincirinde bizi hayal edemeyeceğimiz bir dünyaya götürüyor.', 'XHhAG-YLdk8', 'Forrest Gump, zeka seviyesi 75 olan bir erkeğin ha', 0),
(16, 'The Matrix', 1999, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/53/thumb_1352122_movie_default.webp', 'İki türlü gerçeklik vardır: biri yaşanan, öteki yaşamın ötesinde olan. Bunlardan biri rüya, öteki de Matrix’dir. Neo, umutsuz bir çaba ile Matrix hakkındaki gerçeği araştırıyor. Tam olarak kavrayamadığı şeylerin yaşamını kontrol ettiğini biliyor. Matrix Nedir? Neo, efsaneler aracılığı ile tanıdığı ve son derece tehlikeli bir adam olan Morpheus’un gerçeği bildiğine inanmaktadır. Bir gece Neo, kendisini başka bir dünyaya götürebilecek güzel yabancı Trinity ile tanışır. Bu kızın götüreceği dünyada, Morpheus’u bulacak ve Matrix hakkında bir şeyler öğrenecektir.', 'vKQi3bBA1y8', 'İki türlü gerçeklik vardır: biri yaşanan, öteki ya', 0),
(18, 'Sıkı Dostlar', 1990, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/67/thumb_1366013_movie_default.webp', 'Gerçek bir hayat hikayesinden uyarlanan filmde Henry Hill adında bir gangster, Jimmy Conway ve Tommy De Vito adlı iki arkadaşıyla birlikte bir soyguna kalkışır. Gözleri daha yukarda olan iki arkadaşı soyguna katılan diğerlerini öldürür ve mafya içinde yükselmeye başlarlar. Bu durum Henry’i olumsuz etkilemiştir ve bu konuda birşeyler yapması gerekmektedir.  Büyük usta Martin Scorsese’nin başyapıtlarından biri olan Goodfellas, 1991 yılında 6 dalda Oscar’a aday gösterilmiş, en iyi yardımcı erkek oyuncu dalında Joe Pesci’ye ödül kazandırmıştı.', 'qo5jJpHtI1Y', 'Biyografi Polisiye Dram', 0),
(19, 'Guguk Kuşu', 1975, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/68/thumb_1367006_movie_default.webp', 'Randle P. McMurphy tutuklu olduğu cezaevinde çalışmaktan kurtulmak için deli taklidi yapan bir mahkumdur. Tavırları cezaevi otoritesinin gözüne batmaya başlayınca bir süre sonra teşhis için akıl hastanesine gönderilir ve orada kalmasına karar verilir.  Randle hastanede de kurumun kurallarına uymaması ve arkadaşları ile olan ilişkileri ile dikkatleri üzerine çeker. Kısa süre içinde soğuk tavırlı, suratsız, otoriter bir görevli olan hemşire Ratched Randle’ı yakın takibe alır ve her hareketini izlemeye başlar.  Rathced ve Randle gibi birbirlerine son derece zıt iki karakterin arasındaki gerilim Randle’ın yakın arkadaşları için planladığı çeşitli faaliyetlerle onların iyileşmesine yardımcı olmaya başlamasıyla daha da artacaktır...  Guguk Kuşu, önceki filmlerinde de sosyal eleştirilerini metaforik anlatılarla sinemaya aktaran Milos Forman’ın en önemli yapıtlarından biri. ', 'OXrcDonY-B8', 'Dram', 0),
(20, 'Yedi', 1995, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/74/thumb_1373604_movie_default.webp', 'https://www.sinefil.com/cdn-a1-p/movie/0014/74/thumb_1373604_movie_default.webp', 'znmZoVkCjpI', ' Polisiye, Dram ', 0),
(21, 'Şahane Hayat ', 1946, 5.5, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/67/thumb_1366895_movie_default.webp', 'George Bailey isimli işadamı üstüste gelen olaylar nedeniyle intiharın eşiğine gelmiş ve bir köprünün kıyısında sallanmaya başlamıştır. O sırada \"koruycu melek\" Clarence adamın yanında belirir ve iyi niyetli Bailey’i vazgeçirmek için ona küçük bir oyun oynamaya karar verir.', 'ewe4lg8zTYA', ' Dram, Aile ', 2),
(22, 'Kuzuların Sessizliği', 1991, 5, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/67/thumb_1366590_movie_default.webp', 'Akademiden başarıyla mezun olmuş genç FBI ajanı Clarice Starling, kurbanlarının derilerini yüzen sapık bir katilin elinden bir kadını kurtarmaya çalışır. Clarice, katila ulaşmak için başka bir psikopat olan ünlü doktor Hannibal Lecter ile yakınlaşır. Lecter’dan bilgi alabilmesi için önce onun güvenini kazanması gerekmektedir.  1992 yılında 7 dalda Oscar’a aday olan film, yönetmeni ve başrol oyuncularına altın heykelciği getirirken en iyi film ve en iyi senaryo uyarlaması dalında da ödüle hak kazanmıştı.', '6iB21hsprAQ', ' Polisiye, Dram', 2),
(23, 'Tanrı Kent', 2002, 7.5, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0016/87/thumb_1586017_movie_default.webp', '1960’larda inşa edilmiş ve 80’lerin başında Rio De Janeiro’nun en tehlikeli mahallelerinden birine dönüşmüş, sosyal konutlardan oluşan “Tanrıkent”te organize suçun destansı tarihi. Film 60’larda iki kenar mahalle çocuğunun seçtiği iki ayrı yolu takip eder.Fotoğrafçı olma hayalleri kurar ama fotoğraf makinesi alacak parası yoktur. Öte yandan, Küçük Ze çocukluğundan beri tam bir suçlu özellikleri taşır; acımasız, akıllı ve hırslıdır. Küçük yaşta planladığı bir genelev soygunu sırasında öldürmenin tadını alır, gün geçtikçe bu konudaki iştahı giderek artar. 70’lerde Ze, sakin ve becerikli Bee’nin desteğiyle, favela’nın (mahallenin) uyuşturucu ticareti üzerindeki kontrolünü sağlamlaştırır. 80’lerin başlarında “Tanrıkent”i çetelerarası savaş sarar ve amansız genç suçlulardan oluşan yeni bir kuşak çıkıp “eskilerin” yerini almaya çalışırken, artık bir fotoğraf makinesine sahip olan Rocket, onu bu bitmek tükenmek bilmez katliam döngüsünü belgelemede kullanır.', 'OObRT9bnH2s', ' Polisiye, Dram', 2),
(24, 'Yıldızlararası ', 2014, 5, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0016/17/thumb_1516773_movie_default.webp', 'Film, Kip S. Thorne’nun evrende \" solucan deliklerinin \" gerçekten var olduğu ve bu sayede zamanda yolculuğun mümkün olabileceği teorisinden ilham alınarak yaratılmıştır.  Filmin hikayesi bir grup cesur kaşifin bu deliklerden birine gitmeye karar vermesi sonrasında gelişiyor. Bu bilinmeyen boyuta yapacakları yolculukta, birlikte kalabilmek için verdikleri mücadele her birini ayrı zorluklarla karşılaştırıyor.', '2LqzF5WauAw', ' Macera, Dram ', 2),
(25, 'Yeşil Yol', 1999, 6, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0017/10/thumb_1609388_movie_default.webp', 'Film, yaşlı Paul Edgecomb’un arkadaşı Elanie Connelly’ e, Cold Mountain Hapishanesi’nde gardiyan olduğu uzun yıllar boyunca yaşadıklarını anlatmasından oluşuyor. Edgecomb, hikayesini anlatırken bir huzurevinde yaşamaktadır ve hapishanedeki görevinin üzerinden yıllar geçmiştir. Hapishanedeki hücrelerinden alınan idam mahkumlarının elektrikli sandalyenin bulunduğu ölüm odasına giderken yürüdükleri, bir millik yeşil yolda yaşananlara her defasında tanık olan Edgecomb, ömrü boyu unutamayacağı olaylara tanık olur. ', 'Bg7epsq0OIQ', ' Polisiye, Dram', 1),
(26, 'Yıldız Savaşları ', 1977, 3, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0017/34/thumb_1633950_movie_default.webp', 'Yıldız Kruvazörü Diplomatik görevle yolalan Korvet’i kıstırır. Bu küçükgemide aslında Senato üyesi olan ancak asilerle işbirliği içinde de bulunan, Eski Cumhuriyet’in savunucularından Prenses Leia da bulunmaktadır. İmparatorluk gemisinde ise hem Leia’yı hem de asi casusların kaçırmış olduğu \"Ölüm Yıldızı’nın planlarını\" geri isteyen kötü Lord Vader.. Bu arada sevimli droid R2-D2 ve ortağı C3-PO ise Tatooine gezegeninde, tesadüfler eseri Luke Skywalker isimli genç pilot adayına satılırlar. Droidlerin amacı yüklü olan mesajı Obi Wan Kenobi isimli yaşlı bir keşişe iletmektir.', 'WcfYsJ1FRWU', 'Aksiyon, Macera, Bilim Kurgu', 1),
(27, 'Geleceğe Dönüş', 1985, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/67/thumb_1366438_movie_default.webp', '1985 yılındayız. Marty biraz fırlama, söz dinlemez ve delidolu bir genç, kısaca dönemin tipik bir Amerikan yeni yetmesidir. Çılgın bir bilim adamı olarak niteleyebileceğimiz Dr. Brown ile olan dostluğunun hayatını değiştereceğinden habersizdir: zira dahi bilim adamı bir zaman makinesi icad etmiştir!  Dönemin özellikle tasarımıyla öne çıkan otomobillerinden olan bir DeLorean’ın içine gizlenmiş olan icat, Marty’yi yanlışlıkla 50’lere geri götürür. Sorumsuz delikanlı bu naif Amerikan kasabasında bir kazaya yol açar ve müstakbel anne ve babasının tanışmasına engel olur. Böylece kendisi de hiç doğmamış olacağı için bu durumu düzeltmeye koyulur. Ama hayat sandığından daha karmaşıktır ve sorumluluk kelimesinin anlamını öğrenmek zorundadır.  80’li yılların en çok akılda kalan filmlerinden biri olan Geleceğe Dönüş, bünyesinde dönemin bir çok popüler nesne, kişi ve temasını barındıran, soluk soluğa izlenen bir film. Yönetmen ve senarist Robert Zemeckis’in kariyerindeki en parlak icat belki de!', 'WRrCVyT09ow', ' Macera, Komedi, Bilim Kurgu', 0),
(28, 'Ruhların Kaçışı ', 2001, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/67/thumb_1366138_movie_default.webp', '10 yaşında küçük bir kız olan Chihiro, ailesiyle birlikte bir tünelden geçerken kaybolur ve gizli bir dünyaya girer. Burada ailesi garip bir değişim geçiren Chihiro, kendisini güçlü bir cadı tarafından yönetilen garip bir kasabada bulur. Cadı tarafından dünyaya dönmesi engellenen Chihiro, burada cadının kurbanı olan pek çok garip ruha ve yaratığa rastlar.  Prenses Mononoke’nin yaratıcısı Hayao Miyazaki’nin animasyon şaheseri olan Ruhların Kaçışı, önce 52. Berlin Uluslarası Film Festivali’nde Altın Ayı’yı, ardından 75. Akademi Ödülleri’nde En İyi Animasyon Oscarı’nı kazanmayı başarmış bir yapım. Ayrıca film, Japon sinema tarihinin en başarılı filmi olarak da kırılması güç bir rekorun sahibi.', '6az9wGfeSgM', ' Animasyon, Macera', 0),
(29, 'Piyanist ', 2002, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0016/15/thumb_1514286_movie_default.webp', 'Wladyslaw Szpilman, Polonyalı başarılı bir piyanisttir. İkinci Dünya Savaşı’nda Almanların Polonya’yı işgal etmesiyle hayatı kabusa döner. Musevi olduğu halde şans eseri toplama kamplarına gitmekten kurtulur ve Varşova’nın gettolarında yaşamaya başlar. Acı ve sefalet dolu yaşamı, bir gün bir Alman subayının ona yardıma gelmesi ve onu oradan kurtarmasıyla değişir. ', 'BFwGqLa_oAo', 'Biyografi, Dram', 0),
(30, 'Parazit', 2019, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0015/46/thumb_1445106_movie_default.webp', 'Parasite, birbirinden kişilik olarak tamamen farklı olan iki aileyi konu ediniyor. Ailelerden Ki-taek ailesin tamamen işsiz olup geçimlerini parklarla ilgilenerek geçirmektedirler. Ancak bir gün hiç beklenmedik bir olaya karışmalarının ardından hiçbir şey eskisi gibi olmayacaktır.', '5xH0HfJHsaY', ' Dram, Gerilim ', 0),
(31, 'Sevginin Gücü', 1994, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0017/52/thumb_1651131_movie_default.webp', 'Kusursuz bir katil. Masum bir kız. Birbirlerinden başka kaybedecek hiçbir şeyleri kalmamış. Erkek sessizce hareket ediyor. Duygusuzca öldürüyor. İz bırakmadan yok oluyor. Zayıf noktasını ise sadece... 12 yaşındaki bir kız biliyor. 12 yaşında New York’ta yaşayan bir kız olan Mathilda üvey ailesinin yanında sevimsiz bir yaşamı paylaşmaktadır. Babası, iki taraflı oynayan bozulmuş polis Norman Stansfield için uyuşturucuları saklamaktadır. Mathilda’yı kaçıp gitmekten tek alıkoyan küçük erkek kardeşidir. Bir gün, Stansfield ve adamları sudan bir sebepten, tüm ailesini katlettikleri zaman, o sırada alışverişte olan Mathilda şans eseri hayatta kalır ve en çok ihtiyacı olduğu sırada Leon’un dairesine saklanarak kendini kurtarır. 12 yaşındaki kız, kısa süre içinde Leon’un sıradışı mesleğini keşfedecek ve küçük kardeşinin intikamını almak için bu profesyonel katilden yardım isteyecektir. Babalık yapmak işlerinde ve arkadaşlıkta olabildiğine deneyimsiz olan Leon Mathilda’yı beladan uzak tutmak için ümitsizce çabalar. Sonunda bir katil, bozulmuş bir polis ve masum küçük kızın ekseninde dönen hikaye doruğa çıkarak yönetmen Luc Besson’un en iyi filmlerinden birinin öyküsünü oluşturur.', 'jawVxq1Iyl0', 'Aksiyon, Polisiye ', 0),
(32, 'Gladyatör', 2000, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/67/thumb_1366703_movie_default.webp', 'General Maximus’un imparatorluk içerisinde yükselmesi karşısında kıskançlığa kapılan tahtın varisi Commodus, general ile ailesinin derhal öldürülmesi emrini çıkarır. Ölümden zor kurtulan Maximus’u artık kölelik yaşamı beklemetedir. Arenaya gönderilerek orada bir gladyatör olarak eğitilir. Yıllar sonra Roma’ya geri döndüğünde tek bir amacı vardır. Yeni İmparator Commodus’u öldürerek karısıyla oğlunun katledilmesinin intikamını almak... Maximus arenalarda geçen yılları boyunca çok önemli bir gerçeği öğrenmiştir. İmparatorun gücü ne kadar fazla olursa olsun halkın iradesi ondan çok daha güçlüdür ve intikamını alabilmenin tek yolu imparatorluğunun en büyük kahramanı olabilmekten geçmektedir. Roma’daki büyük Colloseum Arenası’nın tam ortasında durmakta olan Romalı gladyatör, bakışları imparatorun locasına dikilmiş halde kararı beklemektedir. Yaşamın ve ölümün gücünü elinde bulunduran imparatorun baş parmağı havaya kalkmış durumdadır. Ucunun aşağıya dönmesiyle birlikte imparatorluğun acımasız yasaları işleyecek ve yendiği rakibini öldürmesi için gladyatöre gerekli sinyali vermiş olacaktır. Richard Harris gibi emektar oyuncuları da bünyesinde barındıran filmin çekimleri sırasında hayatını kaybeden Oliver Reed’in eksik planları bilgisayar hileleriyle tamamlanmış.', 'TcYIqlBihW4', ' Aksiyon, Macera ', 0),
(33, 'Prestij ', 2006, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0016/17/thumb_1516766_movie_default.webp', 'Rupert Angier ve Alfred Borden, genç yaşlarda karşılaştıkları ilk andan itibaren dostça bir rekabetin içinde yer alan iki sihirbazdır. Zaman içinde gelişen yetenekleri ile birlikte aralarındaki rekabet de büyür. Biri alışılmadık ve ilginç olan bir gösteri yaptıktan sonra diğerinin bu ilizyondaki sırları keşfetmek için giriştiği çaba şeklinde yıllarca devam eden bu rekabet, bir noktadan sonra hiç beklenmedik yerlere varacak ve çevrelerindeki herkes dahil kendilerini de büyük bir tehlikenin içine atacaktır.  Genç yaşına rağmen Akıl Defteri ve Insomnia gibi etkileyici filmler ile beğeni toplayan yönetmen Christopher Nolan, Christian Bale, Hugh Jackman, Scarlett Johansson ve Michael Caine gibi ağır toplardan oluşan bir kadro ile sihir dünyasına el atıyor. ', 'ELq7V8vkekI', 'Dram, Gizem', 0),
(34, 'Can Dostum ', 2011, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0017/66/thumb_1665966_movie_default.webp', 'Film, iki erkeğin arkadaşlığı kadar, iki karşıt dünya görüşünün de komik hikayesidir. Bu olağandışı arkadaşlık hikayesi, toplumsal olarak keskin karşıtlıklardan muzdarip bugünün Fransasının da bir portresini çizmeye çalışır. Geçirdiği bir kazadan sonra felç olan zengin aristokrat Philippe, cezaevinden henüz salınmış genç göçmen Drissi bakıcısı olarak işe alır.  İki farklı hayat tarzının çarpışmasının ve zamanla çılgın bir arkadaşlığa dönüşünün ve böylece dokunulmaz hale gelen iki erkeğin hikayesini anlatan iki yönetmenliDokunulmazlar, film çevrelerinde ırkçılık, fiziksel engelli olmak ve yoksulluk gibi konulara da değinmesiyle yılın en iyi komedi filmi olarak alkışlandı.', '_q43vIEOt68', ' Biyografi, Komedi ', 0),
(35, 'Yaratık', 1979, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0016/31/thumb_1530591_movie_default.webp', 'Kurtarma gemisi Nostromo, uzun görevinden Dünya’ya dönerken bir yakındaki bir gezegenden bir yardım sinyalı alır. Önce kararsız kalan mürettebat, sonunda yardım etmeye karar verir. Gezegene yapılan zorlu bir inişten sonra bir ekip arama çalışmaları için bölgeyi araştırırlar. Girdikleri bir mağarada bilinmeyen bir ırkın yumurtalarını bulurlar.  Aynı sırada gemi bilgisayarı aldıkları sinyalin bir yardım sinyali değil uyarı olduğunu deşifre eder. Yumurtalardan biri kırıldığında ekip nasıl bir belaya bulaştığını farkeder...  Ridley Scott’ın başlattığı Alien serisi gişelerde büyük başarı yakalamış, günümüze dek toplam 4 film çekilmişti. Halen 5. film ile ilgili çalışmalar sürmekte.  1980 yılında en iyi sanat yönetimi ve en iyi efekt dalında Akademi Ödülleri’ne aday olan film, efekt dalında bu ödüle layık görülmüştü.', 'LjLamj-b0I8', ' Korku, Bilim Kurgu ', 0),
(36, 'Akıl Defteri', 2000, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/67/thumb_1366296_movie_default.webp', 'Leonard Shelby (Guy Pearce) ucuz otel odalarında konaklayan, sadece nakit para kullanan ama şık giysiler giyen ve bir Jaguar kullanan, işadamı görüntüsünde biridir. Fakat aslında hayatını karısına tecavüz edip öldüren kişiyi bulmaya adamıştır.  Leonard’ın bu yolda ciddi bir engeli vardır, çok ender rastlanan ve tedavi edilemeyen bir tür hafıza kaybı. Her ne kadar hayatının \"kaza\"’dan önceki dönemlerini hatırlayabiliyorsa da bazen 15 dakika öncesinde nereye gittiğini ve nerede olduğunu unutabilmektedir.', '0vS0E9bBSL0', ' Gizem, Gerilim ', 0),
(37, 'Vol-i', 2008, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0016/17/thumb_1516158_movie_default.webp', 'Harap edilmiş, kirli ve kuru bir dünyadayız. Yüz yıllar önce bütün insanlar, çevrenin kesintisiz suistimali yüzünden yaşanamaz hale gelen dünyayı BnL isimli bir mega şirketin inşa ettiği uzay gemileri ile terk etmiştir.  Bu dünyayı temizlemekle yükümlü robotların halen çalışan tek üyesi Wall-Enin (Waste Allocation Load Lifter Earth class) çöp toplamak ve düzenlemekle dolu monoton iş gününü izliyoruz. Geçen 700 sene içinde kendine ait bir kişilik üreten Wall-E, günün sıkıcılığını ilginç bulduğu eşyaları toplayarak ve tek arkadaşı hamam böceği ile oynayarak dindirir.  Wall-E, işten dönünce akşamlarını Hello Dollynin VHS kopyasını izleyerek ve umutlu gözlerle (veya dürbünlerle) uzaya bakarak geçirmektedir. Amacı, bir gün başka bir robota aşık olmak ve filmde gördüğü el tutuşma sahnesini o robotta denemektir.', '_kslEYbMr1g', 'Animasyon, Macera ', 0),
(38, 'Soysuzlar Çetesi ', 2009, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0016/17/thumb_1516780_movie_default.webp', 'Inglorious Basterdsın konusu, Alman işgali altındaki Fransada başlar. Çok sevdiği ailesinin, Nazi Albay Hans Landanın (Christoph Waltz) tarafından katledilmesine tanıklık eden Shosanna Dreyfus (Melanie Laurent) adlı kadın, katliamdan kılpayı kurtularak Parise kaçar. Orada sinema salonu sahibi ve işletmecisi olarak yeni bir kimlik edinir.  Aynı günlerda Avrupanın başka bir köşesinde Teğmen Aldo Raine (Brad Pitt), Yahudi askerler tarafından kurulan bir grubu düşmana karşı misilleme yapma amacıyla organize etmektedir. Düşmanları tarafından Piçler yakıştırmasıyla bilinen Raineın grubu, Nazi Almanyasının önde gidenlerine zarar verme misyonunu üstlenmiştir.  Bu amaçla, Alman sinema oyuncusu ve gizli ajan Bridget Von Hammersmark (Diane Kruger) ile işbirliği yaparlar. Shasoannanın kendi intikamını alma planlarını yaptığı bir sinema salonunun çatısı altında hepsinin kaderleri kesişecektir.', 'sE8hc4gVyGo', ' Macera, Dram ', 0),
(39, 'Kara Şövalye Yükseliyor', 2012, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/77/thumb_1376497_movie_default.webp', 'Sekiz yıl sonra... Terörist lider Bane, Gotham şehrinin güvenliğini tehlikeye atarken, Batman efsanesini yok etmek için Kedikadın Selina Kyle’dan da yardım almıştır.  Christopher Nolan yorumlu Batman efsanesinin sonu gelirken, başrol Bruce Wayne/Batman olarak yine Christian Bale’i, ezeli düşman Bane olarak Tom Hardy’yi, Selina Kyle rolünde Anne Hathaway’i ve John Blake olarak da Joseph Gordon-Levitt’i seyrediyoruz. Marion Cotillard, Morgan Freeman, Gary Oldman gibi isimler de kadronun ağır topları arasında...  Filmin senaryosunu Christopher Nolan ve Jonathan Nolan beraber kaleme alırken, filmin yapım ekibinde üçlemenin ilk iki filminde beraber çalıştığı isimler var. 3D’ye her zaman ihtiyatlı yaklaşan yönetmen Nolan’ın Başlangıç/Inception’da olduğu gibi yine IMAX formatına özel son teknoloji IMAX kameralarla çekilen Kara Şövalye Yükseliyor filminin müzikleri de Oscarlı müzisyen Hans Zimmer’a ait.', 'GokKUqLcvD8', ' Aksiyon, Dram', 0),
(40, 'İhtiyar Delikanlı ', 2003, 0, 0, 'https://www.sinefil.com/cdn-a1-p/movie/0014/67/thumb_1366048_movie_default.webp', 'Oh Dae-su, bir gün kendisini küçük karanlık bir hücrede bulur. Oraya kimler tarafından ve niye kapatıldığını bilmeyen adamın dünyayla bağlantısı sadece hücresindeki küçük televizyondur. Haberlerde karısının öldürüldüğünü duyunca olayla bağlantısı olduğu düşünüldüğü için kapatıldığını anlar. 15 yıl sonra, serbest bırakılan adam, ailesini öldüren kişileri bulmaya ve kendisini oraya kapatanlardan intikam almaya karar verir. ', 'tAaBkFChaRg', ' Aksiyon, Dram', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mymovielist`
--

CREATE TABLE `mymovielist` (
  `accounts_id` int(11) NOT NULL,
  `movie_id` bigint(100) NOT NULL,
  `myscore` int(10) DEFAULT 0,
  `status` int(10) NOT NULL DEFAULT 0,
  `movie_score` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `mymovielist`
--

INSERT INTO `mymovielist` (`accounts_id`, `movie_id`, `myscore`, `status`, `movie_score`) VALUES
(328, 8, 0, 1, 3.5),
(328, 9, 0, 0, 0),
(328, 11, 0, 0, 0),
(328, 12, 0, 0, 0),
(328, 13, 0, 0, 0),
(328, 14, 0, 1, 0),
(328, 15, 0, 0, 0),
(328, 16, 0, 0, 0),
(328, 18, 0, 0, 0),
(328, 19, 0, 0, 0),
(328, 20, 0, 0, 0),
(328, 21, 6, 1, 5.5),
(328, 22, 7, 1, 5),
(328, 23, 8, 1, 7.5),
(328, 24, 6, 1, 5),
(328, 25, 0, 1, 6),
(328, 26, 0, 0, 3),
(328, 27, 0, 0, 0),
(328, 28, 0, 0, 0),
(328, 29, 0, 0, 0),
(337, 8, 4, 1, 3.5),
(337, 9, 0, 0, 0),
(337, 11, 0, 0, 0),
(337, 12, 0, 0, 0),
(337, 13, 0, 0, 0),
(337, 14, 0, 0, 0),
(337, 15, 0, 0, 0),
(337, 16, 0, 0, 0),
(337, 18, 0, 0, 0),
(337, 19, 0, 0, 0),
(337, 20, 0, 0, 0),
(337, 21, 5, 1, 5.5),
(337, 22, 3, 1, 5),
(337, 23, 7, 1, 7.5),
(337, 24, 4, 1, 5),
(337, 25, 0, 0, 6),
(337, 26, 0, 0, 3),
(337, 27, 0, 0, 0),
(337, 28, 0, 1, 0),
(337, 29, 0, 0, 0),
(338, 8, 0, 0, 3.5),
(338, 9, 0, 0, 0),
(338, 11, 0, 0, 0),
(338, 12, 0, 0, 0),
(338, 13, 0, 0, 0),
(338, 14, 0, 0, 0),
(338, 15, 0, 0, 0),
(338, 16, 0, 0, 0),
(338, 18, 0, 0, 0),
(338, 19, 0, 0, 0),
(338, 20, 0, 0, 0),
(338, 21, 0, 0, 5.5),
(338, 22, 0, 0, 5),
(338, 23, 0, 0, 7.5),
(338, 24, 0, 0, 5),
(338, 25, 0, 0, 6),
(338, 26, 0, 0, 3),
(338, 27, 0, 0, 0),
(338, 28, 0, 0, 0),
(338, 29, 0, 0, 0),
(328, 30, 0, 0, 0),
(337, 30, 0, 0, 0),
(338, 30, 0, 0, 0),
(339, 8, 0, 0, 3.5),
(339, 9, 0, 0, 0),
(339, 11, 0, 0, 0),
(339, 12, 0, 0, 0),
(339, 13, 0, 0, 0),
(339, 14, 0, 0, 0),
(339, 15, 0, 0, 0),
(339, 16, 0, 0, 0),
(339, 18, 0, 0, 0),
(339, 19, 0, 0, 0),
(339, 20, 0, 0, 0),
(339, 21, 0, 0, 5.5),
(339, 22, 0, 0, 5),
(339, 23, 0, 0, 7.5),
(339, 24, 0, 0, 5),
(339, 25, 0, 0, 6),
(339, 26, 0, 0, 3),
(339, 27, 0, 0, 0),
(339, 28, 0, 0, 0),
(339, 29, 0, 0, 0),
(339, 30, 0, 0, 0),
(328, 31, 0, 0, 0),
(337, 31, 0, 0, 0),
(338, 31, 0, 0, 0),
(339, 31, 0, 0, 0),
(328, 32, 0, 0, 0),
(337, 32, 0, 0, 0),
(328, 33, 0, 0, 0),
(337, 33, 0, 0, 0),
(328, 34, 0, 0, 0),
(337, 34, 0, 0, 0),
(328, 35, 0, 0, 0),
(337, 35, 0, 0, 0),
(328, 36, 0, 0, 0),
(337, 36, 0, 0, 0),
(328, 37, 0, 0, 0),
(337, 37, 0, 0, 0),
(340, 8, 3, 1, 3.5),
(340, 9, 0, 0, 0),
(340, 11, 0, 0, 0),
(340, 12, 0, 0, 0),
(340, 13, 0, 0, 0),
(340, 14, 0, 0, 0),
(340, 15, 0, 0, 0),
(340, 16, 0, 0, 0),
(340, 18, 0, 0, 0),
(340, 19, 0, 0, 0),
(340, 20, 0, 0, 0),
(340, 21, 0, 0, 0),
(340, 22, 0, 0, 0),
(340, 23, 0, 0, 0),
(340, 24, 0, 0, 0),
(340, 25, 6, 1, 6),
(340, 26, 3, 1, 3),
(340, 27, 0, 0, 0),
(340, 28, 0, 0, 0),
(340, 29, 0, 0, 0),
(340, 30, 0, 0, 0),
(340, 31, 0, 0, 0),
(340, 32, 0, 0, 0),
(340, 33, 0, 0, 0),
(340, 34, 0, 0, 0),
(340, 35, 0, 0, 0),
(340, 36, 0, 0, 0),
(340, 37, 0, 0, 0),
(341, 8, 0, 0, 0),
(341, 9, 0, 0, 0),
(341, 11, 0, 0, 0),
(341, 12, 0, 0, 0),
(341, 13, 0, 0, 0),
(341, 14, 0, 0, 0),
(341, 15, 0, 0, 0),
(341, 16, 0, 0, 0),
(341, 18, 0, 0, 0),
(341, 19, 0, 0, 0),
(341, 20, 0, 0, 0),
(341, 21, 0, 0, 0),
(341, 22, 0, 0, 0),
(341, 23, 0, 0, 0),
(341, 24, 0, 0, 0),
(341, 25, 0, 0, 0),
(341, 26, 0, 0, 0),
(341, 27, 0, 0, 0),
(341, 28, 0, 0, 0),
(341, 29, 0, 0, 0),
(341, 30, 0, 0, 0),
(341, 31, 0, 0, 0),
(341, 32, 0, 0, 0),
(341, 33, 0, 0, 0),
(341, 34, 0, 0, 0),
(341, 35, 0, 0, 0),
(341, 36, 0, 0, 0),
(341, 37, 0, 0, 0),
(328, 38, 0, 0, 0),
(337, 38, 0, 0, 0),
(340, 38, 0, 0, 0),
(341, 38, 0, 0, 0),
(328, 39, 0, 0, 0),
(337, 39, 0, 0, 0),
(340, 39, 0, 0, 0),
(341, 39, 0, 0, 0),
(328, 40, 0, 0, 0),
(337, 40, 0, 0, 0),
(340, 40, 0, 0, 0),
(341, 40, 0, 0, 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`accounts_id`);

--
-- Tablo için indeksler `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `accounts`
--
ALTER TABLE `accounts`
  MODIFY `accounts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- Tablo için AUTO_INCREMENT değeri `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
