-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Şub 2024, 11:46:06
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `vantae`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL,
  `kulad` varchar(255) NOT NULL,
  `sifre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kulad`, `sifre`) VALUES
(1, 'esra', '$2y$10$43y8NZts3QxGq3qvQJ/hcOOY4SqGMV.tKFZKYh2ZVZDM99zFqnc2.'),
(2, 'ali', '$2y$10$RLK8sgkDO4J/0Ne9BuCBxOkobmcMl4VfQeHTCfYAl03hDiAmv7SeK'),
(3, 'tugba', '$2y$10$x4y4CaQX/olQjyZ0hCLh/eYWfBShSGquu6YAfJleXSCygtqjUitHy');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `postlar`
--

CREATE TABLE `postlar` (
  `id` int(11) NOT NULL,
  `ad` varchar(255) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `icerik` text,
  `resim` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `postlar`
--

INSERT INTO `postlar` (`id`, `ad`, `baslik`, `icerik`, `resim`, `url`) VALUES
(2, '', '18.01.2024', 'bugünlerde biraz.. \r\nçiçekler ve vangogh', 'p1.jpg', 'kolaj'),
(3, '', 'Gözetlenme Hissi', 'Bakış açısını değiştirdim biraz ehehehehe', 'indir.jpg', 'gözetlenme_hissi'),
(4, '', 'Yolculuk Hissi', 'Umutla devam eden bir ressam ha?', 'Van Gogh cartoons.jpg', 'yolculuk_hissi'),
(5, '', 'Arayış', 'Japon kültürüne alışmaya çalışan Bay Vincent', '55.jpg', 'arayış');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimler`
--

CREATE TABLE `resimler` (
  `id` int(11) NOT NULL,
  `url` varchar(100) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `icerik` text,
  `resim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `resimler`
--

INSERT INTO `resimler` (`id`, `url`, `baslik`, `icerik`, `resim`) VALUES
(1, 'yildizli_gece', 'Yıldızlı Gece 11111', 'Haziran 1889\'da, güney Fransa\'daki küçük Saint-Rémy-de-Provence kasabasında, kendisini sanat tarihinde bir dönüm noktası olarak kabul ettirecek bir tablo yaratıldı. \"Yıldızlı Gece\", Post-Empresyonizm ve erken Ekspresyonizm\'in en büyük ressamlarından biri olan Vincent van Gogh\'un ellerinde şekillendi. Sanatçının yoğun duygularını ve zihinsel mücadelelerini renk ve biçim kompozisyonunda yakalayan çarpıcı bir tablo. Başyapıt, van Gogh\'un bir dizi zihinsel çöküntüden sonra emekli olduğu Saint-Paul-de-Mausole akıl hastanesinde kaldığı sırada yaratıldı. Burada, izole durumda, içinden yayılan bir tablo yarattı - tuval üzerine parlak renklerle boyanmış ruhunun bir görüntüsü.\"Yıldızlı Gece\"de göz, dönen yıldızlarla dolu fırtınalı bir gökyüzü ve kadife bir perde üzerinde mücevherler gibi parıldayan parlak bir hilal ile karşılaşır. Aşağıda, sallanan bir selvi ağacının karanlık silüetine yuvalanmış sakin bir köy uzanıyor. Van Gogh tabloyu güney Fransa kırsalında yapmış olsa da, köy güçlü bir şekilde onun Hollanda anavatanını anımsatıyor. Çalkantılı, enerjik gökyüzü ile sessiz, huzurlu köy arasındaki bu karşıtlık, belki de sanatçının umut ve umutsuzluk, gerçeklik ve vizyon arasındaki iç çatışmasını yansıtıyor.', 'yg.jpg'),
(2, 'selvili_bugday_tarlası', 'Selvili Buğday Tarlası', 'Eylül 1889\'da yaratılan post-empresyonist bir yağlı boya tablodur. Fransa\'da Arles yakınlarındaki Saint-Rémy\'deki Saint-Paul-de-Mausole psikiyatri tesisinde kaldığı süre boyunca yaratıldı. Van Gogh\'un aslında kardeşi Theo\'ya verdiği iki çok benzer versiyondan biridir. Burada gösterilen versiyon, 1923\'te Londra\'daki Ulusal Galeri tarafından satın alındı, ikincisi New York\'taki Metropolitan Sanat Müzesi\'nde ve üçüncüsü ise özel bir koleksiyonda.\r\n\r\nVincent van Gogh, yaşamının son yıllarında, Mayıs 1889\'da Saint-Paul-de-Mausole psikiyatri kurumuna kabul edilmesine yol açan şiddetli, psikotik ataklar yaşadı. Aynı yılın Temmuz ve Eylül aylarında tesisin hemen yakınında bir peyzaj motifinden yola çıkarak \"Selvi Ağaçlı Buğday Tarlası\"nın iki versiyonunu çizdi. Şu anda Amsterdam\'daki Van Gogh Müzesi\'nde bulunan kamış kalem çizimini ilk olarak yerinde yaptığı varsayılabilir. Saint-Paul-de-Mausole\'deki atölyesinde, kompozisyonu karakalemle tuval üzerine çizdi ve son olarak yağlı boya ile resmi tamamladı.\r\n\r\nVan Gogh, dünyayı onun üzerinde bıraktığı izlenime göre resmetmiştir. Psikolojik yapısının bu nedenle tarzı üzerinde önemli bir etkisi olmadı. Örneğin, hafif, özellikle parlak renkler, resmin yapıldığı sırada biraz manik olsa da olumlu bir ruh halini gösterir. Van Gogh\'un geç stili, tipik olarak empresyonist, doğal formların hafif bir soyutlaması ile birlikte kaba bir fırça çalışması ile karakterize edilir. Bununla birlikte, kavisli çizgileri, güçlü renkleri ve gerçeklikten giderek daha net sapmalar, Ekspresyonizme yeni başlayan bir geçiş için konuşuyor.', 'sbt.jpg'),
(3, 'arlestaki_sarı_ev', 'Arles\'taki Sarı Ev', 'Paris’te geçirdiği iki yılın ardından 20 Şubat 1888’de Güney Fransa\'daki Arles\'a taşındı. Üç ay kadar kalacağı Carrel Otel-Restoran\'da bir oda kiraladı. Mayısta Café de la Gare’in üst katında bir odaya geçti. Aynı zamanda Lamartine Alanı\'ndaki dört odalı Sarı Ev\'i kiralayarak atölye olarak kullanmaya başladı. Eylül’de tamamen Sarı Ev’e yerleşti.\r\n\r\n \r\n\r\nVan Gogh birlikte çalışmayı düşündüğü ve hayranı olduğu ressam arkadaşı Gauguin’i Arles’a davet eder. Paris’te bir galeriyi yöneten, hem kardeşinin hem Gauguin’in yapıtlarının satışını üstlenen Theo van Gogh, bu isteği yerine getirmek için çalışır. Gauguin, Theo’nun ekonomik yardımının devamı koşuluyla Van Gogh ile kalmayı kabul eder. Van Gogh Sarı Ev’i arkadaşının rahat edeceğini düşündüğü her şeyi yaparak Gauguin için hazırlar. Arkadaşını heyecanla bekleyişi bu dönemde yaptığı resimlere de yansır. Evin duvarlarını ve Gauguin’in odasını süsleyen birçok resim yapar. Bunlar, Van Gogh’un sanatsal yeteneğini göstermek amacıyla yaptığı ve Gauguin ile rekabetinin başlangıcı olacak resimlerdir.\r\nTablo tamamen renkle donatılmış bir duygunun yansımasıydı. Konu yatak odası, motif de dinlenmeydi... Van Gogh, sessizliği, rahatı ve huzuru canlandırmak ister. Ama yatak odasındaki bütün eşyalar güçlü bir perspektif etkisi oluşturacak düzende yerleştirilir. Pencerenin yarı yarıya açık olması, yatık duran mobilyalar, duvarlarda asılı resimler sanki odanın içine doğru sarkıyormuş gibi izlenim vermesi resme, gerilimli bir hava katar. Resimde yalnızlığın, terk edilmişliğin etkisi, isteklere ağır basar. Bu sıradışı perspektif uygulaması sadece Van Gogh\'un betimlemedeki bilinçli kişisel tercihi değildi. Bunda odanın mimari yapısı da etkili olmuştu.', 'se.jpg'),
(4, 'saint-rémyden_manzara', 'Saint-Rémy’den Manzara', '1889-1890 yılları arasında Saint-Rémy-de-Provence\'deki Saint-Paul-de-Mausole Akıl Hastanesi\'nde geçirdiği dönemde yaptığı eserlerden biridir. Bu dönem, Van Gogh\'un zihinsel sağlık sorunlarıyla mücadele ettiği ve bir dizi ünlü eser ürettiği bir zaman dilimidir.Van Gogh\'un post-empresyonist tarzı, bu eserde de belirgindir. Parlak renk paleti, kalın ve dokulu fırça darbeleri, tablonun enerjisini ve hissini artırır.Sanatçının eserlerinde sıkça görülen duygusal derinlik, renklerin ve fırça darbelerinin kullanımıyla birleşir. Van Gogh, doğayı resmederek duygusal ve spiritüel bir ifade arayışındaydı.\r\n\r\n\"Saint-Rémy’den Manzara,\" Van Gogh\'un yoğun ve duygusal bir dönemde yaptığı eserlerden biridir. Bu tablo, sanatçının doğa ve manzara konularına olan ilgisini ve onun karakteristik resim tarzını yansıtan önemli bir örnektir.', 'srm.jpg'),
(6, 'badem_çiçeği', 'Badem Çiçeği', ' 1890 yılında yapılmış ve sanatçının Saint-Rémy-de-Provence\'deki Saint-Paul-de-Mausole Akıl Hastanesi\'nde geçirdiği dönemde üretilmiştir. Bu dönem, Van Gogh\'un zihinsel sağlık sorunları ile mücadele ettiği, ancak bir yandan da birçok önemli eser ürettiği bir zaman dilimini kapsar.Tablo, badem ağaçlarının beyaz çiçeklerini tasvir eder gibi gözükse dahi Vincent van Gogh\'un \"Badem Çiçeği\" resminin izleyicisi, doğal olarak büyümüş bir labirenti bekliyor. Ancak ressam, tasvirinde, kısa süreli çiçek açma anının gerçekçi tasvirinin ötesine geçer. Uzay ve hareket, başlangıcın, çiçeklenmenin ve geçiciliğin gerçek bir zaman atlamasında birleşir. Boğumlu dallar veya seyrek çiçek salkımları - Van Gogh, başından sonuna kadar yaşamın özüne ustaca vurur.', 'cicek.jpg'),
(7, 'arlesdaki_yatak_odası', 'Arles\'daki Yatak Odası', '20 Şubat 1888’de Güney Fransa’daki Arles’a taşındı. Üç ay kadar kalacağı Carrel Otel-Restoran’da bir oda kiraladı. Mayısta Café de la Gare’in üst katında bir odaya geçti. Aynı zamanda Lamartine Alanı\'ndaki dört odalı Sarı Ev\'i kiralayarak atölye olarak kullanmaya başladı. Eylül’de tamamen Sarı Ev’e yerleşti.\r\n\r\n \r\n\r\nVan Gogh birlikte çalışmayı düşündüğü ve hayranı olduğu ressam arkadaşı Gauguin’i Arles’a davet eder. Paris’te bir galeriyi yöneten, hem kardeşinin hem Gauguin’in yapıtlarının satışını üstlenen Theo van Gogh, bu isteği yerine getirmek için çalışır. Gauguin, Theo’nun ekonomik yardımının devamı koşuluyla Van Gogh ile kalmayı kabul eder. Van Gogh Sarı Ev’i arkadaşının rahat edeceğini düşündüğü her şeyi yaparak Gauguin için hazırlar. Arkadaşını heyecanla bekleyişi bu dönemde yaptığı resimlere de yansır. Evin duvarlarını ve Gauguin’in odasını süsleyen birçok resim yapar. Bunlar, Van Gogh’un sanatsal yeteneğini göstermek amacıyla yaptığı ve Gauguin ile rekabetinin başlangıcı olacak resimlerdir.Tablo, sanatçının kendi yatak odasını tasvir eder. Bu özel mekan, Van Gogh\'un kendi yaşam tarzını ve duygusal durumunu yansıtan bir temadır.', 'ayt.jpg'),
(8, 'place_du_forum', 'Place du Forum', '1888 yılında Arles, Fransa\'da yapılmıştır. Sanatçının Arles dönemine ait önemli eserlerden biridir.Arles\'taki Place du Forum\'da bulunan bir kafe terasını tasvir eder. Mekân, kafe masaları ve renkli karakterleri ile dikkat çeker.Van Gogh\'un karakteristik renk paleti bu eserde de belirgindir. Parlak sarılar, mavisiler ve yeşiller tablonun ana renkleri arasındadır. Sanatçının post-empresyonist tarzını yansıtan belirgin fırça darbeleri ve dokusal özellikler bulunur. Van Gogh, figüratif öğeleri belirginleştirmek ve enerji katmak için kalın fırça darbeleri kullanmıştır.Tabloda perspektifi biraz bozarak mekâna duygusal bir etki katmıştır. Kafe masaları ve figürler, tablonun enerjisini artırarak izleyiciye belirli bir atmosfer sunar.Sanatçının eserlerinde sıkça görülen duygusal derinlik, bu tabloda da hissedilir. Van Gogh, sadece mekânı resmetmekle kalmayıp aynı zamanda duygu ve atmosferi de ifade etmeye odaklanmıştır.\r\n\r\n\"Kafe Terası, Place du Forum,\" Van Gogh\'un post-empresyonist tarzının güzel bir örneğidir ve sanat tarihinde önemli bir eser olarak kabul edilir.', 'tp.jpg'),
(9, 'rhône_üzerinde_yıldızlı_gece', 'Rhône Üzerinde Yıldızlı Gece', '1888 yılında çizdiği “Ren Nehri üzerinde yıldızlı gece” isimli tablosu ayrı bir yere sahiptir. Arles’te kiraladığı “Sarı Ev”e çok yakın bir noktada Ren Nehri kıyısında geceleri gaz lambası ile çalışarak bu tabloyu çizmiştir.\r\n\r\nMaddi zorluk ve ruhsal çöküntü içinde olduğu bu dönemde aslında en etkileyici eserlerini ortaya çıkarmıştır. Fırça darbelerindeki sertlik, çizgilerdeki dalgalanmalar, maviyi yutan siyah karışımı ve bilindik Van Gogh sarısı, sanki sanatçının ruh halini tuvale yansıtmış gibidir. Diğer izlenimcilerin (empresyonizm) aksine yeri geldiğinde tablolarında siyah rengi kullanmaktan kaçınmamıştır.\r\n\r\nKendisi her ne kadar depresif bir ruh yapısıyla bu tabloları çizmiş olsa da genelde tablolarını izleyenlere negatif bir yansıma olmaz. Renklerin canlılığı, ışığın kullanımı, belirgin fırça darbe ve kıvrımları izleyiciye hüzünden ziyade coşkun bir duyguyu aktarır.\r\n\r\nTablonun sağ altında aşık çiftler dikkat çekmektedir. Bu yönüyle eser, Van Gogh’un gece manzaralarında tek insan figürü olan tablosudur. Çiftlerden erkek olanı için Van Gogh’un kendisini resmettiği söylenir. Ancak kendisi hayal ettiği bu mutluluğu gerçek hayatında hiç bir zaman yakalayamamıştır.\r\n\r\nTabloda kalın fırça darbelerinin aksine yıldızların konumu hassas ve doğru şekilde çizilmiştir. Yıldızların konumundaki hassas doğruluk, Van Gogh’un çok iyi bir gözlemci olduğunun göstergesi olarak kabul edilmektedir', 'yytt.jpg'),
(11, 'seascape_near_les_saintes-maries-de-la-mer', 'Seascape near Les Saintes-Maries-de-la-Mer', '  Haziran 1888’de Les Saintes-Maries-de-la-Mer Yakınında Deniz Manzarası‘nı boyadığında boya fırçasını bir kenara bırakarak bunun yerine palet bıçağını kullandı. Bıçak, karıştırılmamış boyaların tabaka haline gelerek koyu bir görünüme ulaşmasını sağlar. Bu koyu boya tabloya derinlik katar, çünkü fiziksel olarak kalın boya katmanları düz tuvale gölge ve boyut ekleyebilir. Sahnenin bazı alanlarında bulunan karışık boya, renklerin canlılığını da arttırır. Dağılmamış kırmızılar, karıştırılmamış yeşillikler ile çatışır. Saf beyaz saf maviye karşı çıkar. Bir renk kakofonisi dalgaların çökme seslerini yansıtır. Enerji ve hareket derinlerde hissedilir,göz kamaştırıcı yoğunluğu, Vincent van Gogh’un çizgi, desen, form ve renk yönetimi ile elde edilir. Çizgiler bazen bulundukları yere bağlı olarak keskinleştirilir veya bulanıklaştırılır. İzleyiciye doğru hareket eden dalgaların ritmik ardışıklığı ile desenler oluşturulur. Formlar vurgular ve gölgelerle ifade edilir. Renkler, bazen uyumlu, bazen de haşin bir şekilde kullanılır. Vincent van Gogh nihayetinde renklerin duygularını ve hissettiklerini ifade etmek için kullanıldığına ve zorunlu olarak nesnel gerçeklik olmadığına inanıyordu. Renkler van Gogh’a göre sübjektifti. Onları öznel gerçekliklerini – dünyaya bakışını – çizmek için kullandı.Kurutulmuş boya katmanlarında kum bulunduğu için Vincent van Gogh’un sahneyi sahilde boyadığı doğrulandı. Açık havada resmetmek, stüdyosu olmayan ressamlar arasında çok popülerdi. Güneş ışığı, temiz hava ve açık alanlarla resim yapmak ise terepâtik unsurlara sahiptir.', 'dm.jpg'),
(12, 'selvi_ile_yeşil_buğday_tarlası', 'Selvi ile Yeşil Buğday Tarlası', 'Van Gogh muhtemelen tabloyu Eylül 1889\'da bir kargoyla Theo\'ya göndermiştir.\r\n\r\nVan Gogh akıl hastanesinden ayrılıp yerel manzarayı keşfedebildiğinde, buğday hızla olgun bir sarıya dönüştüğünde, selvili buğday tarlalarını gösteren birkaç başka resim daha yaptı. Van Gogh\'un selvilere olan düşkünlüğünün yanı sıra buğday tarlalarına da özel bir ilgisi vardı ; yıllar boyunca onları onlarca kez tasvir etti; Vincent\'a göre bunlar yaşam ve ölüm döngüsünü simgeliyorlardı ve o, bunlarda hem teselli hem de ilham buluyordu.', 'sybt.jpg'),
(13, 'tohum_serpen_adam', 'Tohum Serpen Adam', 'Van Gogh\'u oldukça etkilemiş olan \"köylü tarzı\" 1840\'larda Jean-François Millet ve Jules Breton gibi ressamların eserleriyle başladı. 1885 yılında van Gogh köylülerin resimlerini yapmanın modern sanata en gerekli katkı olduğunu yazdı. Millet ve Breton\'un eserlerini \"ulvi bir şeyler\" diyerek dinî öneme sahip olarak tanımladı.Sevdiği yazar ve ressamların ortak faydası yoksul ve mazlumları eserlerinde duygusal olarak ele alışlarıydı. Resme kendisini nasıl adaması gerektiğini emekçilerin işlerine kendilerini nasıl adadığıyla anlatmıştı: \"Güvenle ve inançla, çiftçinin sabanını sürmesi, arkasından tapanını çekmesi gibi makul bir şey yaptığını düşünerek girişmeli. Eğer atın yoksa, kendi kendinin atısındır.\" Köylülerin resimleri ile ilgili kardeşi Theo\'ya şöyle yazmıştır: \"Bu kadar çok sevdiğim şeyi resmetmeyi naşıl başaracağım?\"\r\n\r\nVan Gogh Müzesi Millet\'nin van Gogh üzerindeki etkisini şöyle değerlendirir: \"Önceden görülmemiş şekilde köylüleri ve çalışmalarını resmeden Millet\'nin eserleri 19. yüzyıl sanatında bir dönüm noktasıdır. Millet\'den önce köylü figürleri yalnızca pitoresk ya da nostaljik sahnelerin çok sayıda ögesinden biriydi. Millet\'nin eserlerinde ise kadın ve erkek köylü bireyleri resmin ana karakteri olmuş ve gerçekçi bir anlatımla ifade edilmiştir. Millet, Barbizon ekolünde salt manzara resmiyle ilgilenmeyen tek önemli ressamdır.\"\r\n\r\nVan Gogh Saint-Rémy\'de Jean-François Millet\'nin eserlerinin \"çevirisi\" sayılabilecek yirmi bir resim yaptı. Van Gogh bu resimlerin özgün Millet resimlerinin birebir kopyası olarak yapmaya niyetlenmemişti. Özellikle Millet\'nin eserlerinden söz ederek şunları yazmıştır: \"basitçe kopyalamak değil. Daha çok başka bir dile, chiaroscuro ile siyah-beyazı renklerin diline çevirmek.\"\r\n\r\nTheo bir mektubunda van Gogh\'a şöyle yazdı: \"Millet kopyaları belki de şimdiye kadar yaptığın en iyi şey ve bu beni figürlü kompozisyonlar yapmaya başladığın gün daha büyük sürprizlerle karşılaşacağımıza inanmaya itiyor.', 'tsa.jpg'),
(14, 'patates_yiyenler', 'Patates Yiyenler', '1885 yılında Nuenen\'de yaptığı 82 x 114 cm ölçülerindeki tablosu. Vincent van Gogh sanat hayatının ilk dönemlerinde yığılmış patatesleri, dokuma tezgâhları, madencileri ve karamsarlık hissi veren gökyüzünü çalışmalarında ana tema olarak kullandı. Van Gogh Müzesi\'de sergilenen Patates Yiyenler adlı tuval üzerine yağlı boya çalışmasını ise Nisan 1885\'te tamamladı. Tablo van Gogh\'un ilk önemli çalışması olarak görülmektedir ve buhranlı bir dönemine aittir.abloda bir lamba altındaki masaya toplanmış beş kişi resmedilmektedir. İki erkek, iki kadın ve bir kız çocuğundan oluşan bu kişiler patates yiyip kahve içmektedirler. Figürlerden iki kişi tabloya bakan kişiye göre karşı, bir kişi yüz ve vücut profilinden, bir kişi dörtte üç oranında profilden ve bir kişi de arka profilden görülmektedir. Duvarın çıkık görünen bölümünün solunda bir sepet içerisindeki kaşıklar görülmektedir. Resmin sol üst kısmında bir duvar saati ve bir resim bulunmaktadır. En solda gözüken kahverengi pantolonlu ve yeşil kasketli figür elindeki çatalını masadaki patatese batırmaktadır. Bakışları ise patatese değil masanın diğer ucunda oturan ve kahve dolduran kadının üzerindedir. Beyaz şapkalı kadın figürü de tabloya bakan kişiye bakar gibi gözükmekte ve elindeki çatalı patatese batırmaktadır. Ayrıca kahve dolduran kadına bakan erkeğe de bakar gibidir. Bu figürün yanındaki, kasketli erkek tüten kahve fincanını ya ağzına götürmektedir ya da sağındaki kadından fincanını doldurmasını istemektedir. Sırtı dönük olan figür ise patateslere dönüktür ve üzerinde koyu bir elbise vardır. Tablo genel anlamda kendi ektikleri patatesleri yiyen köylüleri konu edinmektedir.Tablodaki ortam loş bir özelliğe sahiptir. Üslup çizgisel değildir ve figürlerin sınırlarını takip etmek zordur. Resimde aydınlığı sağlayan tek unsur tavana asılı yağ lambasıdır ve gölgeler resimdeki karanlığı etkilemektedir. Tabloda tabak ve patatesleri seçmek mümkünken diğer unsurları tam olarak aydın değildir. Işık çevresinde hızlı neon fırça darbeleriyle oluşturulmuş geçişler dikkat çekmektedir. Genel olarak tablo temasında koyu ve yeşil renk tonları egemendir. Tuz bezeli olarak kabuklu bir şekilde fırına atılmış tozlu gibi duran patatesler ışığın hemen altında olduğu için belirgin haldedirler. Tablonun koyu renk ağrılıklı olmasında figürlerin zorlu yaşam şartlarının da etkisi olduğu düşünülmektedir. Vincent van Gogh bu karanlık ögeler ile günlük yaşamdan bir kesintiyi melankolik bir unsur olarak sunmuştur. Figürlerin yüz ifadeleri, buruşuklukları ve pürüzlü elleri yazarın bu amacına hizmet etmektedir. Resimde klasik kuralları yeren dışavurumcu bir hava hakimdir', 'py.jpg'),
(15, 'ayçiçekleri', 'Ayçiçekleri', '1886’da gittiği Paris’te iki yıl boyunca kardeşi Theo ile yaşar. Bu dönemde paletindeki renkler canlanmaya başlamış, renk kullanımı ve fırça hakimiyeti artık özgün kimliğinin göstergesi olmuştu. Bu dönemde genel olarak vazoda çiçek konularını işler. 1887 yazında ayçiçeği resimlerinden ilkini yapar. Burada gerçekleştirdiği ilk seride, olgunlaşmış kesik ayçiçeklerinin bir zemin üzerinde resmedildiği görülür.', 'ac.jpg'),
(16, 'i̇risler', 'İrisler', '1890\'daki ölümünden önceki yıl Saint-Rémy-de-Provence, Fransa\'daki Saint Paul-de-Mausole Akıl Hastanesi\'nde yaptığı bir dizi resimden biridir.\r\n\r\nVan Gogh İrisler\'i Mayıs 1889\'da, akıl hastanesine geldiği hafta yapmaya başladı. Tabloyu hastanenin bahçesinde, doğada yaptı. Tabloda daha sonraki eserlerinde görülen yüksek tansiyon eksiktir. Ressam tablodan, resim yapmaya devam etmesinin kendisini delirmekten koruduğunu hissettiğinden, \"hastalığımın paratoneri\" diye söz etti.\r\n\r\nTablo muhtemelen Van Gogh\'un ve o dönemin diğer ressamlarının pek çok eseri gibi Japon ukiyo-e ahşap baskılarından etkilenilerek yapıldı. Güçlü ana hatlar, yakından görünüm gibi alışılmadık açılar ve ışığın düşüşünü baz almayan düz ve lokal renk kullanımı, görülen benzerliklerdendir.\r\n\r\nVan Gogh bu tabloyu bir çalışma olarak düşündü; muhtemelen bu nedenle tablonun bilinen bir çizimi yoktur. Buna karşın Van Gogh\'un kardeşi Theo, tablo hakkında daha olumlu düşünerek onu derhal Rhone Üzerinde Yıldızlı Gece ile birlikte, Eylül 1889\'daki Société des Artistes Indépendants yıllık sergisine sundu. Theo Vincent\'a sergiyle ilgili şunları yazdı: \"Tablo uzaktan göz alıyor. İrisler hava ve yaşamla dolu, güzel bir çalışma.\"', 'i.jpg'),
(19, 'ağaç_kökleri', 'Ağaç Kökleri', '1890 yılında Auvers-sur-Oise\'da yaşarken yaptığı yağlı boya tablo.Tablo, ressamın son peyzajlarında uyguladığı çifte kare resmin örneklerindendir.Mayısında Saint-Rémy\'deki akıl hastanesinden ayrıldıktan sonra, yaşamının son aylarını Paris\'in kuzeyinde küçük bir köy olan Auvers-sur-Oise\'da geçirdi.Tablo kimileri tarafından, Temmuz 1890\'daki ölümünden önce yaptığı son tablo kabul edilir.Jan Hulsker tabloyu, ressamın çift kare resimleri içinde en özgünü olarak değerlendirir. Resme bakan kişi ağaç kökleri ile gövdesini ayırt edebileceğini sanır, ancak resmin öznesini bir bütün olarak ayırt etmek güçtür. Van der Veen ile Knapp\'a göre bu resimde, Ağaçlar ve çalılıklar\'da olduğu gibi, üstün olan resmin öznesi değil; resmin kendisidir ki bu da soyut resmi ve Alman Dışavurumculuğunu müjdeler.', 'ak.jpg'),
(20, 'bulb_fields', 'Bulb Fields', 'Hollanda\'da Çiçek Tarhları olarak da bilinen Ampul Tarlaları , Vincent van Gogh\'un 1883 başlarında yarattığı yağlıboya tablodur. 1983yılında Washington DC\'deki Ulusal Sanat Galerisi\'ne bağışlanmıştır\r\n\r\nAmpul Tarlaları , Van Gogh\'un ahşap üzerine tuval üzerine yağlı boyayla yaptığı ilk bahçe tablosuydu. Van Gogh\'un Lahey\'deki ikinci yılında yapılmıştır . \r\nHollandalı bir ampul tüccarı tarafından yetiştirilen mavi, sarı, pembe ve kırmızı sümbüllerden oluşan dikdörtgen alanları tasvir ediyor . Alçak görüş noktası, arka planda sazdan kulübeler ve yapraksız ağaçlarla birlikte rengarenk bahar çiçekleri tarlasının panoramik bir görüntüsünü yaratıyor. Düzenli kompozisyon Van Gogh\'un perspektife olan ilgisini keşfetmesine olanak tanır .', 'ho.jpg'),
(21, 'seascape_near_les_saintes-maries-de-la-mer', 'Seascape near Les Saintes-Maries-de-la-Mer', 'dcadscfasdc', 'icon.jpg');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kulad` (`kulad`);

--
-- Tablo için indeksler `postlar`
--
ALTER TABLE `postlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `resimler`
--
ALTER TABLE `resimler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `postlar`
--
ALTER TABLE `postlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `resimler`
--
ALTER TABLE `resimler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
