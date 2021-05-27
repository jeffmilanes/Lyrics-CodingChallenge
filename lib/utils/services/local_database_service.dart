import 'package:coding_challenge/models/content_header.dart';
import 'package:coding_challenge/models/content_list.dart';
import 'package:coding_challenge/models/content_list_item.dart';

// this data is use for testing
final local = ContentHeader(
    dateUpdated: null,
    featured: ContentListItem(
      id: 1,
      title: 'Sparkle',
      artist: 'RADWIMPS',
      artistImage: 'assets/images/artist/radwimps.png',
      releaseDate: '2016',
      views: '2021',
      imagePath: 'assets/images/sparkle.png',
      //lyrics:
      //    'Mada kono sekai wa boku o kainarashitetai mitai da\nNozomidoori darou? utsukushiku mogaku yo\n\nTagai no sunadokei nagamenagara kisu o shiyou yo\n\ sayonara\  kara ichiban tooi basho de machiawaseyou\n\nTsui ni toki wa kita kinou made wa joshou no joshou de\nTobashiyomi de ii kara kokkara ga boku dayo\nKeiken to chishiki to kabi no haekakatta yuuki o motte\nImada katsute nai supiido de kimi no moto e daibu o\n\nMadoromi no naka de namanurui koora ni\nKoko de nai dokka o yumemita yo\nKyoushitsu no mado no soto ni\nDensha ni yurare hakobareru asa ni\n\nUnmei da toka mirai toka tte kotoba ga doredake te o nobasou to\nTodokanai basho de bokura koi o suru\nTokei no hari mo futari o yokome ni minagara susumu\nKonna sekai o futari de isshou iya, nanshou demo\nIkinuiteyukou\n\nHajimemashite nante sa haruka kanata e to oiyatte\nSennenshuuki o ichinichi de iki shiyou\n\nJisho ni aru kotoba de dekiagatta sekai o nikunda\nMangekyou no naka de hachigatsu no aru asa\n\nKimi wa boku no mae de hanikande wa sumashitemiseta\nKono sekai no kyoukasho no you na egao de\n\nUso mitai na hibi o kikakugai no imi o\nHigeki datte ii kara nozonda yo\nSoshitara doa no soto ni\nKimi ga zenbu kakaete tatteita yo\n\nUnmei da toka mirai toka tte kotoba ga dore dake te o\nNobasou to todokanai basho de bokura asobou ka\n\nAishikata saemo kimi no nioi ga shita\nArukikata saemo sono waraigoe ga shita\n\nItsuka kiete nakunaru kimi no subete o\nKono me ni yakitsuketeoku koto wa\nMou kenri nanka janai gimu da to omounda\n\nUnmei da toka mirai toka tte kotoba ga doredake te o nobasou to\nTodokanai basho de bokura koi o suru\nTokei no hari mo futari o yokome ni minagara susumu\nSonna sekai o futari de isshou iya, nanshou demo\n\nIkinuiteyukou',
      lyrics: 'test',
    ),
    data: [
      ContentList(header: 'Explore', items: [
        ContentListItem(
          id: 2,
          title: 'Gurenge',
          artist: 'LiSA',
          artistImage: 'assets/images/artist/lisa.png',
          releaseDate: '2019',
          views: '1212',
          imagePath: 'assets/images/gurenge.png',
          //lyrics:
          //    'Tsuyoku nareru riyuu wo shitta\nBoku wo tsurete susume\n\nDorodarake no soumatou ni you\nKowabaru kokoro furueru te wa\nTsukamitai mono ga aru\nSore dake sa\n\nYoru no nioi ni (I\ ll spend all thirty nights)\nSora nirandemo (Staring into the sky)\nKawatte ikeru no wa jibun jishin dake\nSore dake sa\n\nTsuyoku nareru riyuu wo shitta\nBoku wo tsurete susume\n\nDou shitatte!\n\nKesenai yume mo tomarenai ima mo\nDareka no tame ni tsuyoku nareru nara\nArigatou kanashimi yo\nSekai ni uchinomesarete makeru imi wo shitta\nGuren no hana yo sakihokore\nUnmei wo terashite\n\nInabikari no zatsuon ga mimi wo sasu\nTomadou kokoro yasashii dake ja\nMamorenai mono ga aru\nWakatteru kedo\n\nSuimenka de karamaru zenaku\nSukete mieru gizen ni tenbatsu\nTell me why, Tell me why, Tell me why, Tell me...\nI don\ t need you!\nItsuzai no hana yori\nIdomi tsudzuke saita ichirin ga utsukushii\n\nRanbou ni shikitsumerareta togedarake no michi mo\nHonki no boku dake ni arawareru kara\nNorikoete miseru yo\nKantan ni katazukerareta mamorenakatta yume mo\nGuren no shinzou ni ne wo hayashi\nKono chi ni yadotteru\n\nHito shirezu hakanai chiriyuku ketsumatsu\nMujou ni yabureta himei no kaze fuku\nDareka no warau kage dareka no nakigoe\nDaremo ga shiawase wo negatteru\n\nDou shitatte\nKesenai yume mo tomarenai ima mo\nDareka no tame ni tsuyoku nareru nara\nArigatou kanashimi yo\nSekai ni uchinomesarete makeru imi wo shitta\nGuren no hana yo sakihokore\nUnmei wo terashite\n\nUnmei wo terashite',
          lyrics: 'test',
        ),
        ContentListItem(
          id: 3,
          title: 'Unravel',
          artist: 'TK from Ling tosite sigure',
          artistImage: 'assets/images/artist/tk.png',
          album: 'Fantastic Magic',
          releaseDate: 'July 23, 2014',
          views: '1001',
          imagePath: 'assets/images/unravel.png',
          lyrics: 'test',
          //lyrics:
          //    'Oshiete oshiete yo sono shikumi wo\nBoku no naka ni dare ga iru no?\nKowareta kowareta yo kono sekai de\nKimi ga warau nanimo miezu ni\n\nKowareta boku nante sa iki wo tomete\nHodokenai mou hodokenai yo shinjitsu sae\n\nFREEZE\n\nKowaseru kowasenai kurueru kuruenai\nAnata wo mitsukete yureta\n\nYuganda sekai ni dandan boku wa\nSukitoote mienaku natte\nMitsukenaide boku no koto wo mitsumenaide\n\nDareka ga egaita sekai no naka de\nAnata wo kizutsuketaku wa nai yo\nOboete ite boku no koto wo azayaka na mama\n\nMugen ni hirogaru kodoku ga karamaru\nMujaki ni waratta kioku ga sasatte\n\nUgokenai ugokenai ugokenai ugokenai ugokenai ugokenai yo\n\nUnravelling the world\n\nKawatte shimatta kaerarenakatta\nFutatsu ga karamaru futari ga horobiru\n\nKowaseru kowasenai kurueru kuruenai\nAnata wo kegasenaiyo Yureta\n\nYuganda sekai ni dandan boku wa\nSukitoote mienaku natte\nMitsukenaide boku no koto wo mitsumenaide\n\nDareka ga shikunda kodoku na wana ni\nMirai ga hodokete shimau mae ni\nOmoidashite boku no koto wo azayaka na mama\n\nWasurenaide wasurenaide wasurenaide wasurenaide\nKawatte shimatta koto ni paralyze\nKaerarenai koto darake no paradise\nOboeteite boku no koto wo\n\nOshiete oshiete\nBoku no naka ni dare ga iru no?',
        ),
        ContentListItem(
          id: 4,
          title: 'Silhouette',
          artist: 'KANA-BOON',
          artistImage: 'assets/images/artist/kana-boon.png',
          releaseDate: 'November 26, 2014',
          album: 'TIME',
          views: '1121',
          imagePath: 'assets/images/silhoutte.png',
          lyrics: 'test',
          //lyrics:
          //    'Issee noo se de\nFumikomu goorurain\nBokura wa nanimo nanimo mada shiranu\nIssen koete\nFurikaeru to mou nai\nBokura wa nanimo nanimo mada shiranu\nUdatte udatte udatteku\nKirameku ase ga koboreru no sa\nOboetenai koto mo\nTakusan atta darou\nDaremo kare mo shiruetto\nDaiji ni shiteta mono\nWasureta furi wo shitanda yo\nNanimo nai yo waraeru sa\n\nIssee noo de\nOmoidasu shounen\nBokura wa nanimokamo hoshigatta\nWakatatteiru tte\nAa kidzuiteiru tte\nTokei no hari wa hibi wa tomaranai\nUbatte ubatte ubatteku\nNagareru toki to kioku\nTooku tooku tooku ni natte\nOboetenai koto mo\nTakusan atta darou\nDaremo kare mo shiruetto\nOsorete marugoto\nShiranai furi wo shitanda yo\nNanimo nai yo waraeru sa\n\nHirari to hirari to matteru\nKonoha no you ni yureru koto naku\nShousou nakusu sugoshiteitai yo\nOboetenai koto mo\nTakusan atta kedo\nKitto zutto\nKawaranai mono ga aru koto wo\nOshietekureta anata wa\nKieru kieru shiruetto\nDaiji ni shitai mono\nMotte otona ni narunda\nDonna toki mo hanasazu ni\nMamoritsudzukeyou\nSoshitara itsu no hi ni ka\nNanimokamo waraeru sa\n\nHirari to hirari to matteru\nKonoha ga tondeyuku\n\nWO...',
        )
      ]),
      ContentList(header: 'Recommended', items: [
        ContentListItem(
          id: 5,
          title: 'Black Catcher',
          artist: 'Vickeblanka',
          artistImage: 'assets/images/artist/vickeblanka.png',
          releaseDate: '2020',
          views: '12',
          imagePath: 'assets/images/blackcatcher.png',
          lyrics: 'test',
          //lyrics:
          //    'Kaze ga senaka o hatte\nShizuku wa ito o tsutatte\nGet up me o samashite yo\nGet down mo uma mo naku\nNegai o moji ni okoshite\nChishio ni notte\nSono mi ni matotta kuro\nkumori naku subete o furiharau yōni\n\nSairen wa urahara no SOS\nHayaka teokure desu yo\nChikazukanakya mienai\nKizuna nante atte nakute\nBokura ima tabi no tochū\nDōshite ima uzuku dontsū\nSomebody just help me out\n\nKanaeyou yakusokudōri\nHibiwareta sekai de\n\nLet\ s dye this world\nEven I can not grap* this sword\nAll I need is getting strong\nWe can catch the game\nMakenaide yo\nMe ni utsutta subete o\nHora mikata ni kaete\nWe can catch the game\n\nKaze ga senaka o hatte\nKōkai wa mune o ugatsu\nDon\ t Give Up\nShikatanai n da yo\nLevel down ima koso\nLevel up level up level up\nMakeru no kiraidashi\nHanekaetta match point, dōzo it\ s real\nKami nomi zo shiru hanashi no suji\n\nTerashidasu yo sōzōdōri\nSono kage wa minaide\n\nLet\ s dye this world\nEven I can not grap this sword\nAll I need is getting strong\nWe can catch the game\nMakenaide yo\nMe ni utsutta subete o\nHora mikata ni kaete\nWe can catch the game\n\nLet\ s dye this world\nEven I can not grap this sword\nAll I need is getting strong\nWe can catch the game\nMakenaide yo\nMe ni utsutta subete o\nHora mikata ni kaete\nSono mikata o kaete\nSoshite mirai o kaete\nWe can catch the game',
        ),
        ContentListItem(
          id: 6,
          title: 'Homura',
          artist: 'LiSA',
          artistImage: 'assets/images/artist/lisa.png',
          releaseDate: '2020',
          views: '50',
          imagePath: 'assets/images/homura.png',
          lyrics: 'test',
          //lyrics:
          //    'Sayonara arigatō koe no kagiri\nKanashimi yori motto daijina koto\nSariyuku senaka ni tsutaetakute\nNukumori to itami ni maniau yō ni\n\nKono mama tsuzuku to omotteita\nBokura no ashita o egaiteita\nYobiatteita (yobiatteita)\nHikari ga mada (hikari ga)\nMune no oku ni atsuinoni\n\nBokutachi wa moesakaru tabi no tochū de deai\nTe o tori soshite hanashita mirai no tame ni\nYume ga hitotsu kanau tabi boku wa kimi o omoudarou\nTsuyoku naritai to negai naita\nKetsui o hanamuke ni\n\nNatsukashī omoi ni torawaretai\nZankokuna sekai ni nakisakende\nOtona ni naru hodo fueteyuku\nMō nani hitotsu datte ushinaitakunai\n\nKanashimi ni nomare ochiteshimaeba\nItami o kanjinaku narukeredo\nKimi no kotoba (kimi no kotoba)\nKimi no negai (kimi no koe)\nBoku wa mamorinuku to chikatta nda\n\nOto o tatete kuzureochiteyuku\nHitotsu dake no (hitotsu dake no)\nKakegae no nai sekai\n\nTe o nobashi daki tometa hageshī hikari no taba\nKagayaite kietetta mirai no tame ni\nTakusareta shiawase to yakusoku o koeteiku\nFurikaerazu ni susumukara\nMae dake muite sakebukara\nKokoro ni homura o tomoshite\nTōi mirai made',
        ),
        ContentListItem(
          id: 7,
          title: 'Sign',
          artist: 'FLOW',
          artistImage: 'assets/images/artist/flow.png',
          releaseDate: 'January 13, 2010',
          album: 'FLOW ANIME BEST',
          views: '75',
          imagePath: 'assets/images/flow.png',
          lyrics: 'test',
          //lyrics:
          //    'I realize the screaming pain\nHearing loud in my brain\nBut i\ m going straight ahead with the scar...\n\n(Can you hear me?\nCan you hear me?\nCan you hear me ? So am I)\n\nWasurete shimaeba ii yo kanjinakunacchaebai\nSurimuita kokoro ni futa wo shitan da\n\nKizutsuitatte heiki da yo mou itami wa nai kara ne\nSono ashi wo hikizuri nagara mo\n\nMiushinatta jibun jishin ga\nOto wo tatete kuzureteitta\n\nKizukeba kaze no oto dake ga...\n\nTsutae ni kita yo kizuato tadatte\nSekai ni oshitsubusarete shimau mae ni\nOboeteru kana namida no sora wo\nAno itami ga kimi no koto wa mamotte kureta\nSono itami ga itsumo kimi wo mamotterun da\n\nCan you hear me? So am I\n\nKizutsukanai tsuyosa yori mo\nKizutsukenai yasashisa wo\nSono koe wa dokoka kanashi soude\n\nKakechigaeta botan mitai ni\nKokoro karada hanareteita\n\nMou ichido kokoro wo tsukande\n\nTsutae ni kitayo kizuato tadotte\nSekai ni oshitsubusarete shimau mae ni\nOboeterukana namida no sora wo\nAno itami ga kimi no koto wo mamotte kureta\nSono itami ga itsumo kimi wo mamotterunda (Can you hear me?)\nCan you hear me?\nCan you hear me?\nCan you hear me?\nCan you hear me?\nCan you hear me?\nCan you hear me? So am I\n\nMitsukekita ano nakigoe wa\nMachigainaku sou jibun no datta\nSubete wa kono toki no tame ni...\n\nKitto hajime kara wakkatetanda\nMou ni do to jibun dake wa hanasanaide\nKizuite kureta kimi he no aizu\nAno itami ga kimi no koto wo mamotte kureta\n\nTsutae ni kitayo kizuato tadotte\nSore nara mou osoreru mono wa nain datto\nWasurenaidene egao no wake wo\n\nAno itami ga kimi no koto wo mamotte kuretta\nAno itami ga kimi no koto wo mamotte kuretta\nSono itami ga itsumo kimi wo mamotterunda (Can you hear me?)\nCan you hear me?\nCan you hear me? So am I',
        )
      ]),
    ]);
