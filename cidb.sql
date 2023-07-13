-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 04:50 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_image`
--

CREATE TABLE `mst_image` (
  `img_id` int(10) NOT NULL,
  `uploaded_img` blob NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(10) NOT NULL COMMENT '1=active 0=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mst_image`
--

INSERT INTO `mst_image` (`img_id`, `uploaded_img`, `date`, `status`) VALUES
(1, 0x89504e470d0a1a0a0000000d494844520000030c000001cc0802000000f76ab8b10000001974455874536f6674776172650041646f626520496d616765526561647971c9653c000026d64944415478daecdd4f6c9b797a1f70f2a5244aa135926c4991edf1c6ee6167bdb3170db0353c98c1ae758b2fe90c920d303da499de7a2b5020b76e16055ae49063f6b88ba040d14582b4a7c92d494f4510141b148b6c80a458c5ca8c6472b5942d51a648f165f98e66e78fc77f48e925f9fedef7f381606864591afd48bdef97effb3cbf67e6f50fbe530200e08b224b0000202401000849000042120080900400202401000849000042120080900400202401000849000042120080900400202401002024010008490000421200809004002024010008490000421200809004002024010008490000421200809004002024010008490000084900004212008090040020240100084900004212008090040020240100084900004212008090040020240100084900000849000042120080900400202401000849000042120080900400202401000849000042120080900400202401000849000042120000421200809004002024010008490000421200809004002024010008490000421200809004002024010008490000421200004212008090040020240100084900004212008090040020240100084900004212008090040020240100084900004212008090040080900400202401000849000042120080900400202401004cd18c256018dfbcfcf51fdef9ee309ff9bb7ffdbdbff9c5df593198e4efddf7fff14fbfff0f7f62c5205dae2401000849000042120080900400902685dba4ec5fbdfaed6f5e79dd3ac0c55d5f58b3082024911fbf71fd5b1601801c70bb0d00e0195c4922657ff0d33ffefbc7dbd6012eee6bafdcfcbddbbf631d404822270609c9669200e480db6d000042120080900400706e6a9218cae1e9f1539546dfbcfcf5e4e3ddd6df1ffed3539f69b9604cbf775f5bfcb5c5d9dae09da73efed171dd7241eacaaf7ff01dabc039fce4d77f7476a4feddbffe9ed580c9f8e19def9ebd3ef9c69fffb6d5807173bb0d20eb9aed5ea7d7b70e202401f099a34efcf8a4f7b0d58dc52410920038d33eedef3f391dbc3348481fe7244109842480c2ebf4fa8de3eee7ffd34d371092008a2eee97f69f9cbac5064212005f304848ae1b819004c01734dbbde36efc824f909f404802289cb376b6177f4ee3d89d381092008aa4d3fba49dedc50611e961ab6bb9404802288491a2cf90710a3837b3dbc88ac5d9dad7167fcd3a5064cd76ef5f2cbce82edad25cedec9db7d7bff1c947e62bf395b2a51bd553c3ef404822d37ef82fffe3d75eb9691d60181f6cfd278b70117ff0d33ffeafdb1f58075ecced36b2424202266671b6661178295792c8968f9e34fee787ffcb3a5028c7ddb83b5c4bffbfbe75ef2bb5f5c13bffe5273f7afaac5f8da2b2fb6e2f717d61ed37ae7fcb3a202411a40f9f34beff0f7f621d288e4eaf3ffcf0dab7d65f3f0b49fff927fffda9bf9a9f897eb5e690fe12dfbcfc752189e1b9dd063035bf1c5b9bc2976a9fc69add404802c889b412d299a34e3c78b3aa202401846d1cd3d94c7c8314b9814dd6f57ff6c422903fed5ebfdbee55477d5d7bf2c985a2eacec9f33ee7a07c7265612652c37d663e2a5fad5a068424f2a9f7838f2c02f9335b2aad9ee35f6d754b379277567f547fd14b8bc12f8e25fe58f9d642e5fd6bd681f371bb0d00404802001092000084240000210900404802001092000084240000210900404802001092000084240000210900404802004048020010920000842400002109004048020010920000842400002109004048020010920000842400002109004048020010920000109200008424000021090040480200109200008424000021090040480200109200008424000021090020f7662c0130b2f9a87c6ba17cb55abe393ff8afc1fb671feeffec49f2e776bbbf7b92bcdf8e2d1520240185106d2e966fd7066fcffcdbb3b4f45966fa696bf016fff8d0ba01421290e778146d5d2e2d8f70d0388b53837f15ffc52f4425404802f2a67cb51afdfa954faf0f8d6c79267a77bd7c7729fe1f8dfeee89f504827971680980171d2336172bef5f3b7f42fa5cd2aafcbb57075fcd9202421210fe0162eb72f4ee7a693eb503c5e0ab45f7572d2c202401211f1deeaf46f756d2ffb277972a83e005202401411e1a36170769664c5fbc3cf8e2eebb014212109ca4527bcc177b9252ee0bd739010849c04455dedb98c47749b5da09404802c67c50187133a4f35b9e89de5cb6e080900484603e1a5f29d2330e4083efe56212202401011c11de5c9e686a196432179300210908e08830f1a6336d6e809004645df96a7542d5489fb73ca3cd0d1092806c87a4dbb5427d5f002109182eacdc9c9fcef7dd98b3f88090046438245dad4ee7fbbadd06084940a6e9c6071092804c25241793002109c8a869dd6b031092806c6bc7d6004048029ed6df3d99e6b76f763d04809004f0a58876706a11002109c86a5299d6c52409091092804cdbeb142b9c010849c05061e5674fa6f37d7fdab2f880900464573ca5b032ad7006202401c369c793bfa833f88eaab6012109c8baf87f3fcafd770410928091f57ff6649237bf26fced008424e0fce23fdf9fdcf7facba605078424200cfddd93c9dc021b7c1797910021090849fcc1cfc7bd775112c5fee21741af527979c653058424a0707a3ff8688c1b61b7e3f8bfed053d5237babf5af9b7d74bf30ea120240145d38e7b63ca3183affc838f826efb8f3617a3bb4ba5e599cafbd73c534048020aa7bf7b72fa87ff94ee7db7c157ebfdd14ed07348ca57abd1bbeb9fbe5ff9e5fb80900414c9d9559f1f1fa693907eda0afd1a52f94b578fca9b8bd1e6a2670ae492c243e06539e9cfeae51f1f26974cce5daa7c70dafbe0e7c1cf689b8fa2f736be5c8714bdbb3e487e3af5207f5c49025e6e90004efff09fe23fab8f5ccd7d703af857c96dbbf0a7d80e6262f96af5d97ff5dec6f3fe0a08972b49c0b0e21f1f0ede0669a0bcb958be39ff8258d0df3de96fb7fb3f3e0cbafce80b2f28b72e976fd79efbd7f351f4ce5ad2121872cb1e202401179204a05f469ff2ad854fff2c7d7cc1e9d33ff3246967bbb7f2e2cf498ab8dfdb487212202401e435153d957ea2fbab437de6ad85c167c61ffcdc130372f202c912003cd77c94b4b30dbd6964747749b31b08490012d2b38eaacfafef068424803ca8dc5f3d5fdc19442b93dd404802c8e9c1f1ee52f9dc37ce9eb3a31220240184ad7cbb3664b1f673bf828925202401e42d21a5946f92a4b575d97a829004900bf35125bd3b65d1bd15cd6e2024c1b3edef97b6b72d03c148dad952adb98ece5bfd0d0849e459ab55dadbfbe44f0820218da37bff5cfb0800421279d6ed9676763e797f7fbf74706049c8f6d17073b13ca65b6372120849f0a95eaff4e041f2e7a73efcb0d46e5b18322a992832ce66b4a418fc62ed728090444e3c33126d6f7f2136415612d2c7b369c7fe5d3617a3bb4b561b84240aadd1281d1e3ee3e3838424279139f351f4ceda64ee852545dcb76b961c84240a6a108feaf5e7fe6dbbad889b6ca9bcb731c9eeb38ac96e2024514c830cf4e1872ff99c8383a48e1b327104bcbf5abeb530d16f99ea3e4c80904418be5cacfd3c7b7bcfbe1f07133dfc4dab4868792669760384248a63672769fb1f926637a6ab7cb51a4d6fb69ac96e20245120679b460eafd74b7292226ea6935132702d27697633b104842472ef7c6546edf667bb4dc2e4cc475136aa82a277d7275d110508494cd230c5dacf6362099397a9feb209f7d60142129373b6f5d1459858c2440f795b97b3b553d104776902842426aadd4ea1ae481137133ade6d2e46f756b2f67f3599fdbe012189505df072140c9345a2ac4e4f4b26c799ec0642123c933637c66b3e4adad9327c572bbabba4d90d8424f260a46e7f9090863a1c9b58024212a1eb76b5ee1392cafdd550c2c720cc9597673c6429eaf4fa8337eb8090c4240c3f7be47c5a2d134b48f5187777a91cd06dacccece1941b71bfbfffe4341693109298800974a26976232de5dbb5e00aa24d2c495da7d76f1c9f5a078424c6abd198c4651e134b2878da48b2ddd6658f608adaa7f1fe1339092189b119c4a37a7d524734134bb8a0f9a812f27dabe8de8a66b7741d75e2c19b754048622ca9e5dcb347cec7c4122e2269670bbc023a0aa7de3c14fb4f4e1571232491b271176b3ff788666209e74b48f9e8a50f64e782b034db6ee4232491aa9d9da4ed7f2a267cf98a3c1cd43617cbb9b951252781904496ededd93a926024f33df2d51a96949f9b5802421219747090dcf38260f2441e27c5963717a3bb4b1edf74d93a0921890b997cb1369cdf7c14bdb396d73b534911f7ed9a0739452dcd6e08499c5baf57dadeb60c04a3f2de46be7bc12a26bba5add9d6ec8690c4b90c1292ed1c4314cf15f1973ab9d0726b21e73f64e03b3f65f197a55f7ad8eabaed8690c4680c0609d4de9df50fdfda28da4f1d15a7646779c6c5243909218969b23b51a01edd5a1cbc1daf2fd4df285033d4203444269d71019d5ebfd936b104218921d8e73a50272bd5bd3b9f6485e657970669a91009697926d946082ee6a8133f3a515e8090c40b75bb26a685f9c0d5661e6c7d212b0c02d32036e5fcc79e8fa202d7e8e4bf066bb20edabde3ae663784249e635ab347b8a0782efaf0ed8d78f6e9dfe5416cca771177c1bbbd72dfcd377926bb2124f15c8ab50355df5c3d597ec6c972109b729c93a2adcb45df3728d7fb424de7f546bfd438b6c72442125fd268940e0f2d43789aafbda8fc68109e06112a8787adcdc5e8de8a473faf3b8c4fd120223d6c75ad0342129f19c4a37add3284e7e8d5da4b33d02042ed7fe372ce92416496d9a7ab716bc16aa4abd3ebef3fd1ec8690c4c7cc1e09d4c94a75f7ce50adef3fffc6ca204ee5e4c79e8f927636f7983e7f10bfbb146d2e5a87345f7e74e2c79add109250ac1da8782edabdb3f6e562ede7d9cd47b39b84f4bce3b88925696bb67bed53d5490849c5b6b393b4fd139c24f42c8f70521cc4a90fdfda08bd88bb727f551478eee2bc7fadbc3c631d52d438ee6a7643482aaebdbd64eb4882537f63f5e8fac8b7cfbab599a02796447797ca6e2abd40b1778d1a87b89f6c0aa0d94d48a2880e0e92f12304e7d1adc5e657cf39a7ec787d61ef4e90133ccab76bca935fbe4a57ab15135a52d5e9f51bc78ab885240a46b176a04e56aa179ccb7636dfcdb93fb739699026b72e5b87348f96a7b16637218902e9f54adbdb96213cc9ceda6f6d0c5facfd3c814d2c998f2aee228d744cbfb7a2d92d5d479d78f0661d84240a619090b4b385e8c1d6b56e6d266b5f6adc927636f5c8a31ed655b8a7cdc412218942307b24507b23b6b3bd58d2ecf67600cd6e159dede763af843178d8eaaae21692c8f58ba1fda45e9be08ca39028fb134ba2cd45ed6c72527698ec26249167ad56d2f34f704e56aa636a49cbf2c49264da8662ed0baee1d56a454b60aa4c2c1192c8a76e37d93792f01eb8dacc83ad6be3fbfad99c58626e6b6a2bb9b918dd5db20e293aeec6cdb6a24e21891c317b2450493bdbdb29b4b3bd58e62696cc47d13b6bee13a57688bfbf5abe5db30e297a7cd2d3ec2624911f8ab50355df5c4db158fbb9512c63134b2aef6d28d64e7949d5bfa7add9d6ec2624910b8d46e9f0d0320478147e6d6962bb3e6667624972d9e3d682473f65f69a4afda5453f697653c42d2411b6413caad72d43788e5ead4db8f52c0b134b220534e3b33c9334bb2127212471c6ec91409dac5477a79157a63bb1a47cb5aa9d6ddc2b6cba4bba3abd7eb3add94d4822408ab5437d793a17edde591b77b1f6f34c6b6249d9758ec9acf3e6a28925e93aeac48f4e1c67852442b3b393b4fd139cdd5477d63e87294c2c998f221533133be2bfbbaeea2b5d07edde7157b39b904438f6f692ad23094efd8dd5a3eb53eed69efcc412bd5713a67f307526bb094984f3b2e620193f42701edd5a6c7e351365cb939c58126d5db68bcfa4d9892af59716269608490441b176a04e56aaf5373234416232134b9276b67b2b1efdc9b3a779ea0611e9614b8983904486f57aa5ed6dcb10e0cbd0b98fb7739ccdd62fe3b8279624ed6c268b4d3127dd5ab0fee932d94d4822d30609493b5b88a6502b3d9c314e2c31a33e0b47ffbb4b9addd275d4891f6b761392c820b34702b537ed76b61718d7c41209293b270055f3696bb67bed53d549421259b2bf9fd46b139ce9eedf388c714c2ca9dc5f7562ce8e41602d2fcf588714358ebb9add8424b2a2d54a7afe09cec94a75ea93408691eec492e8ee52d92d9e4cb14f55dae27eb22980663721890cbcd0ef26fb4612de03579b79b015cc1ed3695df12adfae2916ce20134b52d7e9f51bc78ab88524a6caec91505f68ce7dbc61e36c48bf7d179f58e24c9ce99c34c8af5b97ad438adaa7b1663721896952ac1da8fae66a668bb55fe0425d78f351c53d9d8c9f0ceead68764bd751271ebc590721892968344a878796213ccdd796325eacfd3c17995892b4b3a90ecefef9404d7dda4c2c11929882413caad72d4380af2c5fad4d6ce2c7389c6f6289e96cc1b03bc3183c6c7555710b494c8ed923a1268c95eaee9de08b72469d58126d2e6a6793938acc64372189c951ac1dea81722edabdb31656b1f6f30c3fb124997da1583b344989bd26c4549958222431213b3b49db3fc1d9cdf0cedae7fc715ed6ec668a6ac039697331babb641d5274dc8d9b6daf6e8524c6696f2fd93a92e0d4df583dba5ecbd34ff4f28925f351f4ce9abb36019f1beeaf966fd7ac438a1e9ff434bb09498ccbc141327e84e03cbab5d8fc6a0e5f94bf786249e5bd0dc5daa153719fba665bb39b90c41828d60ed4c94ab5fe466ecb3b9e37b124b908716bc1a31f3cbb5ba52dee27cd6e8ab88524d2d4eb95b6b72d438007c4b98fef49cde6f9b7eccb134b22e52c79b23c9334bb21271595eddd02304848536f67fbf68dafffe56f7ff7991fefff871f7dfe23f77ef4bdbfdaf93b8f5ae9825b548763efcefafc41a7da3c297d5cacad9d2d45dfbcfcf51fdef9ee33ffea27bffe85dfbbefffe39f7eff1ffe641cff0f67f3647a7f6667b6d4747afd66fbf4ca82f36f005c49ca3ab347c28d0e796a671b260e965d75c8a9a4d9cd6657a93aeac48f4e34bb054092cdb4fdfda45e9be07cf92654bec5b3d1deb7366ede2ca95fc9edebe977d7fb07a7fd9f3db114693968f766a3f2afccfa95c9f633df126456ab95f4fc139c9395eade9dc2dd725afd46552754bee9584cff65b0c96e4212e7d3ed26fb4612de03579b79b055b85b4eebeba545776372cfde576933b124fbdc6ecba2a0678ffcce37befded1baf9ffb9fdf5c5afbfd377febf31fb9f2ca2f02faf18f5ead15a714e993575a95d2952b7e6bc7e2fac25aa6fe7fce7651effde0230f4d5a0611e961ab7bf5d2aca510921856d0c5daffe6f56f5de49fdf7c65edbb6ffee6173ef4a66704642627dd5a88eeafc61ffcdc52a4e56cb29b66b78cbe08b40459d368940e0f2d0390d5d3c6dd25cd6ee93aeac48f35bb6592e89a2d8378540f7c3b927fff977ffcb7f5ed73fcc3b37d9806ff76f0153efff11b7f11c0b5fda3576bb99c3df2a23365a574fd7aa9e275d6387ded959bbf77fb77b2f8e8bfbbdedfebf4774f3c466969b67b7395687ea66c2984249e2d1fb3470629e7229b491e9c1c3ff5cf5ffb3fff2fe33ff2c94af5c1cd6bf14eb106c70c12d243fb531458e5fd6bbd3fdae91f9c5a8ab4348ebbbf5a9b9dabc849597a3d60093222e862ed228be7a2dd3b6b71c1363bb972a5b4bcecc12fb6f92832d92ddd83493fd91440b39b90c433ecec246dff0467b7483b6b9f595c2c6d6c78e4f9646289754851a7d76f1cbb382724f1457b7bc9d69104a7fec6ead1f55ab12e1fcc2737dae0939c74bb166d5db60e296a9fc6fb4fe4a4ac5093347d0707c9f891acff4f7ea954e8059f599007eed1adc5a2156b572aa5af7c25f993c9383c3dfe9b5f0cf57bf7d1f1d43a3ea27b2ba56637feb1a6dcd41c75e26a25be34e72a8690e4454320c5da7f5bdfbef7a3ef79bc3e75b252adbfb15ab49ffae6cdd2ac4def26e8ef1f6fffee5f07f07b17dd5fd5ec96aefd27a7731545dc19786e5b8229eaf54adbdb96213cf15cf4e15b1b452bd6be7e3db9d706cf301f55debfa6883b5d0f5b5d55dc4252a10d129276b6103dd8bad6ad15eb2aecf2b27636e4a4c9be1833d94d482ab2a0678f14d95ef1dad96a35c5dabc5cd2ec767fd53aa4e86c62897510920a677f3fa9d726388f6e2d0ede8a758160be74e386479ee172d2e6627477c93aa4e8b81b37dbee38084945d26a253dff04e764a5ba77a758bbc254ce668f686763f893cafdd5f2ed9a7548d1e393de5127b60e42522174bbc9be9184f7c0d5661e6c5d2bda4f7de386626d46cfd6efae97af56ad438a9aedd34e4f7592909477668f042a69677bbb70ed6c1b1b4935128c6c3eaa985892ee21a89f34bb29e21692724eb176a0ea9bab452bd65e5e4e06b4c1799f403349b31b729290c4901a8dd2a13d6903d47c6da980c5dadad9b82093dd52d7e9f59b6dcd6e42521e0de251bd6e19c273f46aadbe59acaee6d9d964676d4821276d2e469b8bd621cd2352277e74a2624348ca9750668ff0949395ea6ef1dad94c6723cd73ccbbebe55b0bd6214507edde7157b39b9094178ab50315cf45bb77d6cc1e818b26eff73634bba56bff89663721292f767692b67f82b35bbc9db5d7d74b8bee8d90baf9287a674db35b9a2fe14c2c1192f2616f2fd93a92e0d4df583dba5eacf6f7e5e5d2da9a479eb1488ab8dfdbb00e291a44a4872dafbf85a4901d1c24e34708cea35b8bcdaf166bb4c2fc7cb22b128c3127dd5a884c764b95c96e4252c0146b07ea64a55a7fa35887f24a25696753accdd8cf37779734bba5eba8133fd6ec262405a7d72b6d6f5b86f0243b6bbf55ac9db52524267aca31b1246dcd76af7daa3a49480aca202169670bd183ad6bddda4ca17ee48d0ded6c4c3697bf7fadbc3c631d52d438ee6a7613928261f648a0f68ad7ce76e54a52af0d13351f4526bba52aee279b026876139202b0bf9fd46b139c47b7168b367b647151b136d3616249ea3abd7ee35811b790946dad56d2f34f704e56aa7b05db59db7436a69c936ed7a2adcbd62145edd358b39b90945ddd6eb26f24e13d70b599075bc51a576ef6089938fddc5bd1ec96aea34e3c78b30e4252e6983d12a8a49deded8da2cd1eb9793399620bd33f03dd5fd5ec962e134b84a42c52ac1da8fae66ad18ab54d672343e6a3cafbd71471a7eb61abab8a5b48ca9046a374786819c2d37c6da968c5dacbcbdad9909372ce643721294306f1a85eb70ce1397ab556df2cd6cedab59a626db228697633b12455269608499960f648a04e56aabbc56b67bb71c3234f5673d2e6627477c93aa4e8b81b37dbea6485a4e951ac1da8782edabdb356b4d923d7af6b6723db67a3fbabe5db35eb90a2c7273dcd6e42d2d4ecec246dff0467b7783b6bdfb8a1589b10d2bcc96e696bb635bb0949d3b0b7976c1d4970ea6fac1e5d2fd6abd58d8da41a0902301f554c2c4955dc4f9add14710b49137570908c1f21388f6e2d36bf5aacba87e5e564401b84f3949d499add909384a44029d60ed4c94ab5fe46b13a68cc1e214426bba5aed3eb37db9add84a4f1ebf54adbdb9621c0d75273d1876f156b67edd9d964676d0832276d2e9a5892aea34efce8449f919034668384a49d2d440fb6ae756b33c5f9794d6723f893d3bbebe55b0bd6214507edde7157b39b903436668f046aaf78ed6c668f9087acffde8666b77499ec26248dedb9b59fd46b139c47b7168b367b647dbdb4e84e0539301f45efac69764b91892542d258b45a49cf3fc13959a9ee156c67ede5e5d2da9a479e9c488ab8dfdbb00e291a44a4872d5bfc0949e9e976937d2309ef81abcd3cd82a562ff1fc7cb22b12e42a27dd5a884c764b95c96e42526acc1e0954d2cef6f646d1668fdcbca9589b3c9ea8ee2e69764bd751277eacd94d48ba38c5da81aa6fae16aa585b4222e7e72a134bd2d66cf7daa7aa9384a40b68344a87879621c05ffed7968a56acbdb1a19d8dbcbf1278ff5a7979c63aa4798e3bee6a761392ce69108fea75cb109ea3576bf5cd6255305cb992d46b43cecd4791c96ea98afbc9a6009add84a491993d12a89395ea6ec1dad91617156b53142696a4aed3eb378e15710b49a350ac1deaaba2b968f7ce5aa18ab54d67a37039e9762ddaba6c1dd2bc28701a6b76139246b0b393b4fd139cdd82edac6df608053d6fdd5bd1ec96aea34e3c78b30e5fa608ee697b7bc9d69184f74bfe6a2d9e8d7ea5fea4383ff2da7a69e69f4bca0928a0f2ed5ae9a7ad52db793d35fb4f4ee72ab37395b2a510929eebe020193f42882efd736bf056b49fda3d61202d0f5bddab9766672239e9336eb77d46b136008565b29b90f4fc57e4bdd2f6b66500a0b84c2c11929e6d9090b4b3015070c7ddb8d9763a14923ec7ec110038f3f8a4a7d94d48fac4fe7e52af0d009c69b64f4d2c1192926effbd3d4f0300f84cdc4f9add1471173a2475bbc9be9100809c24247dc6ec110078814eafdf6c17bad9adb82149b13600bcd851277e7452dccb09050d498d46e9f0d0931f005ee2a0dd3bee16b4d9ad882169108fea754f7b0018cafe938236bb152e24993d02002329ecc492620db855ac1da29dad6bd37c1931dbaf2e7bc640b067f7aaed00d331884867137085a4fc9e6e7792b67fc272bcbe30b58434d35f58ef9e44331e0580b3c96e57160a74482c50c4dedb4bb68e842195a3d2fc95d3b257a100bf74d4891f17a9d9ad286780838364fc080cafba7c1acdda951fe00b9aed5efbb428c7c6428424c5da8c6aee95deccaf98ef08f00c8de36e419addf27f67b1d72b6d6f7b4a07e3e6d2daefbff95bd37eedd09fbb2421410e7da5b666112e2eee279b02fc6a6d362a0b49811b2424ed6c2185a457d6befbe66f5a07802cebf4fa8de3414eca798ac8f9ed36b34702f2573b7f671180c938e86ae4b9a8f669dc6ce7fc2244f9f50fbe93d79f6d7f3fe9682320dfbef1f5e9fe0f6867832278d46dfddfe6cfac432aae2ccc5c9acbed7133b717ca5a2d09293cd3bd98347ff974a6af14096004fb4f4ee72ab373957c5627e533fd75bbc9be9130bcd94bdad900cee361ab9bd79125390c49668f30aa9985d8ec1180f3c9f164b71c8624c5da8cf63b30dbafae9c5a0780733b9b582224655da3513a3cf4746558e5a8b4b0aa581be0a28ebbf1a3dc4d2cc9d5c961108fea754f544690b4b355cc1e0148c141bb77d4c95571677e4292d9238c9c902e9f56aa8ab50152d36c9fe66962494e4292626d46355b8bb5b301a42bee27cd6eb929e2ce4948dad949dafe614895aa626d0039a90021696f2fd93a12867dd2cff6e7afc8d400e3d2e9f59bed3cbc100d3e241d1c24e3476048e5282945d2ce063056479df871f8cd6e619f2b146b33aaeaca6934ab9d0d60ec9aedde7137ecd2cf804352af57dadef624649484b4dc9b5950ac0d3021fb4fc26e760b38240d1292763686375b8b672f79c6004c4ee8134b420d49668f30da13ddec1180691844a487ad507b65820c49fbfb49bd360cfb2c9fe92fac696703988e7027bb8517925aada4e71f8694b4b35dd1ce06304d479d38c48925819d3abadd64df48185e75593b1bc0f4ed3f396d9f0676340e2924993dc2a8e65ee9993d0290118de36e58cd6e218524c5da8c64b6160f42927500c888b89f5c4f0aa8d92d9890d468940e0f3dc118fa993ddb9f5bd2ce06902d9d5ebf711cccc1398c90348847f5baa716c32a47a585b5ae626d800c6a9fc6cd761897f903388d983dc2a82424802c7b7cd20ba2d92deb6712c5da8c6afeb2763680ac0b626249d643d2ce4ed2f60f439abda49d0d200c0f5bdd8c5771673a24eded255b47c2906616e2eab2ab8e0061c8fe64b7ec86a4838364fc080cfb54369d0d2034199f5892d190a4589b9124ed6cab668f0084e7b81b3f3ac9e84d802c9e557abdd2f6b6a70d2348a6b355146b0304e9a09dd166b72c86a44142d2cec60809e9f269a5aa581b2060cd76169bdd321792cc1e6124b3b5583b1b40e8e27ed2ec96b522ee6c85a4fdfda45e1b8654a92ad60690930a10925aada4e71f867deecef6e7afd8440b203f3abd7eb39da197be590949dd6eb26f240ca91c25a548dad90072e6a8133fce4cb35b264e32668f30aaea8ad92300f9d46cf78ebb992836cd444852accd680969b937b3a0581b20b73232d96dfa21a9d1281d1e7a3e30acd95a3c7bc95547803ccbc8c4922987a4413caad73d1918faf96af60840310c22d2c3d694bb73a61992cc1e61b427eb4c7f614d3b1b40514c7db2dbd44292626d4692b4b35dd1ce06502c479d788a134ba676ced9d949dafe6148d565ed6c0045b4ffe4b47d3a9de3ff7442d2de5eb275240c69ee959ed9230085d538ee4ea5d96d0a21e9e020193f02439aadc58390641d000a2bee27d79326dfec36e990a4589bd19ea0b3fdb925ed6c0045d7e9f51bc7933e1d4c3424f57aa5ed6d0f34c32a47a585b5ae626d0006daa771b33dd11b0b133dff0c1292763686272101f0798f4f7a936c769bdc29c8ec1146327f593b1b004f9be4c4920985a4fdfda45e1b86347b493b1b00cff6b0d59d4c15f7244252ab95f4fcc3906616e2eab2fbb2003cdbc426bb8d3d2475bbc9be9130ec33d27436005e6632134bc61b92cc1e6124493bdbaad92300bcdc71377e7432de8431ded391626d46924c67ab28d606602807edf136bb8d3124351aa5c3438f204327a4cba795aa626d0046d06c8fb1d96d5c2169108fea758f1dc39aadc5dad9001855dc4f9addc654c43d969064f60823a954156b0390b99c947e4852accd684fc1d9fefc95ae7500e0dc3abd7eb39dfe8bedf443d2ce4ed2f60fc328474929927636002ee8a8133f4ebbd92de5b3d3de5eb275240ca9ba62f60800e968b67bc7dd34cb5bd30c490707c9f8111836212df76616146b03909a7427bba51692146b3392d95a3c7b49e51a00694a7762493a21a9d72b6d6f7b6818fa6967f60800e33188480f5be91447a713920609493b1bc33ee766fa0b6b6afb011897b426bba51092cc1e6178493bdb15ed6c008cd75127bef8c4928b9eacf6f7937a6d185275593b1b0093b0ffe4b47d7aa133ce854252ab95f4fcc390e65ee9993d02c0c4348ebb1769763b7f48ea76937d236148b3b5781092ac03001313f793eb49e76e763b6748327b84d19e67b3fdb925ed6c004c5aa7d76f1c9ff30474ce90a4589be195a3d2c25a57b1360053d13e8d9bedf35cd739cf89abd1281d1e5a7386252101305d8f4f7ae768761bf9dc358847f5bad56658f397b5b301307de79858325a48327b8491cc5ed2ce0640563c6c7547aae21e212429d66624330b7175d9d30580ac1875b2db082169672769fb87a19e58a6b301903d234d2c193624eded255b47c2309276b655b34700c8a2e36efce864a81b1d439dc70e0e92f12330a4643a5b45b136001975d01eaad9ede52149b136a325a4cba795aa626d0032add97e79b3db4b4252af57dadeb6920c6bb6166b670320fbe27ed2ecf6e222ee9784a44142d2cec6902a55c5da00e42727bd2824993dc2f0a2d9fefc15dd8f0084a4d3eb37dba72387a4fdfda45e1b86518e925224ed6c0004e7a8133f7e4eb3dbb34f6bad56d2f30f43aaae983d0240a89aedde71371e2a2475bbc9be91306c425aeecd2c28d6062060cf9cecf67448327b8491ccd6e2d94b9e2e0084ed99134b9e0e498ab5199ed92300e4c620223d6c759f1b921a8dd2e1a15562b88434d35f58d3ce06407e3c35d9edb390348847f5baf56128493bdb15ed6c00e4cd5127fe7462c9ff1760000be3d8e916d579390000000049454e44ae426082, '2023-06-13 10:34:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(150) DEFAULT NULL,
  `LastName` varchar(150) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FirstName`, `LastName`, `Email`, `Password`, `PostingDate`) VALUES
(9, 'Admin', 'Test', 'admin@gmail.com', '751cb3f4aa17c36186f4856c8982bf27', '2023-06-18 06:00:09'),
(14, 'user', 'testtwo', 'asdfg@gmail.com', '62cc2d8b4bf2d8728120d052163a77df', '2023-06-20 09:03:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_image`
--
ALTER TABLE `mst_image`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_image`
--
ALTER TABLE `mst_image`
  MODIFY `img_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;