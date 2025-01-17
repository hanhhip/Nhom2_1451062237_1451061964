-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2017 at 05:25 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btlmypham`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `IdDM` int(11) NOT NULL,
  `nameDM` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`IdDM`, `nameDM`) VALUES
(1, 'Trang Điểm Nền'),
(2, 'Trang Điểm Điểm'),
(3, 'Mỹ Phẩm Tẩy Trang'),
(4, 'Dưỡng Da'),
(5, 'Sản Phẩm Khác'),
(6, 'Quan Tâm');

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `IdGH` int(20) NOT NULL,
  `idSP` int(11) NOT NULL,
  `User` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(100) NOT NULL,
  `TinhTrang` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayDat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `IdHD` int(10) NOT NULL,
  `hoten` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` text COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` int(20) NOT NULL,
  `idSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `TongTien` float NOT NULL,
  `NgayDat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spham`
--

CREATE TABLE `spham` (
  `idSP` int(11) NOT NULL,
  `IdDM` int(11) NOT NULL,
  `nameSP` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `HinhAnh` text COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `spham`
--

INSERT INTO `spham` (`idSP`, `IdDM`, `nameSP`, `Gia`, `SoLuong`, `HinhAnh`, `MoTa`) VALUES
(1, 4, 'Kem Chống Nắng Dịu Nhẹ NATURAL SUN ECO MILD BABY SUN CREAM SPF30 PA++', 320000, 4, 'images/chongnang1.jpg', 'Sữa chống nắng dịu nhẹ và cực kỳ thân thiện với làn da của bạn, kể cả bạn có làn da mỏng và nhạy cảm như da em bé. Công thức chống nắng bảo vệ da bạn khỏi tác hại của ánh nắng mặt trời là nguyên nhân làm bỏng rát và sạm đen da. Kết cấu dịu nhẹ, thẩm thấu nhanh và hoàn toàn không gây cảm giác dính rít.'),
(2, 1, 'TFS 24HR FULL STAY CC SPF50+PA++ (TUBE)\r\nPrevious\r\nNext\r\nTFS 24HR FULL STAY CC SPF50+PA++ (TUBE)', 230000, 4, 'images/kemnencc.jpg', 'CC Cream là sản phẩm kem trang điểm đa năng nổi bật về khả năng chống xỉn màu và hạn chế tình trạng lớp nền bị tối màu.'),
(3, 4, 'Kem Chống Nắng Không Bóng Nhờn NATURAL SUN ECO OIL CLEAR SUN CREAM SPF50+ PA+++', 300000, 10, 'images/chongnang2.jpg', 'Sản phẩm chống nắng với công thức đặc biệt chứa bột hút nhờn giúp kiểm soát tốt tình trạng bóng nhờn cho làn da. Mang đến hiệu quả cao trong việc bảo vệ da bạn khỏi tác hại của ánh nắng mặt trời, ngăn ngừa tình trạng sạm đen và lão hóa sớm trên da. Kết cấu nhẹ nhàng, tự nhiên và khi thoa lên da bạn sẽ hoàn toàn không gây cảm giác dính rít.'),
(4, 2, 'Son Đa Năng INK GEL STICK\r\n', 350000, 5, 'images/son1.jpg', 'Công dụng\r\n\r\nSon môi chắc chắn là sản phẩm không thể thiếu trong túi mỹ phẩm của các tín đồ làm đẹp. Với tiêu chí "Chạm nhẹ, lướt êm, môi mềm, chuẩn sắc", INK GEL STICK sẽ làm thỏa lòng ngay cả những làn môi khô, bong tróc nhất. \r\n\r\nSon môi thời thượng INK GEL STICK với kết cấu siêu mềm mượt sẽ làm mềm môi và tạo cảm giác hoàn toàn khác biệt khi sử dụng. \r\n\r\nNgoài ra, độ lên màu chuẩn của son sẽ mang đến sự tươi trẻ và phong cách trang điểm thật ấn tượng cùng khả năng giữ màu, lâu trôi của sản phẩm sẽ làm bạn hài lòng. \r\n\r\nBộ sưu tập đa dạng các sắc màu sẽ giúp bạn dễ dàng chọn lựa để phù hợp phong cách và sở thích của mình.\r\n\r\nThành phần\r\n\r\nDưỡng ẩm và nuôi dưỡng cho làn môi từ tinh dầu hoa hồng Bulgary và tạo hàng rào khóa ẩm ngăn ngừa khô môi nhờ bổ sung Ceramide. \r\n\r\nCác hạt màu chiết xuất hoàn toàn từ thiên nhiên: hoa rum, tầm xuân, mận an toàn và dịu nhẹ với làn môi. \r\n\r\nHướng dẫn sử dụng\r\n\r\nDùng cọ hoặc thoa trực tiếp lên môi.'),
(5, 4, 'Kem chống nắng Perfection Ultime TFS', 580000, 12, 'images/kemchongnang.jpg', 'Kem chống nắng Perfection Ultime TFS là sản phẩm với chiết xuất  từ tinh dầu hoa hướng dương có tác dụng ngăn chặn các tia UVA và UVB ảnh hưởng đến làn da của bạn. Sản phẩm giúp da được bảo vệ tốt hơn, giảm dầu nhờn ở người da dầu hoặc hỗn hợp thiên dầu, giảm bóng nhờn để bạn gái có thể tự tin khoe cá tính dưới nắng hè.'),
(6, 4, 'Kem Chống Nắng Đa Chức Năng NATURAL SUN ECO POWER LONG-LASTING SUN CREAM SPF50+ PA+++', 112000, 22, 'images/kemchongnangbe.jpg', 'Công dụng\r\n\r\nSản phẩm chống nắng đa chức năng, vừa có khả năng bảo vệ da khỏi tác hại của ánh nắng mặt trời, giúp ngăn ngừa tình trạng sạm đen và lão hóa sớm cho da của bạn; đồng thời kem có màu da tự nhiên có thể sử dụng làm kem lót trang điểm. Kết cấu nhẹ nhàng, tự nhiên và khi thoa lên da bạn sẽ hoàn toàn không gây cảm giác dính rít.\r\n\r\nThành phần\r\n\r\nBổ sung thành phần dưỡng da chống oxy hóa từ mầm hoa hướng dương giúp tăng cường rào chắn bảo vệ da khỏi tác hại của ánh nắng mặt trời và môi trường.\r\n\r\nHướng dẫn sử dụng\r\n\r\nSử dụng sau các bước dưỡng da và trước khi trang điểm. Lấy một lượng sản phẩm vừa đủ và dàn trải khắp vùng da mặt và vùng da cổ.'),
(18, 1, 'Kem Nền Đa Năng MAGIC COVER BB CREAM SPF20 PA++', 239000, 12, 'images/kemnenbb.jpg', 'Công dụng\r\n\r\nMột lớp nền trang điểm tự nhiên được rất nhiều bạn quan tâm, đặc biệt là với khí hậu nóng như Việt Nam. Việc chọn BB Cream là một trong những lực chọn hàng đầu hiện nay cho sản phẩm trang điểm nền, những khuyết điểm đáng ghét như thâm do mụn, nám hay tàn nhang thì sao đây. \r\n\r\nMAGIC COVER BB CREAM vừa là kem nền đang năng với tính năng che phủ vượt trội. Chỉ cần một lớp mỏng thôi thì làn da mịn màng không tùy vết sẽ chắc chắn là làn da của bạn. \r\n\r\nCó nhiều tông màu theo từng sắc da mang đến cho bạn nhiều sự lựa chọn thật thú vị.\r\n\r\nHướng dẫn sử dụng\r\n\r\nLấy một lượng sản phẩm vừa đủ và dàn trải đều khắp bề mặt da.'),
(19, 1, 'Kem Nền Đa Năng WATERPROOF BB SPF50+PA+++', 547000, 22, 'images/kemnenbb1.jpg', 'Công dụng\r\n\r\nKem trang điểm của WATERPROOF BB của THEFACESHOP là dòng BB Cream chống thấm nước, vừa có tác dụng trang điểm, vừa có tác dụng chống nắng cao với SPF50/PA+++, tạo lớp màng bảo vệ bạn khỏi tác hại của tia UV trong ánh nắng mặt trời.\r\n\r\nSản phẩm rất thích hợp sử dụng khi bạn đi bơi, đi biển, hay ra mồ hôi trên da hoặc phải hoạt động nhiều ngoài trời.\r\n\r\nHướng dẫn sử dụng\r\n\r\nLắc đều trước khi sử dụng. Lấy một lượng sản phẩm vừa đủ và dàn trải đều khắp bề mặt da.'),
(20, 1, 'Kem Nền Đa Năng POWER PERFECTION BB CREAM SPF37 PA++', 540000, 11, 'images/kemnenbb2.jpg', 'Công dụng\r\n\r\nĐược xem như liệu pháp tổng hợp cho làn da, kem trang điểm 3 trong 1 (chống nhăn da, làm trắng, chống nắng) với lớp phủ hoàn hảo. Lớp trang điểm đẹp hơn (lớp phủ hoàn mỹ + độ bám tốt + lâu trôi) mang đến 1 lớp nền hoàn hảo mà không dày trên da.\r\n\r\nChứa lớp bột phủ trông giống như các tế bào da tạo nên độ bám tốt cho da bạn cảm giác thoải mái với lớp trang điểm mịn màng lâu trôi.\r\n\r\nKết cấu thoáng khí kỳ diệu: Cấu trúc nhẹ nhàng như không khí, nhẹ nhàng thẩm thấu vào da ngay sau khi thoa lên da, mang đến cảm giác thoải mái khi da được thở.\r\n\r\nĐược kiểm nghiệm lâm sàng (Thí nghiệm lâm sàng kiểm tra mức độ săn chắc, tính giữ ẩm, độ phủ, và khả năng lâu trôi của sản phẩm)\r\n\r\nThành phần\r\n\r\nThành phần chính tạo nên nét độ đáo cho sản phẩm:\r\nOmega-3: Làm mềm da, nhẹ nhàng hồi phục da và giữ ẩm da.\r\nPhức hợp Vita: Thúc đẩy sản sinh Collagen, chống oxy hóa.\r\n\r\nHướng dẫn sử dụng\r\n\r\nSử dụng sau bước kem chống nắng. Lấy lượng kem vừa đủ và dàn trải đều khắp bề mặt da.'),
(21, 2, 'Bột vẽ chân mày TFS BROWLASTING POWDER & PENCIL', 235000, 12, 'images/kemat1.jpg', 'Công dụng\r\n\r\nĐôi chân mày giúp tạo nên nét nữ tính cũng như phong cách cho bạn. Ngoài ra, đôi chân mày còn hỗ trợ làm nổi bật phong cách trang điểm mà bạn đã lựa chọn. Vì thế, chọn lựa cho mình sản phẩm chân mày dễ thao tác và mang đến hiệu ứng như mình mong muốn là rất quan trọng. Hiểu được điều này, THEFACESHOP đã cho ra đời một sản phẩm cải tiến kết hợp giúp mang đến sự tiện lợi và rất dễ sử dụng. Đó chính là bút kẻ chân mày 2 đầu tiện dụng! Với một đầu là bút dạng vặn giúp định hình chân mày và một đầu là mút tán bột giúp làm đầy hàng chân mày. Chân mày bạn sẽ sắc nét nhưng cũng không kém phần tự nhiên.\r\nĐặc biệt, công thức bền màu giúp màu sắc lưu giữ và lâu trôi suốt cả ngày.\r\n\r\nBút kẻ chân mày 2 đầu tiện dụng: đầu bút dạng vặn giúp định hình chân mày và đầu mút tán bột giúp làm đầy hàng chân mày. Công thức bền màu và lâu trôi suốt cả ngày.\r\n\r\nHướng dẫn sử dụng\r\n\r\nDùng đầu bút tạo khuôn và dùng đầu mút tán đều phía trong hàng chân mày.'),
(22, 2, 'Chì Chân Mày DESIGNING EYEBROW PENCIL', 12000, 22, 'images/kemay1.jpg', 'Công dụng\r\n\r\nKhuôn mặt hài hòa thì cần rất nhiều điểm, trong đó đôi chân mày đóng một vai trò khá quan trọng, việc vẽ chân mày thanh mảnh tự nhiên để tăng độ sáng long lanh cho đôi mắt hiện nay vẫn còn gặp vấn đề với nhiều bạn. \r\n\r\nDESIGNING EYEBROW PENCIL sẽ giúp bạn khắc phục các nhược điểm của bạn bởi thiết kế bao gồm đầu chì kẻ và cọ chải lông mày tạo cho bạn đôi lông mày tinh tế và hài hòa.  Để hài hòa với màu sắc lông mày, màu tóc nhuộm thì DESIGNING EYEBROW PENCIL có nhiều màu cho bạn lực chọn.\r\n\r\nHướng dẫn sử dụng\r\n\r\nVặn chì lên khoảng 3mm rồi vẽ theo khuôn chân mày, sử dụng đầu chải để điều chỉnh lại cho chân mày gọn và bám đều màu.'),
(23, 2, 'Bột Chân Mày Tiện Dụng TFS BROW MASTER EYEBROW KIT', 325000, 11, 'images/kemay.jpg', 'Công dụng\r\n\r\nBộ kit vẽ chân mày tiện dụng, giúp việc tạo dáng chân mày thật tự nhiên, dễ dàng và hoàn toàn không bị bệt phấn. Công thức bền màu và không nhòe, không trôi trong mồ hôi, bã nhờn.\r\n\r\nThành phần\r\n\r\nCông thức bổ sung thành phần dưỡng da từ tinh dầu argan và jojoba.\r\n\r\nHướng dẫn sử dụng\r\n\r\nDùng cọ đầu dẹp tán bột lên chân mày. Dùng cọ đầu xoáy chải đều bột chân mày.'),
(24, 3, 'Sản Phẩm Làm Sạch Kép MANGO SEED OIL TO FOAM', 125000, 11, 'images/taytrang1.jpg', 'Công dụng\r\n\r\n\r\n\r\nCuộc sống bận rộn ngày nay đôi lúc khiến chúng ta không có đủ thời gian để quan tâm đến bản thân. Tuy nhiên, bước làm sạch da là bước không thể thiếu mỗi ngày.\r\n\r\n\r\n\r\nSự ra đời của sản phẩm làm sạch kép MANGO SEED OIL TO FOAM: hai chức năng trong một sản phẩm tiện dụng chắc chắn sẽ giúp các bạn an tâm rằng làn da mình đã được làm sạch.\r\n\r\n\r\n\r\nSản phẩm kết hợp tẩy trang và sữa rửa mặt giúp làm sạch bụi bẩn, bã nhờn, lớp kem chống nắng,... và lưu lại cảm giác mềm mượt, dễ chịu cho da.\r\n\r\n\r\n\r\nThành phần\r\n\r\n\r\n\r\nBơ hạt xoài giàu dưỡng chất và có khả năng nuôi dưỡng cao giúp làm sạch và mềm mượt da.\r\n\r\n\r\n\r\nHướng dẫn sử dụng\r\n\r\n\r\n\r\nBơm sản phẩm ra lòng bàn tay khô và mát xa bề mặt da nhẹ nhàng. Lưu ý không cần làm ướt da mặt. Hoàn tất bằng bước rửa mặt sạch với nước ấm.'),
(25, 3, 'Sữa Rửa Mặt Bổ Sung Ẩm MANGO SEED CLEANSING FOAM 150ML', 237000, 7, 'images/taytrang2.jpg', 'Công dụng\r\nLàm sạch là bước quan trọng và cần thiết trong quy trình chăm sóc da. Chọn sữa rửa mặt với khả năng tạo bọt cao sẽ hỗ trợ làm sâu bên trong làn da\r\nSữa rửa mặt MANGO SEED CLEANSING FOAM với công thức tạo bọt siêu mịn sẽ giúp loại bỏ bụi bẩn và bã nhờn giúp làm sạch đồng thời lưu lại cảm giác mềm mượt, dễ chịu.\r\n\r\nThành phần\r\nBơ hạt xoài giàu dưỡng chất và có khả năng nuôi dưỡng cao giúp làm sạch và mềm mượt da.\r\n\r\nHướng dẫn sử dụng\r\nLấy một lượng vừa đủ ra lòng bàn tay và tạo bọt kỹ với nước. Dùng bọt mát xa đều khắp bề mặt da trong khoảng thời gian từ 30 giây đến 1 phút. Rửa mặt sạch với nước.'),
(26, 3, 'Dầu Tẩy Trang Làm Sáng Da OIL SPECIALIST BRIGHTENING CLEANSING OIL', 450000, 5, 'images/taytrang3.jpg', 'Công dụng\r\nDầu tẩy trang thích hợp với tất cả các loại da, dạng dầu dịu nhẹ được nhũ hóa có khả năng hòa tan trong nước tạo thành dạng sữa để có thể làm sạch bụi bẩn, phấn trang điểm và bã nhờn trên bề mặt da. Dễ dàng làm sạch với nước và hoàn toàn không gây cảm giác nhờn rít sau khi sử dụng. \r\nLàm sạch hoàn hảo lớp trang điểm trên bề mặt da khiến da mịn màng\r\nGiúp làn da tối xỉn màu tươi sáng rạng rỡ và sạch hoàn hảo như bạn mong muốn'),
(27, 3, 'Dầu Tẩy Trang Thanh Lọc Da OIL SPECIALIST PORE CLEAN CLEANSING OIL', 560000, 12, 'images/taytrang4.jpg', 'Công dụng\r\nDầu tẩy trang thích hợp với tất cả các loại da, dạng dầu dịu nhẹ được nhũ hóa có khả năng hòa tan trong nước tạo thành dạng sữa để có thể làm sạch bụi bẩn, phấn trang điểm và bã nhờn trên bề mặt da. Dễ dàng làm sạch với nước và hoàn toàn không gây cảm giác nhờn rít sau khi sử dụng.\r\nDầu tẩy trang làm sạch dầu thừa sâu trong lỗ chân lông giúp lỗ chân lông thông thoáng\r\nGiải quyết tình trạng tối màu của làn da dầu.'),
(28, 5, 'Nước Hoa SOUL PROMISE RING', 670000, 14, 'images/spkhac1.jpg', 'Công dụng\r\nHương thơm cơ thể luôn tạo được một sức quyến rũ kỳ lạ.\r\nNước hoa với hương thơm ngọt ngào sẽ mang đến nét nữ tính, cuốn hút cho bạn. Chỉ cần trong tích tắc thôi cơ thể bạn sẽ toát lên hương thơm cực kỳ tự nhiên và dễ chịu.\r\nVới hương thơm tự nhiên như từ trong cơ thể mình, chắc chắn người khác sẽ phải ngoái nhìn mỗi khi bạn lướt qua đấy.\r\n\r\nThành phần\r\nHương thơm thanh thoát, nhẹ nhàng với mùi hương chủ đạo từ hoa nhài.\r\n\r\nHướng dẫn sử dụng\r\nTập trung vào những vùng dậy hương trên cơ thể (cổ tay, khuỷu tay).'),
(29, 5, 'Nước Hoa SUZY EAU DE PERFUME', 540000, 11, 'images/spkhac2.jpg', 'Công dụng và thành phần\r\nNước hoa mang thương hiệu của Suzy (thành viên nhóm nhạc Miss A) hương thơm tự nhiên mà quyến rũ đầy mê hoặc với 3 tầng hương.\r\nTầng hương khởi đầu thanh lịch với hương hoa tinh khiết điểm hương trái cây đầy tinh tế.\r\nTầng hương giữa dễ khiến các nàng ngây ngất với với hương lan Nam Phi trắng quyến rũ khó cưỡng xen lẫn hương táo xanh tươi mát.\r\nTầng hương cuối với lớp nền được dung hòa giữa xạ hương, hổ phách nồng ấm sẽ để lại cho bạn ấn tượng khó quên mỗi khi nhỏ vài giọt nước hoa trên người.\r\n\r\nHướng dẫn sử dụng\r\nTập trung vào những vùng dậy hương trên cơ thể (cổ tay, khuỷu tay).v'),
(30, 5, 'Tán Hương HOUSE PERFUME GREEN TEA', 580000, 22, 'images/spkhac3.jpg', 'Công dụng  \r\nThiết kế dễ thương, tinh tế rất phù hợp  trang trí cho không gian sống, làm việc của bạn. Những cánh hoa nhỏ rất đáng yêu sẽ lan tỏa hương thơm dịu nhẹ từ tinh dầu hương trà xanh và cam quýt sẽ mang đến cho bạn 1 cảm giác thật thoải mái, tươi mát\r\n\r\nThành phần\r\nHương thơm của chanh cam quýt và trà xanh tươi\r\nHương đầu: Bergamot, chanh, cam, trà xanh\r\nHương giữa: Rose, lily, hoa nhài, giống anh thảo\r\nHƯơng cuối:Xạ hương, gỗ tuyết tùng, hổ phách, rêu\r\n\r\nHướng dẫn sử dụng\r\nMở nắp lọ tinh dầu và cho dụng cụ tán hương vào. Có thể đổi đầu que tán hương để tăng khả năng tỏa hương. Đặt ở khu vực cần tạo hương thơm và tránh ánh nắng trực tiếp.'),
(31, 5, 'Bộ Sản Phẩm Dành Cho Nam (Fluid, Sun Cream, Perfume)', 1190000, 6, 'images/spkhac4.jpg', 'Công dụng\r\nSữa dưỡng da đa năng có khả năng hoạt động như nước cân bằng giúp se khít lỗ chân lông, đồng thời có khả năng cân bằng ẩm và làm mềm mịn da như sữa dưỡng. Đây là sản phẩm cực kỳ tiện lợi cho nam giới vì chỉ với một bước đơn giản đã có thể chăm sóc hiệu quả cho làn da, phục hồi tế bào mới và mang lại làn da sáng khỏe, mịn màng.\r\n\r\nThành phần\r\nCông thức dưỡng da và kiểm soát nhờn, hạn chế tình trạng bóng dầu nhờ chiết xuất từ lá bạc hà, đồng thời bổ sung khoáng chất từ nguồn nước khoáng Harrogate của Anh Quốc.\r\n\r\nHướng dẫn sử dụng\r\nSử dụng sau bước làm sạch da. Lấy một lượng vừa đủ và dàn trải đều khắp bề mặt da.\r\nKem Chống Nắng Kiểm Soát Nhờn THE FRESH FOR MEN OIL ABSORBING SUN CREAM SPF50+ PA+++ (50 ml)'),
(32, 6, 'Khăn Giấy Tẩy Trang Mắt & Môi HERB DAY LIP&EYE MAKE UP REMOVER PADS', 37000, 21, 'images/khangiay.jpg', 'Công dụng\r\nTẩy trang là một trong những bước quan trọng của việc làm sạch da. Tuy nhiên với những chuyến công tác xa nhà hay những trường hợp đột xuất bạn không mang theo mình sản phẩm tẩy trang hình dạng lọ hoặc hũ thì đã có sản phẩm tẩy trang tiện dụng dạng giấy. Giấy tẩy trang Herb Day có thể làm sạch phấn trang điểm, son môi, màu mắt, má hồng, mascara mà vẫn dịu nhẹ không gây kích ứng. Được thiết kế dạng gói giấy nhỏ gọn dễ mang theo túi xách, bạn có thể có cảm giác làn da sạch sẽ, mềm mịn tươi tắn dù bất cứ lúc nào.\r\n\r\nThành phần\r\nChiết xuất từ các loại hoa quả, ngũ cốc, rất lành tính, phù hợp với mọi loại da, giúp làm sạch lớp trang điểm mà hoàn toàn không gây cảm giác căng khô da sau khi sử dụng. Sản phẩm mang đến sự tiện lợi và dễ dàng mang theo khi đi du lịch, công tác...\r\n\r\nHướng dẫn sử dụng\r\n* Tẩy trang mắt: Lấy khăn giấy và áp nhẹ lên vùng mắt trong khoảng 5 giây, lau nhẹ nhàng theo hướng từ trên xuống dưới.\r\n* Tẩy trang môi: Lấy khăn giấy áp nhẹ lên môi trong khoảng 5 giây, lau nhẹ nhàng từ giữa ra 2 bên khóe môi.'),
(33, 6, 'Mặt Nạ Giấy Phục Hồi Ẩm Tối Ưu THEFACESHOP REAL NATURE AVOCADO FACE MASK(SET 5PCS)', 120000, 11, 'images/matna1.png', 'Công dụng\r\nMặt nạ giấy dưỡng mềm mịn da THEFACESHOP Real Natural Mask Avocado được chiết xuất từ quả bơ có công dụng dưỡng mềm mượt da. Cung cấp độ ẩm cho da tối ưu, ngoài ra còn giúp làm sáng da. Mặt nạ Bơ thích hợp dành cho những làn da khô, nếp nhăn li ti xuất hiện nhiều.\r\n\r\nThành phần\r\nThành phần quả bơ có công dụng tuyệt vời trong việc làm đẹp và bảo vệ sức khoẻ, ở mỗi quả bơ có một lượng dinh dưỡng rất cao với con số Protêin và chất béo chưa bão hoà lên đến hơn 15%. Chính vì vậy bơ có khả năng cung độ ẩm cho làn da khô rất lý tưởng.\r\n\r\nHướng dẫn sử dụng\r\nSử dụng sau bước làm sạch da và thoa nước cân bằng. Đắp khoảng 15 đến 20 phút. Sau khi lấy mặt nạ, vỗ nhẹ để hấp thụ hoàn toàn dưỡng chất.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`IdDM`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`IdGH`),
  ADD KEY `IdSP` (`idSP`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`IdHD`),
  ADD KEY `IdSP` (`idSP`);

--
-- Indexes for table `spham`
--
ALTER TABLE `spham`
  ADD PRIMARY KEY (`idSP`),
  ADD KEY `IdDM` (`IdDM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `IdDM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `IdGH` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `IdHD` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `spham`
--
ALTER TABLE `spham`
  MODIFY `idSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD CONSTRAINT `danhmuc_ibfk_1` FOREIGN KEY (`IdDM`) REFERENCES `spham` (`IdDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`idSP`) REFERENCES `spham` (`idSP`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`idSP`) REFERENCES `spham` (`idSP`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
