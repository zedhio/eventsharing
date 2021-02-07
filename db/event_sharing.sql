-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2020 pada 22.23
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_sharing`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `config`
--

CREATE TABLE `config` (
  `id_config` int(11) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_author` text NOT NULL,
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `facebook` text NOT NULL,
  `instagram` text NOT NULL,
  `twitter` text NOT NULL,
  `youtube` text NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `tentang_kami` text NOT NULL,
  `no_wa` varchar(12) NOT NULL,
  `copyright` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `config`
--

INSERT INTO `config` (`id_config`, `meta_keyword`, `meta_author`, `meta_title`, `meta_description`, `facebook`, `instagram`, `twitter`, `youtube`, `favicon`, `logo`, `tentang_kami`, `no_wa`, `copyright`) VALUES
(1, 'Keyword1', 'Author1', 'Era Hiya HIya', 'Description1', 'https://facebook.com/event-sharing/', 'https://instagram.com/event-sharing/', 'https://twitter.com/event-sharing/', 'https://youtube.com/event-sharing/', 'favicon.ico', 'logo1_small_transparan.png', '<p>Event Sharing adalah platform yang memiliki Ticketing Management Service (TMS) teknologi unggul dalam mendukung seluruh penyelenggara event mulai dari distribusi &amp; manajemen tiket, hingga penyediaan laporan analisa event di akhir acara.</p><p>Beberapa teknologi yang kami sediakan siap untuk memfasilitasi penyelenggara event dalam setiap tahap persiapan yang meliputi:</p><ul><li>Distributor tiket terlengkap yang telah bekerja sama dengan Event Sharing untuk menjual tiket Anda.</li><li>Sistem pembayaran yang beragam dan aman memberikan kemudahan kepada calon pembeli, untuk mendapatkan konversi yang lebih tinggi.</li><li>Gate management yang paling aman dan nyaman untuk akses saat event berlangsung. Sehingga, event dengan jumlah penonton yang besar dapat ditangani dengan mudah.</li><li>Sistem analisis data yang lengkap dan komprehensif setelah acara berlangsung untuk memudahkan penyelenggara event dalam menentukan strategi event selanjutnya.</li></ul><p>Sudah ada ratusan event yang bekerja sama dengan kami dan semuanya tersebar di seluruh Indonesia. Kini, saatnya perkenalkan event Anda pada dunia untuk membawa penonton yang lebih banyak lagi bersama kami!</p>', '089538071975', 'Copyright © 2020 Event Sharing.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen_user`
--

CREATE TABLE `dokumen_user` (
  `id_dokumen_user` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `nama_ktp` varchar(150) NOT NULL,
  `alamat_ktp` text NOT NULL,
  `dokumen_ktp` varchar(255) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `dokumen_user`
--

INSERT INTO `dokumen_user` (`id_dokumen_user`, `id_user`, `no_ktp`, `nama_ktp`, `alamat_ktp`, `dokumen_ktp`, `status`) VALUES
(1, 21, '3273070903710001', 'Achmad Hidayat', 'Jl.Hasan Saputra IV No.10 RT 002/002 Kel.Turangga, Kec.Lengkong, Kota Bandung, Jawa Barat.', 'KTP_Achmad_Hidayat.jpg', 1),
(2, 22, '3175072305730003', 'Anggoro Andi Prasetyo', 'Jl. Kejaksaan Blok E No.99 RT 011/011 Kel.Pondok Bambu, Kec.Duren Sawit', 'KTP-Andi.jpg', 1),
(13, 23, '', '', '', '', 0),
(14, 24, '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_event` varchar(100) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `tgl_mulai_acara` date NOT NULL,
  `tgl_berakhir_acara` date NOT NULL,
  `waktu_mulai_acara` time NOT NULL,
  `waktu_berakhir_acara` time NOT NULL,
  `lokasi_acara` varchar(150) NOT NULL,
  `deskripsi_event` text NOT NULL,
  `url_event` varchar(255) NOT NULL,
  `status` enum('Publish','Not Publish') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id_event`, `id_kategori`, `id_user`, `nama_event`, `banner`, `tgl_mulai_acara`, `tgl_berakhir_acara`, `waktu_mulai_acara`, `waktu_berakhir_acara`, `lokasi_acara`, `deskripsi_event`, `url_event`, `status`) VALUES
(2, 6, 21, 'Seminar Pranikah Vol.1', 'Seminar_Pra_Nikah.jpg', '2020-07-13', '2020-07-14', '08:00:00', '12:00:00', 'Sentul, Gringsing, Batang, Jawa Tengah', '<p>Tahun baru identik dengan target - target baru,&nbsp;seperti&nbsp;target kebiasaan / pola hidup, target jumlah buku yang dibaca, target&nbsp;<em>travelling&nbsp;</em>untuk mengelilingi beberapa tempat baik di dalam / luar negeri hingga target untuk melepas masa&nbsp;<em>single</em>nya. Biasanya bertambahnya angka usia menjadikan orang lebih serius dalam menentukan target di tahun yang baru.&nbsp;</p><p>Saat berbicada tentang melepas masa&nbsp;<em>single</em>, tidak sedikit dari kita yang bisa di bilang &quot;merevisi&quot; nya setiap tahun. Ada yang memiliki target ingin menikah di usia 23 ternyata sampai usia 28 masih sendiri sehingga setiap ganti tahun target menikah terus tertulis dan jadi target tahunan yang entah kapan bisa terealisasi.</p><p>Tidak sedikit dari kita hingga merasa putus asa bahkan depresi karena jodoh tak kunjung datang, sehingga saat ditanya &quot;Kapan Nikah&quot; merasa minder, merasa kurang beruntung dan lain sebagainya. Berawal dari cerita teman - teman yang merasa terbebani saat ada yang bertanya &quot;Kapan Nikah&quot; dan angka usia terus bertambah, maka kami dari Warahmah Wedding ingin mengadakan Seminar Pra Nikah Vol 1 yang berjudul &quot;Ketika Mereka Bertanya, Kapan Nikah?&quot;.</p><p>Adapun pengisi acara di Seminar Pra Nikah Vol 1 : Ketika Mereka Bertanya, Kapan Nikah? adalah sebagai berikut :</p><p><strong>1. Ustadh M. Fatih Karim : CEO dan Fouder Cinta Qur&#39;an Foundation, Ritra Travel &amp; Umroh, Produk AlanabiID, Majelis Yuk Ngaji.</strong></p><p><strong>2. Ustadzah Aini Aryani Lc : Narasumber Islam Itu Indah TransTV, Khazanah Trans 7, Redaktur dan Penulis Rumahqikih.com</strong></p><p><strong>3. Kak La Ode Munafar : Founder Indonesia Tanpa Pacaran, Penulis @GaulFresh</strong></p><p><strong>4. Couple Guest (Masih dalam konfirmasi) : Inspirasi Pasangan Ta&#39;aruf, Penulis Buku</strong></p><p>Serta akan di pandu oleh Sdri Amel Wisda Sannie : MC, Host, Moderator, None Jakarta Pusat 2019</p><p>&nbsp;</p><p>Acara ini insyaa allah akan di laksanakan pada :<br />Hari , Tanggal : Minggu, 26 Januari 2020</p><p>Waktu : 08.00 - 16.00 (Open Registrasi 07.00 WIB)</p><p>Lokasi : Aula Universitas Al Azhar, Blok M</p><p><strong>Investasi PRESALE I : 300.000, dengan Benefit :</strong></p><p><strong>1. Seminar Kit Special Design</strong></p><p><strong>2. Snack, Makan Siang 1x</strong></p><p><strong>3. Souvenir Paket Go Green (alat makan)</strong></p><p><strong>3. E-Certifikat</strong></p><p><strong>4. Voucher Warahmah Wedding 500.000</strong></p><p><strong>5. Ilmu, Pengalaman &amp; Relasi</strong></p><p><strong>Serta berkesempatan mendapatkan doorpize 2 logam mulia 0.5gr</strong></p><p>Kami berharap dengan adanya seminar ini bisa menjadi solusi untuk teman - teman lebih tegar lagi, lebih kuat lagi serta memiliki mental yang kuat saat menghadapi pertanyaan itu sehingga tidak membuat&nbsp;<em>down</em>&nbsp;hingga depresi.</p><p>Sampai bertemu teman - teman.</p><p>Terima kasih,</p><p>Salam Persahabatan.</p><p>Warahmah Wedding</p><p><br /><br />&nbsp;</p><p><strong>SYARAT &amp; KETENTUAN</strong></p><p>1. Kuota terbatas.</p><p>2. Datang tepat waktu.</p><p>3.&nbsp;Dipersilahkan membawa Tumbler sendiri dari rumah.</p>', 'seminar-pranikah-vol.1', 'Publish'),
(3, 7, 21, 'WORKSHOP Desainer Grafis', '20191210180712_5def7c60048fb.jpg', '2020-07-13', '2020-07-14', '18:00:00', '18:00:00', 'Queen garden Hotel, Jawa Tengah', '<p>Rio Purba dan&nbsp;Yoko Bomb bersama HOW Learning Club akan menggelar workshop di Queen Garden Hotel - Baturaden - Banyumas pada 11 dan 12 Januari 2020 yang bertajuk Desainer Grafis Profesi Masa Depan. Workshop ini akan menjadi workshop yang menyuguhkan semua detail tentang bagaimana cara untuk memulai profesi sebagai freelancer khususnya desainner grafis untuk dapat keluar dari bleeding zone dan dan memberikan kepastian untuk berpenghasilan dollar lebih maksimal dari hasil menjual hasil karya dan sebagai freelancer.</p><p>HOW Learning Club merupakan club para desainer grafis di Kota Banyumas Jawa Tengah. Berdedikasi dalam berbagi informasi dan tutorial di dunia desain grafis yang untuk saat ini berfocus di Kota Banyumas. Besar harapan untuk dapat menjadi sebuah club atau komunitas yang lebih besar lagi.</p><p><strong>Fasilitas Paket Yoko Bomb</strong></p><ol><li>Workshop (Pelatihan)</li><li>Kaos + Souvenir Acara</li><li>Perangkat Laptop sudah disediakan</li><li>Makan Siang dan Snack</li><li>Sertifikat Workshop</li><li>Modul Workshop</li></ol>', 'workshop-desainer-grafis', 'Publish'),
(4, 3, 22, 'Tresno Ambyar: Didi Kempot Live In Concert', '20200104130612_5e102b54f0e55.jpg', '2020-07-13', '2020-07-14', '20:00:00', '23:00:00', 'M Bloc Live House, DKI Jakarta, Jakarta Selatana', '<p><strong>MBOK NDORO X M BLOC LIVE HOUSE<br />present</strong></p><p><strong>TRESNO AMBYAR:<br />DIDI KEMPOT&nbsp;LIVE IN CONCERT<br />(Grand Opening Party of Mbok Ndoro)</strong></p><p><strong>FRIDAY, FEBRUARY 14th 2020<br />Open Gate: 19:00<br />Show Starts: 20:00</strong></p><p><strong>Tickets:<br />Free Standing </strong></p><p><strong>M Bloc Live House<br />Jl. Panglima Polim Raya No.37<br />Melawai, Kebayoran Baru<br />Jakarta Selatan</strong></p><p><strong>Further info:</strong></p><p><strong>mbloclivehouse@gmail.com</strong></p>', 'tresno-ambyar-didi-kempot-live-in-concert', 'Publish'),
(5, 1, 22, 'Telkom Edutainment 2020', '20191205224604_5de9263c57a30.jpg', '2020-07-13', '2020-07-14', '07:00:00', '16:30:00', 'SMK Telkom Sandhyputra Purwokerto, Jawa Tengah, Kab.Banyumas', '<p>TELKOM EDUTAINMENT adalah sebuah acara dari Ikatan mahasiswa Eks-Karesidenan Banyumas Telkom University Bandung untuk Siswa SMA sederajat, dan Umum yang berisi edukasi dan entertainment. Gueststars : Pamungkas, Pembicara : Aef Nandi, Mahasiswa Berprestasi : Setyo Nugroho. More Info : WA 082221631455, Line : @_avabelbintang</p>', 'telkom-edutainment-2020', 'Publish'),
(8, 3, 21, 'W.A.I.T.T Weareinthistogether digital series Present Phum Viphurit', '20200615055533.jpg', '2020-07-22', '2020-07-22', '20:00:00', '09:00:00', 'JCC', '<p><strong>SYARAT &amp; KETENTUAN</strong></p><ol><li><strong>Anda dapat menonton live streaming dengan cara menekan tombol &quot;Watch Here&quot; yang ada di bagian e-voucher.</strong><br /><em>You can watch live streaming by pressing &acirc;&euro;&oelig;Watch Here&acirc;&euro; button in the e-voucher section</em></li><li><strong>Jangan pernah memberikan link streaming yang ada di e-voucher Anda kepada siapapun.</strong><br /><em>Never give a streaming link on your e-voucher to anyone</em></li><li><strong>Jika membeli lebih dari 1 tiket, silakan COPY URL LIVE STREAMING yang ada pada tiket kedua dan selanjutnya. bagikan kepada Rekan Anda.</strong><br /><em>If buying more than 1 ticket, please COPY THE LIVE STREAMING URL on the second and subsequent tickets, share it with your colleague.</em></li><li><strong>1 link streaming hanya dapat dibuka dalam 1 jendela browser dalam 1 device.</strong><br /><em>1 streaming link can only be opened in 1 browser window on 1 device.</em></li><li><strong>Silakan mengakses link streaming Anda, sesuai dengan waktu yang tertera di e-voucher Anda. Keterlambatan menjadi tanggung jawab Anda.</strong><br /><em>Please access your streaming link, according to the time printed on your e-voucher. Delay in joining the streaming will be on your responsibility.</em></li><li><strong>Anda tidak diperbolehkan untuk men-download dan juga menduplikasikan seluruh isi konten dalam layanan streaming ini. Pelanggaran hak cipta dari konten yang dipasang diatur dalam undang-undang terkait.</strong><br /><em>You are not allowed to download and duplicate the entire contents of this streaming. Copyright violation on this content is regulated in related laws.</em></li><li><strong>Kualitas video streaming ditentukan dari bandwidth internet Anda.</strong><br /><em>Streaming video quality is determined by your internet bandwidth.</em></li><li><strong>Layanan live chat dapat digunakan cara memasukkan nama Anda terlebih dahulu dan untuk melihat obrolan di live chat, Anda dapat mengirimkan chat terlebih dahulu.</strong><br /><em>Live chat service can be used by entering your name first; and to see conversation in live chat, you must send a chat in advance</em></li><li><strong>Harap tidak menggunakan kata-kata yang berbau SARA dan Pornografi di dalam live chat.</strong><br /><em>Please do not use words that contain Racial Religion and Pornography in live chat.</em></li><li><strong>Dengan membeli tiket konser event online ini, Anda telah menyetujui pengumpulan, penyimpanan, dan penggunaan data Anda untuk keperluan konser.</strong><br /><em>By purchasing the concert tickets, you have agreed to data collection, storage, and utilization for concert purposes.</em></li><li><strong>Penyelenggara berhak untuk tidak memberikan izin untuk menonton video streaming apabila syarat-syarat &amp; ketentuan tidak dipenuhi.</strong><br /><em>The promotor has the right not giving permission to watch video streaming if the terms and condition are not fulfilled.</em></li><li><strong>Segala informasi mengenai tiket dan acara, dapat menghubungi call center Loket.com di email : support@loket.com atau telfon ke +62-21-8060-0822.</strong><br /><em>All information regarding to tickets and events, please contact Loket.com call center at email: support@loket.com or call to +62-21-8060-0822.</em></li></ol>', 'waitt-weareinthistogether-digital-series-present-phum-viphurit', 'Publish'),
(9, 7, 21, '[MarkPLus Institute] Marketing in Crisis', '20200703124808_5efec69893e6f.jpg', '2020-07-24', '2020-07-24', '15:00:00', '17:00:00', 'Event Online', '<p>Menghadapi situasi krisis atau sulit seperti sekarang ini mengingatkan kita pada ungkapan Tiongkok yaitu Wei-Ji yang secara harfiah diartikan sebagai cirisis. Namun Wei-Ji ini pun memiliki dua sisi (Wei: Dangerous dan Ji: Opportunity), dimana di setiap situasi krisis, sudah pasti ada bahaya tapi juga ada peluang yang dimanfaatkan. Jangan cuma melihat bahaya, tapi bagaimana mengambil peluang yang tepat. Kita tentu tidak bisa menjalankan marketing seperti di situasi normal karena memang VUCA (Volatility-Uncertainty-Complexity-Ambiguity) ini sangat nyata terjadi. Oleh karena itu, mutlak dibutuhkan pendekatan baru dalam mengelola bisnis di era krisis saat ini.</p><p><strong>SYARAT &amp; KETENTUAN</strong></p><p>Memiliki koneksi internet minimal 1mbps yang stabil<br />Menggunakan Google Chrome sebagai Browser</p>', 'markplus-institute-marketing-in-crisis', 'Publish'),
(10, 7, 21, 'The Story & Benefits Behind Internship', '20200707130859_5f04117b98b9d.jpg', '2020-07-24', '2020-07-24', '13:00:00', '14:30:00', 'Event Online', '<p>Dunia kerja tentunya berbeda dengan masa-masa kuliah. Saat ini banyak perusahaan membuka program internship alias magang yang bertujuan untuk memperkenalkan dunia kerja dan memberi kesempatan bagi pada pelajar dan mahasiswa untuk belajar terjun langsung.</p><p>Webinar ini akan membahas tentang cerita dan juga keuntungan yang didapatkan dalam fase magang dari para speakers.</p><p><strong>1. Umar Tubagus.</strong>&nbsp;Saat ini bekerja di sebagai&nbsp;Social Media &amp; Content Specialist di @helloneu.id. Sebelumnya pernah magang di Gramedia Digital Nusantara sebelum memutuskan untuk pindah mempelajari hal-hal baru di dunia kerja.</p><p><strong>2. Christy Elika Arroy.&nbsp;</strong>Lebih dikenal dengan nama Cika Elika di Instagram saat ini menjadi Key Opinion Leader Academy di&nbsp;Shopee. Sebelumnya pernah magang di Kompas Gramedia dan saat ini masih melanjutkan study di fakultas Ilmu Komunikasi Universitas Padjadjaran Bandung.</p><p><strong>3. Yudhistira Adhi.</strong>&nbsp;Memulai karirnya saat magang di Klix Digital salah satu agency digital marketing yang menangani berbagai macam klient. Saat ini bekerja sebagai Account Executive di Pantarei Communications.</p><p>Mereka akan membagikan pengalaman serunya saat magang di perusahaan-perusahaan tersebut.</p><p>Penasaran? Yuk daftar segera.</p><p>&nbsp;</p><p><strong>SYARAT &amp; KETENTUAN</strong></p><ul><li>Gratis terbatas untuk pendaftar tercepat.</li><li>Kegiatan ini akan berlangsung online melalui Google Meet. (Silakan install aplikasi atau buka dari web browser).</li><li><strong>Link webinar akan dikirimkan melalui email dari Loket.com setelah melakukan pendaftaran,&nbsp;</strong>temukan di bagian&nbsp;<strong>WATCH HERE atau KLIK DISINI</strong>. (Sekali lagi diharapkan tidak membagikan link kepada orang lain.)</li><li>Diharapkan bagi yang mendaftar untuk tidak membagikan link ke orang lain. Karena hanya terbatas untuk 235 peserta.</li><li>Room akan dibuka 15 menit sebelum acara di mulai.</li><li>Pastikan sinyal internet anda tidak mengalami gangguan. Jangan lupa siapkan cemilan ya.</li><li>Ada pertanyaan? Silakan via Instagram: @pandaikata @beliveinc atau via LinkedIn: Lingga Wastu.&nbsp;</li></ul><p>Terima kasih.</p>', 'the-story-benefits-behind-internship', 'Publish'),
(11, 6, 22, 'INSPIRAFEST By Merry Riana', '20200317113658_5e7053ea37fd6.jpg', '2020-07-24', '2020-07-24', '11:55:00', '19:55:00', 'QBig BSD City, Tangerang, Banten.', '<p><strong><em>THE MOST POWERFUL AND INSPIRATIONAL EVENT IN INDONESIA</em></strong></p><p>CIPTAKAN PERUBAHAN BESAR DAN WUJUDKAN MIMPI-MIMPI ANDA BERSAMA LEBIH DARI 1000 PESERTA DARI 20 KOTA SE-INDONESIA DI INSPIRAFEST 2020</p><p>DARE TO DREAM BIG &ndash; INSPIRA FEST 2020</p>', 'inspirafest-by-merry-riana', 'Publish'),
(12, 6, 22, 'Student Membership', '20200124153902_5e2aad26c864c.jpg', '2020-07-24', '2020-07-24', '15:35:00', '12:00:00', ' Bali International Arbitration & Mediation Center, DKI Jakarta', '<p><strong>Why you should join</strong></p><p>At the BIAMC, we believe in investing in your future, from an early age. Whether you want to pursue a successful career in international dispute resolution, learn more about means to resolve disputes internationally or learn more on how to progress your career in the field of law by acquiring several career-specific skills: BIAMC Student Membership will support you for all of these goals &ndash; and much more. Become a Student Member<em> </em>now!</p><p>&nbsp;</p><p><strong>What you will get</strong></p><ul><li>Access <strong>all</strong> BIAMC online courses for free</li><li>Take up to two exams of online courses on alternative dispute resolution without paying the exam fee every year and receive the respective certificates for free</li><li>Take up to two exams of online courses on career development without paying the exam fee every year and receive the respective certificates for free</li><li>Benefit from the opportunity to become your university&rsquo;s BIAMC Student Ambassador</li><li>Hone your advocacy skills by participating in the BIAMC&rsquo;s Advocacy Skills Competition</li><li>Stay informed about latest trends in the alternative dispute resolution industry through the BIAMC&rsquo;s newsletters and updates</li><li>Engage with other students and alternative dispute resolution practitioners from Indonesia, South East Asia and generally around the world</li></ul><p>&nbsp;</p><p><strong>How it works</strong></p><p>Student Membership is open to anyone who is enrolled at a university at the time of application.</p>', 'student-membership', 'Publish'),
(13, 3, 22, 'JPCC Worship BRIGHTER Live Worship Creative Talks', '20191226092347_5e0419b35f0dd.jpg', '2020-07-24', '2020-07-24', '09:00:00', '21:00:00', 'Istora Senayan Gelora Bung Karno (GBK), DKI Jakarta', '<p><strong>JPCC Worship BRIGHTER Live Worship &amp; Creative Talks</strong></p><p>&nbsp;</p><p>JPCC Worship mengajak Anda untuk memuji dan menyembah Tuhan bersama-sama di acara BRIGHTER Live Worship, 13 Maret 2020, di Istora Senayan Jakarta. JPCC Worship akan membawakan lagu-lagu baru dari album BRIGHTER dan juga lagu-lagu lain yang kami percaya akan menguatkan iman kita bersama. Album BRIGHTER sendiri di inspirasi oleh keberadaan Yesus sebagai terang hidup kita. Karena Yesus, kita tidak kehilangan harapan dan bahkan bisa menjadi terang yang menuntun orang lain ke jalan yang benar di dunia yang penuh kekacauan, ketakutan, dan kebingungan. Bersama Tuhan, kita bisa bersinar lebih terang; menceritakan kasih dan kebaikan-Nya melalui hidup kita.</p><p>&nbsp;</p><p>Selain Live Worship di malam hari, JPCC Worship juga menggelar Creative Talks dengan beberapa stream: Praise &amp; Worship, Church Production, dan Performing Arts yang akan diadakan di pagi sampai siang hari. Kami percaya Creative Talks ini akan membantu anak-anak Tuhan untuk dapat melayani Tuhan dan menggali potensi kreatif yang Tuhan tanamkan dalam kita.</p><p>&nbsp;</p><p>JPCC Worship adalah tim pujian penyembahan dari Jakarta Praise Community Church (JPCC) yang awalnya dikenal dengan True Worshippers. Lagu-lagu mereka sudah dinyanyikan di seluruh Indonesia bahkan di mancanegara. Beberapa album terakhir mereka diterjemahkan ke berbagai bahasa seperti Jepang, Thai, Mandarin, dan lainnya.</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>SYARAT &amp; KETENTUAN</strong></p><ul><li><p><strong>Waktu Acara&nbsp;:</strong></p></li></ul><ol><li>Creative Talks : 09.30 - 17.30 WIB</li><li>Live Worship : 19.30 - 21.30 WIB</li></ol><ul><li><p><strong>Penukaran Tiket :</strong></p></li></ul><ol><li>Creative Talks : 08.00 WIB</li><li>Live Worship : 14.00 WIB</li></ol><ul><li><p><strong>Doors Open :</strong></p></li></ul><ol><li>Creative Talks : 09.00 WIB</li><li>Live Worship : 18.30 WIB</li></ol><ul><li><p>Tiket secara resmi hanya dijual melalui Loket.com, gotix dan tokopedia</p></li><li><p>Penukaran tiket dapat diwakilkan dengan syarat membawa copy ID pemesan</p></li><li><p>Barcode pada e-ticket&nbsp;ini digunakan untuk menukar tiket fisik (gelang) sebagai akses masuk venue.</p></li><li><p><em>Barcode&nbsp;</em>bersifat rahasia, tidak&nbsp;disebarluaskan kepada siapapun dan ke manapun sampai Anda berhasil masuk ke dalam&nbsp;<em>venue</em>.</p></li><li><p><em>Barcode&nbsp;</em>yang sudah digunakan oleh orang lain bukan tanggung jawab Loket.com dan JPCC Worship BRIGHTER Live Worship &amp; Creative Talks.</p></li><li><p><em>E-ticket/e-voucher&nbsp;</em>boleh di-<em>screen capture</em>&nbsp;atau di-<em>print out</em>. Apabila memilih&nbsp;<em>capture</em>, pastikan&nbsp;<em>barcode</em>&nbsp;di layar&nbsp;<em>handphone</em>&nbsp;terlihat jelas dan memastikan&nbsp;<em>handphone</em>&nbsp;memiliki cukup baterai guna memperlancar proses&nbsp;<em>scanning</em>&nbsp;<em>barcode</em>.</p></li><li><p>Dengan membeli tiket ini, Anda telah menyetujui pengumpulan, penyimpanan, dan penggunaan data pribadi Anda untuk keperluan JPCC Worship BRIGHTER Live Worship &amp; Creative Talks.</p></li><li><p>Semua jenis tiket bersifat&nbsp;<em>first come, first served</em>&nbsp;saat di&nbsp;<em>venue&nbsp;</em>dan tidak memiliki nomor bangku.</p></li><li><p>Tiket yang dibeli dari situs selain Loket.com atau&nbsp;<em>partner&nbsp;</em>resmi tidak akan berlaku untuk masuk ke dalam&nbsp;<em>venue&nbsp;</em>konser.</p></li><li><p>Tiket yang sudah dibeli tidak dapat dibatalkan, ditukar atau&nbsp;dikembalikan.</p></li><li><p>Anak di bawah usia 3&nbsp;tahun tidak perlu membeli tiket. Untuk anak berusia 3&nbsp;tahun ke atas diwajibkan membeli tiket.</p></li><li><p>Dilarang membawa senjata tajam, senjata api dan narkoba ke dalam area pertunjukan.</p></li><li><p>Dilarang menggunakan alat rekam audio dan video (kecuali&nbsp;<em>handphone</em>) dalam bentuk apapun (Contoh: kamera profesional, kamera Gopro, tongkat perekam (<em>selfie stick</em>).</p></li><li><p>Penyelenggara tidak menyediakan tempat penyimpanan barang selama pertunjukan.</p></li><li><p>Penyelenggara tidak bertanggung jawab atas kehilangan barang pribadi sebelum dan sesudah pertunjukan.</p></li></ul>', 'jpcc-worship-brighter-live-worship-creative-talks', 'Publish'),
(14, 1, 22, 'Salat Idul Adha 1441 H', '20200704135149_5f0027051862a.jpg', '2020-07-31', '2020-07-31', '06:00:00', '09:00:00', 'Lapangan Sekolah Dasar Alam Bogor, Jawa Barat ', '<p>Bismillaahirrahmaanirrohiim.</p><p>Assalamu&#39;alaikum wr wb.</p><p><strong>Panitia akan memprioritaskan alokasi shaf bagi jamaah yang telah memiliki tiket apabila hadir maksimal pukul 06:30 WIB pada saat pelaksanaan Salat Idul Adha.</strong></p><p><strong>Tunjukkan Tiket Bapak/Ibu kepada Panitia di Gerbang Masuk.</strong></p><p>Panitia melaksanakan Salat Idul Adha dengan memperhatikan&nbsp;<strong>Protokol Kesehatan&nbsp;</strong>sebagai upaya pencegahan penyebaran Covid-19.</p><p>Panitia mensyaratkan hal-hal sebagai berikut kepada jamaah Salat Idul Adha sebagai berikut:</p><ol><li><strong>Jamaah </strong>dalam kondisi&nbsp;<strong>sehat.</strong></li><li><strong>Membawa sajadah/alas </strong>salat masing-masing. Sebaiknya membawa alas tambahan untuk sajadah (koran bekas, matras dll).</li><li><strong>Menggunakan masker</strong> sejak keluar rumah dan selama berada di area tempat pelaksanaan.</li><li><strong>Menjaga kebersihan tangan </strong>dengan sering mencuci tangan menggunakan sabun / <em>hand sanitizer.</em></li><li><strong>Menghindari kontak fisik,</strong> seperti bersalaman atau berpelukan.</li><li><strong>Menjaga jarak</strong> antar jamaah minimal 1 (satu) meter.</li></ol><p>Untuk memastikan pelaksanaan protokol kesehatan pencegahan Covid-19, kami mengharapkan <strong>Jamaah untuk datang lebih awal.</strong></p><p>Salam,</p><p>Panitia Salat Idul Adha 1441H</p>', 'salat-idul-adha-1441-h', 'Publish'),
(15, 7, 22, '[ONLINE WORKSHOP] ICON WORKSHOP 2020', '20200206114415.jpg', '2020-07-24', '2020-07-24', '14:00:00', '17:00:00', ' Jakarta, DKI Jakarta', '<p><strong>[ONLINE WORKSHOP] ICON WORKSHOP 2020</strong></p><p>&nbsp;</p><p>&nbsp;</p><p><strong>SYARAT &amp; KETENTUAN</strong></p><ul><li><strong>Proof of ID is a requirement for every ticket purchased</strong><br /><em>Wajib menunjukkan kartu identitas untuk setiap pembelian tiket</em></li><li><strong>E-voucher can be exchanged on the spot</strong><br /><em>E-voucher ini dapat ditukarkan dengan tiket asli di tempat acara</em></li><li><strong>Tickets are non-refundable</strong><br /><em>Tiket yang sudah dibeli tidak dapat dikembalikan</em></li><li><strong>We are NOT responsible for the lost of this e-voucher</strong><br /><em>Kami tidak bertanggung jawab atas kehilangan e-voucher ini</em></li></ul><ul><li><strong>NO WEAPON &amp; NO DRUGS</strong><br /><em>DILARANG MEMBAWA SENJATA ATAU OBAT-OBATAN</em></li><li><strong>We will have every right to refuse and/or discharge entry for ticket holders that does not meet the Term &amp; Condition</strong><br /><em>Penyelenggara berhak untuk tidak memberikan izin untuk masuk ke dalam tempat acara apabila syarat-syarat &amp; ketentuan tidak dipenuhi</em></li></ul>', 'online-workshop-icon-workshop-2020', 'Publish'),
(16, 7, 22, 'SEMINAR INTERNET GRATIS (Gratis 2-book jika datang ke seminar ini)', '20190519033414_5ce06c46cdb83.jpg', '2020-07-24', '2020-07-24', '09:30:00', '12:00:00', ' GRANG TROPIC SUITES HOTEL, DKI Jakarta', '<p>Ribuan orang sudah ikut seminar Internet ini, dan banyak yg bilang ini</p><p>Seminar internet Strategy TERBAIK yg pernah saya ikuti;</p><p>Bagaimana jika Anda juga punya kesempatan yang sama untuk bisa ikut</p><p>seminar Internet Gratis ini dan tahu 3 Rahasia untuk sukses di tahun 2019</p><p>lewat bisnis internet?</p><p>&nbsp;</p><p>Saya ingin mengundang Anda secara Gratis untuk hadir dalam Seminar</p><p>Internet Strategy yang saya adakan di Hotel di Jakarta Barat hari Sabtu</p><p>jam 9.30-12.00</p><p>&nbsp;</p><p>Dalam seminar ini, Anda akan mendapatkan Formula &amp; Langkah-langkah</p><p>sederhana yang bisa dilakukan oleh siapa saja yang serius untuk sukses di</p><p>Bisnis Internet, sehingga di tahun 2019 Anda bisa mulai dapat</p><p>meningkatkan penghasilan Bisnis Anda.</p><p>&nbsp;</p><p>Yes, Anda juga bisa bertemu dengan banyak teman-teman lain yang</p><p>mungkin punya latar belakang yang sama dengan Anda, sehingga Anda</p><p>bisa ngobrol dan tanya-tanya</p><p>&nbsp;</p><p>Segera amankan tiket Gratis Seminar ini sekarang juga, karena Tempat</p><p>Sangat Terbatas dengan klik tombol &ldquo;FIND TICKET&rdquo; sekarang juga</p>', 'seminar-internet-gratis-gratis-2-book-jika-datang-ke-seminar-ini', 'Publish');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `cover`, `deskripsi`) VALUES
(1, 'Festival', 'festival1.png', ''),
(3, 'Konser', 'konser2.png', ''),
(6, 'Seminar', 'seminar2.png', ''),
(7, 'Workshop', 'workshop2.png', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id_pengunjung` int(11) NOT NULL,
  `id_tiket` int(11) NOT NULL,
  `no_tiket` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jml_tiket` int(2) NOT NULL,
  `status_cek_in` int(2) NOT NULL DEFAULT '0',
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pengunjung`
--

INSERT INTO `pengunjung` (`id_pengunjung`, `id_tiket`, `no_tiket`, `nama`, `email`, `jml_tiket`, `status_cek_in`, `id_user`) VALUES
(12, 1, '012001', 'Zarco', 'zarco@gmail.com', 1, 1, 0),
(13, 1, '012002', 'Zedhio Pratama Zulzaq', 'zedhiopratama@gmail.com', 2, 1, 0),
(15, 1, '012003', 'Bottani', 'fahmimaulanalewenussa@gmail.com', 1, 1, 22),
(16, 2, '012004', 'Lavesto', 'lavesto_wikwik@gmail.com', 1, 0, 0),
(17, 3, '012005', 'Taufig Hidayat', 'taufik2h@gmail.com', 1, 0, 0),
(18, 3, '072006', 'Rahardian Era Muliawan', 'tugaskuliahdemikelulusan@gmail.com', 1, 0, 0),
(19, 9, '072007', 'Rahardian Era Muliawan', 'rahardian.muliawan@students.amikom.ac.id', 1, 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `respon`
--

CREATE TABLE `respon` (
  `id_respon` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan_visitor` text NOT NULL,
  `pesan_admin` text NOT NULL,
  `status` enum('Has Not Reply','Has Reply') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `respon`
--

INSERT INTO `respon` (`id_respon`, `nama_lengkap`, `email`, `pesan_visitor`, `pesan_admin`, `status`) VALUES
(1, 'Tauvig Hidayat', 'taufik2h@gmail.com', 'Cucok brohh', '<p>Hai Taufik, terimakasih telah menghubungi kami.</p>', 'Has Reply'),
(2, 'Lek Nowo', 'lek_nowo@gmail.com', 'Jadikan platform ini platform berbayar', '', 'Has Not Reply'),
(3, 'Anton Tri Pamungkas', 'trianstagram@gmail.com', 'Jadikan platform ini platform berbayar', '', 'Has Not Reply'),
(4, 'Astrianto Widura', 'widura@gmail.com', 'Jadikan platform ini platform berbayar', '', 'Has Not Reply'),
(5, 'Rahardian Era Muliawan', 'azzuraera@gmail.com', 'Jadikan platform ini platform berbayar', '', 'Has Not Reply'),
(6, 'Santra Prabowohendhi', 'kopet@gmail.com', 'Jadikan platform ini platform berbayar', '', 'Has Not Reply'),
(8, 'Zedhio Pratama Zulzaq', 'zedhio.z@students.amikom.ac.id', 'Gedang Goreng Cap Yuk Sri', '<p>jdlkajldkjlajdka</p>', 'Has Reply');

-- --------------------------------------------------------

--
-- Struktur dari tabel `support`
--

CREATE TABLE `support` (
  `id_support` int(11) NOT NULL,
  `cover_support1` varchar(255) NOT NULL,
  `cover_support2` varchar(255) NOT NULL,
  `cover_support3` varchar(255) NOT NULL,
  `cover_support4` varchar(255) NOT NULL,
  `cover_support5` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `support`
--

INSERT INTO `support` (`id_support`, `cover_support1`, `cover_support2`, `cover_support3`, `cover_support4`, `cover_support5`) VALUES
(1, 'abp.jpg', 'amikom.png', 'denistore.png', 'digitalent.png', 'bottani.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `nama_tiket` varchar(100) NOT NULL,
  `deskripsi_tiket` varchar(100) NOT NULL,
  `tgl_mulai_order` date NOT NULL,
  `tgl_berakhir_order` date NOT NULL,
  `tiket_disediakan` int(2) NOT NULL,
  `1_email_1_trans` enum('Ya','Tidak') NOT NULL,
  `maks_trans` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `id_event`, `nama_tiket`, `deskripsi_tiket`, `tgl_mulai_order`, `tgl_berakhir_order`, `tiket_disediakan`, `1_email_1_trans`, `maks_trans`) VALUES
(1, 2, 'Seminar Pranikah Vol.1', 'Ketika mereka bertanya, kapan nikah ?', '2020-07-12', '2020-07-14', 25, 'Ya', 2),
(2, 3, 'WORKSHOP Desainer Grafis', 'Rincian tercantum pada deskripsi event.', '2020-07-12', '2020-07-14', 25, 'Ya', 1),
(3, 4, 'Tresno Ambyar: Didi Kempot Live In Concert', 'Free Standing', '2020-07-12', '2020-07-14', 25, 'Ya', 1),
(4, 5, 'Telkom Edutainment 2020', 'Rincian tertera pada deskripsi event.', '2020-07-12', '2020-07-14', 100, 'Ya', 1),
(5, 6, 'W.A.I.T.T Weareinthistogether digital series Present Phum Viphurit', 'Phum Viphurit, or widely known from his song “Lover Boy” will be having a full band show here in W.A', '2020-07-20', '2020-07-22', 100, 'Ya', 1),
(7, 8, 'W.A.I.T.T Weareinthistogether digital series Present Phum Viphurit', 'Phum Viphurit, or widely known from his song “Lover Boy” will be having a full band show here in W.A', '2020-07-20', '2020-07-21', 100, 'Ya', 1),
(8, 9, '1 Sesi', 'Tickets are valid for 1 (one) participant Ticket Non-refundable For More ', '2020-07-20', '2020-07-23', 100, 'Ya', 1),
(9, 10, 'Free Limited', 'Akses gratis dan terbatas untuk mengikuti webinar The Story & Benefit Behind Internship. Jangan Memb', '2020-07-20', '2020-07-23', 25, 'Ya', 1),
(10, 11, 'GENERAL', '- Masuk setelah VIP', '2020-07-20', '2020-07-23', 50, 'Ya', 1),
(11, 12, 'Student Membership', 'BIAMC Student Membership is renewable yearly.', '2020-07-24', '2020-07-24', 50, 'Ya', 1),
(12, 13, 'FESTIVAL', 'Hari / Tgl : Jumat 23 Juli 2020 Waktu : 19.30 - 21.30 WIB (Doors Open 18.30) Lokasi : Istora Senayan', '2020-07-20', '2020-07-23', 100, 'Ya', 1),
(13, 14, 'Kajian Al Miraj', 'Datang tepat waktu ya!!', '2020-07-20', '2020-07-30', 500, 'Ya', 1),
(14, 15, 'EARLY BIRD-ICON 5-Purposed Leadership', 'ICON 5 (Date : July 24th 2020). Place: GoWork Senayan City. Speaker: Julia Tan', '2020-07-20', '2020-07-23', 25, 'Ya', 1),
(15, 16, 'WITA GRATIS TIKET', 'GRATIS 2-BOOK SIAPA CEPAT DIA DAPAT', '2020-07-20', '2020-07-23', 25, 'Ya', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `tentang_kami` text NOT NULL,
  `level` enum('member','admin') NOT NULL DEFAULT 'member',
  `status` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `no_hp`, `email`, `password`, `logo`, `tentang_kami`, `level`, `status`, `date_created`, `token`) VALUES
(11, 'Zedhio Pratama', '', 'zedhiopratama@gmail.com', '5750c68bcb40421faccab4219e6d80aca0fb9fdf', 'profil.jpg', '', 'admin', '', '2019-11-28 13:29:42', ''),
(21, 'Team Coding', '089538071975', 'zedhio.z@students.amikom.ac.id', '7c222fb2927d828af22f592134e8932480637c0d', 'teamit-logo11.png', 'Lembaga Trainer IT seperti Web Programming, Mobile Programming dan Dekstop Programming dibawah Badan Nasional Standar Profesi', 'member', '1', '2019-11-29 13:00:57', 'DFSoCphSiG6bFyBO1PbsxsHqCIhcm0wey99GxdLCGZE='),
(22, 'Bottani', '089538071975', 'fahmimaulanalewenussa@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'denistore.png', 'Sistem teknologi pertanian yang kreatif dan inovatif', 'member', '1', '2019-12-29 21:20:04', '1fe06bf15d92191a9a4fecd892c74c43a1413fc9'),
(24, '', '', 'tugaskuliahdemikelulusan@gmail.com', 'c889f815cde4544e0a44a330b5643e35c64b9e09', '', '', 'member', '1', '2020-07-22 19:01:57', '017b1a200bd859ca28e3611a17ffd3310619f8d4');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id_config`);

--
-- Indeks untuk tabel `dokumen_user`
--
ALTER TABLE `dokumen_user`
  ADD PRIMARY KEY (`id_dokumen_user`);

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id_pengunjung`);

--
-- Indeks untuk tabel `respon`
--
ALTER TABLE `respon`
  ADD PRIMARY KEY (`id_respon`);

--
-- Indeks untuk tabel `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id_support`);

--
-- Indeks untuk tabel `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `config`
--
ALTER TABLE `config`
  MODIFY `id_config` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `dokumen_user`
--
ALTER TABLE `dokumen_user`
  MODIFY `id_dokumen_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id_pengunjung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `respon`
--
ALTER TABLE `respon`
  MODIFY `id_respon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `support`
--
ALTER TABLE `support`
  MODIFY `id_support` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
