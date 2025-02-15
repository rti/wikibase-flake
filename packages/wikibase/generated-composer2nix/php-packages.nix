{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "bacon/bacon-qr-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bacon-bacon-qr-code-8674e51bb65af933a5ffaf1c308a660387c35c22";
        src = fetchurl {
          url = "https://api.github.com/repos/Bacon/BaconQrCode/zipball/8674e51bb65af933a5ffaf1c308a660387c35c22";
          sha256 = "0hb0w6m5rwzghw2im3yqn6ly2kvb3jgrv8jwra1lwd0ik6ckrngl";
        };
      };
    };
    "christian-riesen/base32" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "christian-riesen-base32-2e82dab3baa008e24a505649b0d583c31d31e894";
        src = fetchurl {
          url = "https://api.github.com/repos/ChristianRiesen/base32/zipball/2e82dab3baa008e24a505649b0d583c31d31e894";
          sha256 = "0000b961zwrrmh6h2aw7ww76jwiy8nz3msvwvagyngy1bhx1l7j2";
        };
      };
    };
    "composer/installers" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-installers-d20a64ed3c94748397ff5973488761b22f6d3f19";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/installers/zipball/d20a64ed3c94748397ff5973488761b22f6d3f19";
          sha256 = "1rkcf3cmxg7k802lazknhmx9vpwr306s8zhpc5cjmac7vkcwv3qc";
        };
      };
    };
    "composer/semver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-semver-35e8d0af4486141bc745f23a29cc2091eb624a32";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/semver/zipball/35e8d0af4486141bc745f23a29cc2091eb624a32";
          sha256 = "1sr3l0k87fi9z95j4jh9xqs4dz1315mj4bi95sij35d2ad3rcs19";
        };
      };
    };
    "cssjanus/cssjanus" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "cssjanus-cssjanus-befd1eb7b1e70ee2cd71cd5b9a86ff250d2e8423";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/php-cssjanus/zipball/befd1eb7b1e70ee2cd71cd5b9a86ff250d2e8423";
          sha256 = "1rab8ficd9lf1nwb7fsf6xc6qsjmrz5sl9b8qc86rv4s557qr6m6";
        };
      };
    };
    "dasprid/enum" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dasprid-enum-8dfd07c6d2cf31c8da90c53b83c026c7696dda90";
        src = fetchurl {
          url = "https://api.github.com/repos/DASPRiD/Enum/zipball/8dfd07c6d2cf31c8da90c53b83c026c7696dda90";
          sha256 = "1ainxbpfbh9fir2vihc4q614yq6rc3lvz6836nddl50wx2zpcby2";
        };
      };
    };
    "data-values/common" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "data-values-common-b21c2bd3b213d6233a645003df4f88956afc52f4";
        src = fetchurl {
          url = "https://api.github.com/repos/DataValues/Common/zipball/b21c2bd3b213d6233a645003df4f88956afc52f4";
          sha256 = "12nnzal5bgnk928wgkr3l707c1vc003g1xcyn900d7q4mbbfsslg";
        };
      };
    };
    "data-values/data-values" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "data-values-data-values-1084142918095dfedf9b6cc0de0755f8c4628264";
        src = fetchurl {
          url = "https://api.github.com/repos/DataValues/DataValues/zipball/1084142918095dfedf9b6cc0de0755f8c4628264";
          sha256 = "08rwf24b6kdp6ixsvxi6jla000i2v1skcf08lvs4n57gmyjcwygj";
        };
      };
    };
    "data-values/geo" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "data-values-geo-eb1996b7ece9d501a86772755b1ba5dac25a540f";
        src = fetchurl {
          url = "https://api.github.com/repos/DataValues/Geo/zipball/eb1996b7ece9d501a86772755b1ba5dac25a540f";
          sha256 = "145qwc7mlxd7zjfy2kfbila99cbyx504wl3r1dgl6bq9ymh84w0z";
        };
      };
    };
    "data-values/interfaces" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "data-values-interfaces-22573cd52a7b37416f28ed6a8d8706543b0d430a";
        src = fetchurl {
          url = "https://api.github.com/repos/DataValues/Interfaces/zipball/22573cd52a7b37416f28ed6a8d8706543b0d430a";
          sha256 = "173zwd6g63as8b6l8r205d59jb28g6fgjc5p4v559q7nnchnir4y";
        };
      };
    };
    "data-values/number" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "data-values-number-0e7e3217d04d48d3b895171e743ac81bf4824735";
        src = fetchurl {
          url = "https://api.github.com/repos/wmde/Number/zipball/0e7e3217d04d48d3b895171e743ac81bf4824735";
          sha256 = "01w54isws9ws3591disrajy8llwp5gf538r01a5w6hcgy4q5b65q";
        };
      };
    };
    "data-values/serialization" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "data-values-serialization-b31b3af537a3ac9f3b70f42cc03f2221c6fd8fd7";
        src = fetchurl {
          url = "https://api.github.com/repos/DataValues/Serialization/zipball/b31b3af537a3ac9f3b70f42cc03f2221c6fd8fd7";
          sha256 = "1djan9g3jf7096g1li3bsx37w6q2i5al0fbxww3hrvgmfpsvypll";
        };
      };
    };
    "data-values/time" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "data-values-time-d8e8cf713fa33f22f973fb06fbbafedd722401eb";
        src = fetchurl {
          url = "https://api.github.com/repos/wmde/Time/zipball/d8e8cf713fa33f22f973fb06fbbafedd722401eb";
          sha256 = "1xi02riapy43f46285md21qi3p91wq0b5c2d53ysrhvkfsid7vw5";
        };
      };
    };
    "diff/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "diff-diff-19e5c8871868210ef2943c92bd7c223555b50b3f";
        src = fetchurl {
          url = "https://api.github.com/repos/wmde/Diff/zipball/19e5c8871868210ef2943c92bd7c223555b50b3f";
          sha256 = "04f45dq6jxw9jyypmr1x0pfkvwqan13i2d0dla9fmh1hxn8jw9jw";
        };
      };
    };
    "endroid/qr-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "endroid-qr-code-a75c913b0e4d6ad275e49a2c1de1cacffc6c2184";
        src = fetchurl {
          url = "https://api.github.com/repos/endroid/qr-code/zipball/a75c913b0e4d6ad275e49a2c1de1cacffc6c2184";
          sha256 = "0gvn08vqy273k41hwdm8nygbkbahcwasbwgd81w03q8r3f0fjnx1";
        };
      };
    };
    "guzzlehttp/guzzle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-guzzle-085b026db54d4b5012f727c80c9958e8b8cbc454";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/guzzle/zipball/085b026db54d4b5012f727c80c9958e8b8cbc454";
          sha256 = "0ani6pnvad70lbn7l217navxaan90wpg4q19p2fg7bdb9grnmlb6";
        };
      };
    };
    "guzzlehttp/promises" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-promises-f9c436286ab2892c7db7be8c8da4ef61ccf7b455";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/promises/zipball/f9c436286ab2892c7db7be8c8da4ef61ccf7b455";
          sha256 = "0xp8slhb6kw9n7i5y6cpbgkc0nkk4gb1lw452kz4fszhk3r1wmgh";
        };
      };
    };
    "guzzlehttp/psr7" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-psr7-a70f5c95fb43bc83f07c9c948baa0dc1829bf201";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/psr7/zipball/a70f5c95fb43bc83f07c9c948baa0dc1829bf201";
          sha256 = "1xp4c6v1qszbhzdgcgbd03dvxsk0s0vysr3q4rvhm134qlkbrdf2";
        };
      };
    };
    "jakobo/hotp-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jakobo-hotp-php-ff2f13d1918001e54b3f49deb1d366bcfcc98437";
        src = fetchurl {
          url = "https://api.github.com/repos/thecodedrift/hotp-php/zipball/ff2f13d1918001e54b3f49deb1d366bcfcc98437";
          sha256 = "12hapyd520v085cxznbjnkmyjxcgx6apxksnz8shq1z3afr26r25";
        };
      };
    };
    "justinrainbow/json-schema" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "justinrainbow-json-schema-fbbe7e5d79f618997bc3332a6f49246036c45793";
        src = fetchurl {
          url = "https://api.github.com/repos/jsonrainbow/json-schema/zipball/fbbe7e5d79f618997bc3332a6f49246036c45793";
          sha256 = "0yhhv8chrnn2bk21v5b9jn3wbzm6vs415xbxl5rl6y5kkmvf6wng";
        };
      };
    };
    "liuggio/statsd-php-client" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "liuggio-statsd-php-client-c42e6d6687b7b2d7683186ec7f4f03351cc3dbca";
        src = fetchurl {
          url = "https://api.github.com/repos/liuggio/statsd-php-client/zipball/c42e6d6687b7b2d7683186ec7f4f03351cc3dbca";
          sha256 = "11lzvkqv4jk7j0mrvfyhjq2sikb1hbcx0xvlwl54z88b2fai729q";
        };
      };
    };
    "mck89/peast" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mck89-peast-2791b08ffcc1862fe18eef85675da3aa58c406fe";
        src = fetchurl {
          url = "https://api.github.com/repos/mck89/peast/zipball/2791b08ffcc1862fe18eef85675da3aa58c406fe";
          sha256 = "0sxhnazrzwafynmx0c99l56df0z046ady8qc28ir7fk5fdfw6ap4";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-437cb3628f4cf6042cc10ae97fc2b8472e48ca1f";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/monolog/zipball/437cb3628f4cf6042cc10ae97fc2b8472e48ca1f";
          sha256 = "02xaa057fj2bjf6g6zx80rb6ikcgn601ns50ml51b8yp48pjdla3";
        };
      };
    };
    "onoi/message-reporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "onoi-message-reporter-ead8ef8f2868ccee6881e471295ebbaf8428c96c";
        src = fetchurl {
          url = "https://api.github.com/repos/onoi/message-reporter/zipball/ead8ef8f2868ccee6881e471295ebbaf8428c96c";
          sha256 = "1ah15w13b9fc91ib47m6ykhk666ka48wcis0bj51zc77hiarcdw9";
        };
      };
    };
    "oojs/oojs-ui" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "oojs-oojs-ui-e217752a0dfaf6f494b29d2eb46237dc08ff24ff";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/oojs-ui/zipball/e217752a0dfaf6f494b29d2eb46237dc08ff24ff";
          sha256 = "11mb1x3gkk04yfv85aplpgdhai75s09wfrllhxv5vazpyh1yrqhn";
        };
      };
    };
    "pear/console_getopt" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pear-console_getopt-a41f8d3e668987609178c7c4a9fe48fecac53fa0";
        src = fetchurl {
          url = "https://api.github.com/repos/pear/Console_Getopt/zipball/a41f8d3e668987609178c7c4a9fe48fecac53fa0";
          sha256 = "170nsads9k0p8301pgd6qsw4ar36jr9vh2slkpjj0kdw768dgvml";
        };
      };
    };
    "pear/mail" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pear-mail-4fda3292ac6bf226d8841cfd8ee3cf4e28395c01";
        src = fetchurl {
          url = "https://api.github.com/repos/pear/Mail/zipball/4fda3292ac6bf226d8841cfd8ee3cf4e28395c01";
          sha256 = "1hbd6w83aiw56wawm0wi0c3cry1z33q0zyqbf85fwfakam0pp4fc";
        };
      };
    };
    "pear/mail_mime" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pear-mail_mime-d032c7c9335e96d5954ac6e93d33955f3b7246e2";
        src = fetchurl {
          url = "https://api.github.com/repos/pear/Mail_Mime/zipball/d032c7c9335e96d5954ac6e93d33955f3b7246e2";
          sha256 = "0qip2yfwf19j03ih98jwnd93y3f5fdcc5gy82c6f3nha8c7xjvbq";
        };
      };
    };
    "pear/net_smtp" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pear-net_smtp-0ae529d6f8358e29a7eaa8b314e5bcf168bfcec8";
        src = fetchurl {
          url = "https://api.github.com/repos/pear/Net_SMTP/zipball/0ae529d6f8358e29a7eaa8b314e5bcf168bfcec8";
          sha256 = "0jn6424sif5qg81l12gaifq7yrp0cxnwka5y2p9qacdwi5414h1n";
        };
      };
    };
    "pear/net_socket" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pear-net_socket-bbe6a12bb4f7059dba161f6ddd43f369c0ec8d09";
        src = fetchurl {
          url = "https://api.github.com/repos/pear/Net_Socket/zipball/bbe6a12bb4f7059dba161f6ddd43f369c0ec8d09";
          sha256 = "0jn673j54n47c5h9p2r3ykxizqrcwlgmdk7rz0d92qd14f8b38l0";
        };
      };
    };
    "pear/net_url2" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pear-net_url2-07fd055820dbf466ee3990abe96d0e40a8791f9d";
        src = fetchurl {
          url = "https://api.github.com/repos/pear/Net_URL2/zipball/07fd055820dbf466ee3990abe96d0e40a8791f9d";
          sha256 = "0s73f0mnwnrn1wih9xpla136ffn58sx28b9m8ip167ll035k797z";
        };
      };
    };
    "pear/pear-core-minimal" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pear-pear-core-minimal-c0f51b45f50683bf5bbf558036854ebc9b54d033";
        src = fetchurl {
          url = "https://api.github.com/repos/pear/pear-core-minimal/zipball/c0f51b45f50683bf5bbf558036854ebc9b54d033";
          sha256 = "09fyrqn62q8ckq14p3bk2lhzy867xwlaqna9bj7pb7hkq2ngfby9";
        };
      };
    };
    "pear/pear_exception" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pear-pear_exception-b14fbe2ddb0b9f94f5b24cf08783d599f776fff0";
        src = fetchurl {
          url = "https://api.github.com/repos/pear/PEAR_Exception/zipball/b14fbe2ddb0b9f94f5b24cf08783d599f776fff0";
          sha256 = "0kgnwg1gw6k5wl1r0fjmrqmfk13n8hk2270g5cfhis0ak5qsfwb9";
        };
      };
    };
    "psr/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-container-513e0666f7216c7459170d56df27dfcefe1689ea";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/container/zipball/513e0666f7216c7459170d56df27dfcefe1689ea";
          sha256 = "00yvj3b5ls2l1d0sk38g065raw837rw65dx1sicggjnkr85vmfzz";
        };
      };
    };
    "psr/http-client" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-client-bb5906edc1c324c9a05aa0873d40117941e5fa90";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-client/zipball/bb5906edc1c324c9a05aa0873d40117941e5fa90";
          sha256 = "1dfyjqj1bs2n2zddk8402v6rjq93fq26hwr0rjh53m11wy1wagsx";
        };
      };
    };
    "psr/http-factory" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-factory-2b4765fddfe3b508ac62f829e852b1501d3f6e8a";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-factory/zipball/2b4765fddfe3b508ac62f829e852b1501d3f6e8a";
          sha256 = "1ll0pzm0vd5kn45hhwrlkw2z9nqysqkykynn1bk1a73c5cjrghx3";
        };
      };
    };
    "psr/http-message" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-message-cb6ce4845ce34a8ad9e68117c10ee90a29919eba";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-message/zipball/cb6ce4845ce34a8ad9e68117c10ee90a29919eba";
          sha256 = "1s87sajxsxl30ciqyhx0vir2pai63va4ssbnq7ki6s050i4vm80h";
        };
      };
    };
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-d49695b909c3b7628b6289db5479a1c204601f11";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/log/zipball/d49695b909c3b7628b6289db5479a1c204601f11";
          sha256 = "0sb0mq30dvmzdgsnqvw3xh4fb4bqjncx72kf8n622f94dd48amln";
        };
      };
    };
    "psr/simple-cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-simple-cache-408d5eafb83c57f6365a3ca330ff23aa4a5fa39b";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/simple-cache/zipball/408d5eafb83c57f6365a3ca330ff23aa4a5fa39b";
          sha256 = "1djgzclkamjxi9jy4m9ggfzgq1vqxaga2ip7l3cj88p7rwkzjxgw";
        };
      };
    };
    "ralouphie/getallheaders" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ralouphie-getallheaders-120b605dfeb996808c31b6477290a714d356e822";
        src = fetchurl {
          url = "https://api.github.com/repos/ralouphie/getallheaders/zipball/120b605dfeb996808c31b6477290a714d356e822";
          sha256 = "1bv7ndkkankrqlr2b4kw7qp3fl0dxi6bp26bnim6dnlhavd6a0gg";
        };
      };
    };
    "serialization/serialization" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "serialization-serialization-4403fbab83e0187791d35caef4eef4395811e58d";
        src = fetchurl {
          url = "https://api.github.com/repos/wmde/Serialization/zipball/4403fbab83e0187791d35caef4eef4395811e58d";
          sha256 = "0gsm2x86lrqh60iff4ybghdvd1wj6ycq6p48m6m0a8ig4sdn62z7";
        };
      };
    };
    "swaggest/json-diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "swaggest-json-diff-c55d38a3cb372753b5d5ee4c9b7d8470e486e6a5";
        src = fetchurl {
          url = "https://api.github.com/repos/swaggest/json-diff/zipball/c55d38a3cb372753b5d5ee4c9b7d8470e486e6a5";
          sha256 = "1zsdjd3wwzr8g1h4rblvgxq2kxqwx6p4lkk929i4nlb9gamq32k9";
        };
      };
    };
    "symfony/deprecation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-deprecation-contracts-74c71c939a79f7d5bf3c1ce9f5ea37ba0114c6f6";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/deprecation-contracts/zipball/74c71c939a79f7d5bf3c1ce9f5ea37ba0114c6f6";
          sha256 = "0jr67zcxmgq26xi9lrw3pg33fvchf27qg3liicm3r1k36hg4ymwf";
        };
      };
    };
    "symfony/polyfill-php80" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php80-87b68208d5c1188808dd7839ee1e6c8ec3b02f1b";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php80/zipball/87b68208d5c1188808dd7839ee1e6c8ec3b02f1b";
          sha256 = "1pn6dzj8b3h8851w3y6mj5qrwklwky5w71v4m455553qlga5cfr7";
        };
      };
    };
    "symfony/polyfill-php81" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php81-c565ad1e63f30e7477fc40738343c62b40bc672d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php81/zipball/c565ad1e63f30e7477fc40738343c62b40bc672d";
          sha256 = "0xy6jjnqvc6v1s7wvdm1yplblpbh43ilis93vjrlv7hc7i6ygfzg";
        };
      };
    };
    "symfony/polyfill-php82" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php82-559d488c38784112c78b9bf17c5ce8366a265643";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php82/zipball/559d488c38784112c78b9bf17c5ce8366a265643";
          sha256 = "1dmjz1iv86vrhj0bbfanzwqvqhikiafiq0z4rj55b64ifksinb1j";
        };
      };
    };
    "symfony/polyfill-php83" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php83-86fcae159633351e5fd145d1c47de6c528f8caff";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php83/zipball/86fcae159633351e5fd145d1c47de6c528f8caff";
          sha256 = "0n81fmn058rn7hr70qdwpsnam57pp27avs3h8xcfnq8d3hci5gr4";
        };
      };
    };
    "symfony/yaml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-yaml-e78db7f5c70a21f0417a31f414c4a95fe76c07e4";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/yaml/zipball/e78db7f5c70a21f0417a31f414c4a95fe76c07e4";
          sha256 = "0s9lsgax2dlkr5rz5jf7w9m360pf6a1wdnsg1ar2wnnq6fmsp1ak";
        };
      };
    };
    "wikimedia/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-assert-27c983fddac1197dc37f6a7cec00fc02861529cd";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/Assert/zipball/27c983fddac1197dc37f6a7cec00fc02861529cd";
          sha256 = "0g2h3123ivz180hgiwl2zr3bx42ybn6qsdd90bdmxgis8k0n1wl8";
        };
      };
    };
    "wikimedia/at-ease" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-at-ease-89f2ec17fd99f551d4f61db59ac60d9a8e3bbc34";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/at-ease/zipball/89f2ec17fd99f551d4f61db59ac60d9a8e3bbc34";
          sha256 = "129jb3pz7mawqxyq6cgis67crw75k8qr40qvyncnw5hilj3w6185";
        };
      };
    };
    "wikimedia/base-convert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-base-convert-aa997185e0b42c1f61a11f3e1980cad144175111";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/base-convert/zipball/aa997185e0b42c1f61a11f3e1980cad144175111";
          sha256 = "01wwn7rvhz7cc5nz89akpn1csvxa5na4hvfdr1p4dykicf09m8n4";
        };
      };
    };
    "wikimedia/bcp-47-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-bcp-47-code-0d2204a8c3bb99be6253f9326df1c61093d2bb05";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-Bcp47Code/zipball/0d2204a8c3bb99be6253f9326df1c61093d2bb05";
          sha256 = "04vsyc3q42yy4pjh7zcj8r2r8jr8ppp7kqgk3dfs8yq8sy4i5jkn";
        };
      };
    };
    "wikimedia/cdb" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-cdb-3d7622f39319ea2149cac92415222d1fb39c46d0";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/cdb/zipball/3d7622f39319ea2149cac92415222d1fb39c46d0";
          sha256 = "1vfcfxv5015460xqczb77m90rif9d7b0vqm6bka7j6wn6bdz866v";
        };
      };
    };
    "wikimedia/cldr-plural-rule-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-cldr-plural-rule-parser-83d78cb8018d5c0f66fd6d0efff6a8ae2de92d36";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/CLDRPluralRuleParser/zipball/83d78cb8018d5c0f66fd6d0efff6a8ae2de92d36";
          sha256 = "1kdxi8az42vgwan4rvs9847rw7rd1144r7y3147alz3y38ifsk5j";
        };
      };
    };
    "wikimedia/common-passwords" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-common-passwords-ff3920985ef3c2e23d3b262e0620ff3f83292ac3";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-CommonPasswords/zipball/ff3920985ef3c2e23d3b262e0620ff3f83292ac3";
          sha256 = "1xs4ai8vlcdm30wq6nn2cqgflsj14cckm3g20ri4xbp3qmf07sv4";
        };
      };
    };
    "wikimedia/composer-merge-plugin" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-composer-merge-plugin-a03d426c8e9fb2c9c569d9deeb31a083292788bc";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/composer-merge-plugin/zipball/a03d426c8e9fb2c9c569d9deeb31a083292788bc";
          sha256 = "0ljc5dani76xg465wf8k9m0zqzkn88rq9h0rkzd3398gsjh9zw8b";
        };
      };
    };
    "wikimedia/equivset" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-equivset-2a8cae4bb2c1aa102eea9fcb6e4d4de1d46e59f3";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-Equivset/zipball/2a8cae4bb2c1aa102eea9fcb6e4d4de1d46e59f3";
          sha256 = "0ic0x1w2ryldri2213rc709c76m4cxssv2a2hz02nyqdda2x0ddp";
        };
      };
    };
    "wikimedia/html-formatter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-html-formatter-c2fdae55da33feb6d44d34ddc66c4b007981bcf2";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/HtmlFormatter/zipball/c2fdae55da33feb6d44d34ddc66c4b007981bcf2";
          sha256 = "1d05k9rag4r4yssb9chnagj2j241cji1jz427vnn3kxjk7vv2r5y";
        };
      };
    };
    "wikimedia/idle-dom" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-idle-dom-631555d5868bf29427cb015906e666faf09abeea";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-IDLeDOM/zipball/631555d5868bf29427cb015906e666faf09abeea";
          sha256 = "0gj12dhj0mnbql4jgmnlvb3gk9fxivq6x4n5kz7593v3mxc78mb3";
        };
      };
    };
    "wikimedia/ip-utils" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-ip-utils-119e0ed321e967b4f5748a404fa8a3eb5dad4aa3";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-IPUtils/zipball/119e0ed321e967b4f5748a404fa8a3eb5dad4aa3";
          sha256 = "1xb6hh6x5x0k5hxa9dyh10sarazxrz862bw5xk273qjn2l45n555";
        };
      };
    };
    "wikimedia/json-codec" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-json-codec-6ed58a76c495e23f4bd82a15e1222b2f4db004a1";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-JsonCodec/zipball/6ed58a76c495e23f4bd82a15e1222b2f4db004a1";
          sha256 = "0wdc7z86m9sgy16ang2q23ishxmxbf5cfcyysz42y3bxahhkvzs5";
        };
      };
    };
    "wikimedia/less.php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-less.php-7d66ab6d38af72f80a0c0a3598d7feac04bbc7b7";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/less.php/zipball/7d66ab6d38af72f80a0c0a3598d7feac04bbc7b7";
          sha256 = "0xfsrwfsy4s3xi7a3s200yd2x0wbdkh9zk37gak586xd89rwaxjw";
        };
      };
    };
    "wikimedia/minify" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-minify-cfe7568b1b005d37cff5897f40dbcd96cf18a969";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-Minify/zipball/cfe7568b1b005d37cff5897f40dbcd96cf18a969";
          sha256 = "158cm27i6ihxfn343191i147xfpfjm354cp3wbcwz4zqya6nhnb0";
        };
      };
    };
    "wikimedia/normalized-exception" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-normalized-exception-ed9fc13d75f65c80dc1a95d4792658c97fd782e6";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-NormalizedException/zipball/ed9fc13d75f65c80dc1a95d4792658c97fd782e6";
          sha256 = "1dcyp9wnq98cffa3amj3vni0b3v1cl9v92xkdr7j478gihay7fj5";
        };
      };
    };
    "wikimedia/object-factory" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-object-factory-a0439aac5f14e218dc1f40a98eb14e4b26a01341";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/object-factory/zipball/a0439aac5f14e218dc1f40a98eb14e4b26a01341";
          sha256 = "0iip6pk07iqmrsklzkcdcfbzdjigvqs33hm4mhzlhc6hs9glc58i";
        };
      };
    };
    "wikimedia/parsoid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-parsoid-6beabf7b042b17a07f1024681d13940c94641b69";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-services-parsoid/zipball/6beabf7b042b17a07f1024681d13940c94641b69";
          sha256 = "109n1xm2ks2cf1qfi02615ap75i8cpkj6ppjg5r48kj1h9y9imzw";
        };
      };
    };
    "wikimedia/php-session-serializer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-php-session-serializer-9d52c57064a1db78cd494a70ec316e1952cf7f1a";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/php-session-serializer/zipball/9d52c57064a1db78cd494a70ec316e1952cf7f1a";
          sha256 = "0mg9k49ns2kf2421niar345yj3wb52k9dkica34cnl0hg593j4zm";
        };
      };
    };
    "wikimedia/purtle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-purtle-8f106f38ff811906853511a934d7f5e86dce3d20";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/purtle/zipball/8f106f38ff811906853511a934d7f5e86dce3d20";
          sha256 = "0bv5kf1114ifkdn4sqx8g9zqk9hi5s7lkzfm3k7wa6vq4880fh99";
        };
      };
    };
    "wikimedia/relpath" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-relpath-b4dc7c1e8b4f7dd81c38c2071a2d5c2ace39fc8e";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/RelPath/zipball/b4dc7c1e8b4f7dd81c38c2071a2d5c2ace39fc8e";
          sha256 = "17w21cyh64aspzcddvjzfp690x6i9sy7x9v0fzhi3453qd5vdi7y";
        };
      };
    };
    "wikimedia/remex-html" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-remex-html-e39f23cf5074dee550bf059be38a9582b8998190";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-RemexHtml/zipball/e39f23cf5074dee550bf059be38a9582b8998190";
          sha256 = "0m8gyy20ifpf5ydxl5ac79m6vmkyax1pikkicsxa097a3ql6ccmf";
        };
      };
    };
    "wikimedia/request-timeout" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-request-timeout-e306a7cb1fb3a1ca3ce93992c56efb62b537c4bc";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/request-timeout/zipball/e306a7cb1fb3a1ca3ce93992c56efb62b537c4bc";
          sha256 = "1qg93j6gw98s8id93g9bi4wy2025vgnvd36glgrs1shwcpw3rwzq";
        };
      };
    };
    "wikimedia/running-stat" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-running-stat-0aa66cf58f98ca2de9972a8177cbec625c4c9969";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/running-stat/zipball/0aa66cf58f98ca2de9972a8177cbec625c4c9969";
          sha256 = "153sd0x7xsi1n462r3n3wc4k88ymlwqld9cq2s1nwrgcxgx20frf";
        };
      };
    };
    "wikimedia/scoped-callback" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-scoped-callback-dd522a6cfb4c0180b0a39d12fc57046a347c4d81";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/scoped-callback/zipball/dd522a6cfb4c0180b0a39d12fc57046a347c4d81";
          sha256 = "140y1k3zb75kgv9gp13q243rhgm3whhcnnphnb8jbyc5s4ljxk5g";
        };
      };
    };
    "wikimedia/services" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-services-c63d949c363378a5f435cfd7a81932aa6f712462";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-Services/zipball/c63d949c363378a5f435cfd7a81932aa6f712462";
          sha256 = "151zdzndnlszqjyx796bbbv8qak79w5jrs94zcbfjmrfi3rn00im";
        };
      };
    };
    "wikimedia/shellbox" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-shellbox-a3789ef67a3d07ee1dafed0b2001b6331e5ee5e0";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-Shellbox/zipball/a3789ef67a3d07ee1dafed0b2001b6331e5ee5e0";
          sha256 = "0akvwmw8m7723f60gs0gkqcl51f3jlxanirdz3dd4gp0q001fpqq";
        };
      };
    };
    "wikimedia/timestamp" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-timestamp-138f3099b46e3f6679ac100e5ab1932e89746a05";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-Timestamp/zipball/138f3099b46e3f6679ac100e5ab1932e89746a05";
          sha256 = "0ybsvgl48zjlryfsf0a8l5danqkr9iay5jan92658h1q9vnkkn3a";
        };
      };
    };
    "wikimedia/utfnormal" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-utfnormal-6f3690d3ca446d9745fa3410bb993470afd7bc25";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/utfnormal/zipball/6f3690d3ca446d9745fa3410bb993470afd7bc25";
          sha256 = "15255h5s0fj7lj5p2vzl6pr34a5x9pwdjgbgjkz2140g4bpknz9y";
        };
      };
    };
    "wikimedia/wait-condition-loop" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-wait-condition-loop-9bb0894e8c5195d43b2f2babbe4cc8f36bd5be0e";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/wait-condition-loop/zipball/9bb0894e8c5195d43b2f2babbe4cc8f36bd5be0e";
          sha256 = "0pji1bnb8rkky4yhdzzx8b4psv9d5fm5197gzh4ah63jnrbqdzv2";
        };
      };
    };
    "wikimedia/wikipeg" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-wikipeg-d9cdf02401e0625b1561efd495bc8292827f08c8";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/wikipeg/zipball/d9cdf02401e0625b1561efd495bc8292827f08c8";
          sha256 = "1kiyc964q97h59q6ra9fzr7vn7gi8d1afm10wbw5qmxcgixx4psr";
        };
      };
    };
    "wikimedia/wrappedstring" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-wrappedstring-0d526868d92fa855c70a845336a777c63b30b400";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/WrappedString/zipball/0d526868d92fa855c70a845336a777c63b30b400";
          sha256 = "104jm1wjvs8np8xnk4da9vrsy7dm3mkk08q4wxg8264r59mx5jv8";
        };
      };
    };
    "wikimedia/xmp-reader" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-xmp-reader-cc1c372108fa088ba6f37a11480e7d2c3c98da67";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-XMPReader/zipball/cc1c372108fa088ba6f37a11480e7d2c3c98da67";
          sha256 = "1s2bd42qcry6z8xbxvw6iqjr3h49fhrgfrnq5dv8iav0h4nxfp9n";
        };
      };
    };
    "wikimedia/zest-css" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-zest-css-636a1c88bbd8681c08f0c9fc8eed83a2a443b4f4";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-Zest/zipball/636a1c88bbd8681c08f0c9fc8eed83a2a443b4f4";
          sha256 = "03107lk4ygpqkbnvwmdk9bcf15y4wpmjirxq7p2axms3v7fippsz";
        };
      };
    };
    "zordius/lightncandy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zordius-lightncandy-b451f73e8b5c73e62e365997ba3c993a0376b72a";
        src = fetchurl {
          url = "https://api.github.com/repos/zordius/lightncandy/zipball/b451f73e8b5c73e62e365997ba3c993a0376b72a";
          sha256 = "080dxyk8rz3kl5whf24jnin6nciw3mama76h3g5sqsy70l3j5d79";
        };
      };
    };
  };
  devPackages = {
    "composer/pcre" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-pcre-b2bed4734f0cc156ee1fe9c0da2550420d99a21e";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/pcre/zipball/b2bed4734f0cc156ee1fe9c0da2550420d99a21e";
          sha256 = "1cir2sv3ab727awvh0hyv3xs1wmqnamyrvlizi81qd6kr3fxmff2";
        };
      };
    };
    "composer/spdx-licenses" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-spdx-licenses-560bdcf8deb88ae5d611c80a2de8ea9d0358cc0a";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/spdx-licenses/zipball/560bdcf8deb88ae5d611c80a2de8ea9d0358cc0a";
          sha256 = "0xfnjaa20wrdxydnlcq8inrja9c40fxkfjawr4mcv75mmpfg7ra3";
        };
      };
    };
    "composer/xdebug-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-xdebug-handler-6c1925561632e83d60a44492e0b344cf48ab85ef";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/xdebug-handler/zipball/6c1925561632e83d60a44492e0b344cf48ab85ef";
          sha256 = "1cg0m2572pyxv07lysan5j8j5f9ajadwf4lz9jxqq1pnid4pfqmk";
        };
      };
    };
    "dealerdirect/phpcodesniffer-composer-installer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dealerdirect-phpcodesniffer-composer-installer-4be43904336affa5c2f70744a348312336afd0da";
        src = fetchurl {
          url = "https://api.github.com/repos/PHPCSStandards/composer-installer/zipball/4be43904336affa5c2f70744a348312336afd0da";
          sha256 = "0g5nj97752my16f2vc0pfas7p1hwr7vqvrv8vn60gzrd4zi58hsb";
        };
      };
    };
    "doctrine/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-cache-1ca8f21980e770095a31456042471a57bc4c68fb";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/cache/zipball/1ca8f21980e770095a31456042471a57bc4c68fb";
          sha256 = "1p8ia9g3mqz71bv4x8q1ng1fgcidmyksbsli1fjbialpgjk9k1ss";
        };
      };
    };
    "doctrine/dbal" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-dbal-0ac3c270590e54910715e9a1a044cc368df282b2";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/dbal/zipball/0ac3c270590e54910715e9a1a044cc368df282b2";
          sha256 = "1qf6nhrrn7hdxqvym9l3mxj1sb0fmx2h1s3yi4mjkkb4ri5hcmm8";
        };
      };
    };
    "doctrine/deprecations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-deprecations-31610dbb31faa98e6b5447b62340826f54fbc4e9";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/deprecations/zipball/31610dbb31faa98e6b5447b62340826f54fbc4e9";
          sha256 = "112s1lgszclls5zv01fx85mzrhy3whn08ajrz1qg3666kgya2iar";
        };
      };
    };
    "doctrine/event-manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-event-manager-b680156fa328f1dfd874fd48c7026c41570b9c6e";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/event-manager/zipball/b680156fa328f1dfd874fd48c7026c41570b9c6e";
          sha256 = "135zcwnlfijxzv3x5qn1zs3jmybs1n2q64pbs5gbjwmsdgrxhzsi";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-c6222283fa3f4ac679f8b9ced9a4e23f163e80d0";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/instantiator/zipball/c6222283fa3f4ac679f8b9ced9a4e23f163e80d0";
          sha256 = "059ahw73z0m24cal4f805j6h1i53f90mrmjr7s4f45yfxgwcqvcn";
        };
      };
    };
    "doctrine/sql-formatter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-sql-formatter-25a06c7bf4c6b8218f47928654252863ffc890a5";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/sql-formatter/zipball/25a06c7bf4c6b8218f47928654252863ffc890a5";
          sha256 = "0vhvsrmsa1js8ba9nw5ss0kpv937py3pkvlvxd7zkz1yg038cpl3";
        };
      };
    };
    "felixfbecker/advanced-json-rpc" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "felixfbecker-advanced-json-rpc-b5f37dbff9a8ad360ca341f3240dc1c168b45447";
        src = fetchurl {
          url = "https://api.github.com/repos/felixfbecker/php-advanced-json-rpc/zipball/b5f37dbff9a8ad360ca341f3240dc1c168b45447";
          sha256 = "1414k12bznhi6zbb41sm7m2wjnpabvi1xybh0v6rxf8khj15rccq";
        };
      };
    };
    "giorgiosironi/eris" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "giorgiosironi-eris-fe4302d938c6cca1b661032da4cfe9b7a11d1009";
        src = fetchurl {
          url = "https://api.github.com/repos/giorgiosironi/eris/zipball/fe4302d938c6cca1b661032da4cfe9b7a11d1009";
          sha256 = "0n3vyr6nhwmjgfzyl19hbi25qsl3fh78vaj6xr9pwci92jw7z6ny";
        };
      };
    };
    "hamcrest/hamcrest-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hamcrest-hamcrest-php-8c3d0a3f6af734494ad8f6fbbee0ba92422859f3";
        src = fetchurl {
          url = "https://api.github.com/repos/hamcrest/hamcrest-php/zipball/8c3d0a3f6af734494ad8f6fbbee0ba92422859f3";
          sha256 = "1ixmmpplaf1z36f34d9f1342qjbcizvi5ddkjdli6jgrbla6a6hr";
        };
      };
    };
    "johnkary/phpunit-speedtrap" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "johnkary-phpunit-speedtrap-d6600d2218396b78856c335f83479503957a5fa9";
        src = fetchurl {
          url = "https://api.github.com/repos/johnkary/phpunit-speedtrap/zipball/d6600d2218396b78856c335f83479503957a5fa9";
          sha256 = "00q75cwzznkk2dd9ns8z8vpmvy47k8lbyzs4r16mwcd0kllk1nfl";
        };
      };
    };
    "mediawiki/mediawiki-codesniffer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mediawiki-mediawiki-codesniffer-c559bc02e87b0a969b6ed7380d7fa1d02738158b";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-tools-codesniffer/zipball/c559bc02e87b0a969b6ed7380d7fa1d02738158b";
          sha256 = "05bdwz0071l6915msnyh2m52r2gq1i0wjjs97ik74al7dd8rgmxs";
        };
      };
    };
    "mediawiki/mediawiki-phan-config" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mediawiki-mediawiki-phan-config-58c01ba9cea443c9d345dc1ba87ffe082a188633";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-tools-phan/zipball/58c01ba9cea443c9d345dc1ba87ffe082a188633";
          sha256 = "0p6s6q08kgl9rf44lsz62jrn4w68a39npdnzpv0rii9ds82fx9dg";
        };
      };
    };
    "mediawiki/phan-taint-check-plugin" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mediawiki-phan-taint-check-plugin-01fb7e924a2e9fa58e88eda61775feccee38aad6";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-tools-phan-SecurityCheckPlugin/zipball/01fb7e924a2e9fa58e88eda61775feccee38aad6";
          sha256 = "1np5ds0wjaq9hl88mcl9cc7y720v7ddmxgs0hdswp2vphlrqppgb";
        };
      };
    };
    "microsoft/tolerant-php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "microsoft-tolerant-php-parser-3eccfd273323aaf69513e2f1c888393f5947804b";
        src = fetchurl {
          url = "https://api.github.com/repos/microsoft/tolerant-php-parser/zipball/3eccfd273323aaf69513e2f1c888393f5947804b";
          sha256 = "1aqh8dzmd5qbhiq5h36r069f98bb8rzlfx28ccy8fn9mvq7zk59z";
        };
      };
    };
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-024473a478be9df5fdaca2c793f2232fe788e414";
        src = fetchurl {
          url = "https://api.github.com/repos/myclabs/DeepCopy/zipball/024473a478be9df5fdaca2c793f2232fe788e414";
          sha256 = "0bpk7y1bwf930592rgrqxn52ymjas3pwlwrzgz8chvjgkl292lp0";
        };
      };
    };
    "netresearch/jsonmapper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "netresearch-jsonmapper-8e76efb98ee8b6afc54687045e1b8dba55ac76e5";
        src = fetchurl {
          url = "https://api.github.com/repos/cweiske/jsonmapper/zipball/8e76efb98ee8b6afc54687045e1b8dba55ac76e5";
          sha256 = "1shqgdd3nw0v4zmkas30czg379z0xnbgpvrjh4z5398v8a341hk9";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-715f4d25e225bc47b293a8b997fe6ce99bf987d2";
        src = fetchurl {
          url = "https://api.github.com/repos/nikic/PHP-Parser/zipball/715f4d25e225bc47b293a8b997fe6ce99bf987d2";
          sha256 = "0wi6fvyyap9ngkmis19wfxnldfnw9v98jvdxa48gcqiksk467dd9";
        };
      };
    };
    "phan/phan" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phan-phan-86a7acd99c1239b8867b49feca2398851212e7fe";
        src = fetchurl {
          url = "https://api.github.com/repos/phan/phan/zipball/86a7acd99c1239b8867b49feca2398851212e7fe";
          sha256 = "0i2n7fm5ls1xyv78qd9rpcl79ss4jijzfjbkjvmn8czh76irx3b2";
        };
      };
    };
    "phar-io/manifest" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-manifest-54750ef60c58e43759730615a392c31c80e23176";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/manifest/zipball/54750ef60c58e43759730615a392c31c80e23176";
          sha256 = "0xas0i7jd6w4hknfmbwdswpzngblm3d884hy3rba0q2cs928ndml";
        };
      };
    };
    "phar-io/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-version-4f7fd7836c6f332bb2933569e566a0d6c4cbed74";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/version/zipball/4f7fd7836c6f332bb2933569e566a0d6c4cbed74";
          sha256 = "0mdbzh1y0m2vvpf54vw7ckcbcf1yfhivwxgc9j9rbb7yifmlyvsg";
        };
      };
    };
    "php-parallel-lint/php-console-color" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-parallel-lint-php-console-color-7adfefd530aa2d7570ba87100a99e2483a543b88";
        src = fetchurl {
          url = "https://api.github.com/repos/php-parallel-lint/PHP-Console-Color/zipball/7adfefd530aa2d7570ba87100a99e2483a543b88";
          sha256 = "10fhc2hxai7lbnkr4ml92xkvsn132hxlqam357ckr4pxlcpyrw0i";
        };
      };
    };
    "php-parallel-lint/php-console-highlighter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-parallel-lint-php-console-highlighter-5b4803384d3303cf8e84141039ef56c8a123138d";
        src = fetchurl {
          url = "https://api.github.com/repos/php-parallel-lint/PHP-Console-Highlighter/zipball/5b4803384d3303cf8e84141039ef56c8a123138d";
          sha256 = "1wgg1pfcl824d114xfqfmma72c61z34ckx6l1msl36gpg0lq6dh3";
        };
      };
    };
    "php-parallel-lint/php-parallel-lint" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-parallel-lint-php-parallel-lint-6db563514f27e19595a19f45a4bf757b6401194e";
        src = fetchurl {
          url = "https://api.github.com/repos/php-parallel-lint/PHP-Parallel-Lint/zipball/6db563514f27e19595a19f45a4bf757b6401194e";
          sha256 = "0y586m84fxf5ah1xxd8i4sxrqn2bk36v9pcrz3gq5g3s1am7qi68";
        };
      };
    };
    "phpcsstandards/phpcsextra" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpcsstandards-phpcsextra-746c3190ba8eb2f212087c947ba75f4f5b9a58d5";
        src = fetchurl {
          url = "https://api.github.com/repos/PHPCSStandards/PHPCSExtra/zipball/746c3190ba8eb2f212087c947ba75f4f5b9a58d5";
          sha256 = "09py3wmyfjfh511vnrhh8adwaypk2c89h80llblmvgvxbjl1gjqa";
        };
      };
    };
    "phpcsstandards/phpcsutils" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpcsstandards-phpcsutils-908247bc65010c7b7541a9551e002db12e9dae70";
        src = fetchurl {
          url = "https://api.github.com/repos/PHPCSStandards/PHPCSUtils/zipball/908247bc65010c7b7541a9551e002db12e9dae70";
          sha256 = "18gz9y236cg8kn0ppp9g14xvibqxy599n8r9hrzqcnmc4wn4ghdp";
        };
      };
    };
    "phpdocumentor/reflection-common" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-common-1d01c49d4ed62f25aa84a747ad35d5a16924662b";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/1d01c49d4ed62f25aa84a747ad35d5a16924662b";
          sha256 = "1wx720a17i24471jf8z499dnkijzb4b8xra11kvw9g9hhzfadz1r";
        };
      };
    };
    "phpdocumentor/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-docblock-e5e784149a09bd69d9a5e3b01c5cbd2e2bd653d8";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/e5e784149a09bd69d9a5e3b01c5cbd2e2bd653d8";
          sha256 = "0lqsykg5cws8jagq3lzvyq0cwk51yv872qrif8yjfxcqkimmhmk8";
        };
      };
    };
    "phpdocumentor/type-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-type-resolver-679e3ce485b99e84c775d28e2e96fade9a7fb50a";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/679e3ce485b99e84c775d28e2e96fade9a7fb50a";
          sha256 = "1iq6xrqkl9pq0d7a9bwm517nh0757v21byxjlmp1m44cnix7g89q";
        };
      };
    };
    "phpstan/phpdoc-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpstan-phpdoc-parser-72e51f7c32c5aef7c8b462195b8c599b11199893";
        src = fetchurl {
          url = "https://api.github.com/repos/phpstan/phpdoc-parser/zipball/72e51f7c32c5aef7c8b462195b8c599b11199893";
          sha256 = "1573hhv0lmjwnpn0j1gvbhi5imiwh7l5592flq2gd5q472lia4ky";
        };
      };
    };
    "phpunit/php-code-coverage" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-code-coverage-85402a822d1ecf1db1096959413d35e1c37cf1a5";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/85402a822d1ecf1db1096959413d35e1c37cf1a5";
          sha256 = "04bj7hqydv7r2dnfsyayg37f1f5x0bv7m5b1vmnl50zlz2a1dl8j";
        };
      };
    };
    "phpunit/php-file-iterator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-file-iterator-cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf";
          sha256 = "1407d8f1h35w4sdikq2n6cz726css2xjvlyr1m4l9a53544zxcnr";
        };
      };
    };
    "phpunit/php-invoker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-invoker-5a10147d0aaf65b58940a0b72f71c9ac0423cc67";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-invoker/zipball/5a10147d0aaf65b58940a0b72f71c9ac0423cc67";
          sha256 = "1vqnnjnw94mzm30n9n5p2bfgd3wd5jah92q6cj3gz1nf0qigr4fh";
        };
      };
    };
    "phpunit/php-text-template" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-text-template-5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28";
          sha256 = "0ff87yzywizi6j2ps3w0nalpx16mfyw3imzn6gj9jjsfwc2bb8lq";
        };
      };
    };
    "phpunit/php-timer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-timer-5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-timer/zipball/5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2";
          sha256 = "0g1g7yy4zk1bidyh165fsbqx5y8f1c8pxikvcahzlfsr9p2qxk6a";
        };
      };
    };
    "phpunit/phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-phpunit-3767b2c56ce02d01e3491046f33466a1ae60a37f";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/phpunit/zipball/3767b2c56ce02d01e3491046f33466a1ae60a37f";
          sha256 = "0cnpmpddricszgjdgm7dw9cw1l61sfp70bvvninzf0kcx1m8yhkg";
        };
      };
    };
    "psr/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-cache-aa5030cfa5405eccfdcb1083ce040c2cb8d253bf";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/cache/zipball/aa5030cfa5405eccfdcb1083ce040c2cb8d253bf";
          sha256 = "07rnyjwb445sfj30v5ny3gfsgc1m7j7cyvwjgs2cm9slns1k1ml8";
        };
      };
    };
    "psy/psysh" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psy-psysh-d73fa3c74918ef4522bb8a3bf9cab39161c4b57c";
        src = fetchurl {
          url = "https://api.github.com/repos/bobthecow/psysh/zipball/d73fa3c74918ef4522bb8a3bf9cab39161c4b57c";
          sha256 = "0nrkinza27z9l6hfwfay1sn81pnf902zl1aai6y4vpqxvvy4hqra";
        };
      };
    };
    "sabre/event" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabre-event-86d57e305c272898ba3c28e9bd3d65d5464587c2";
        src = fetchurl {
          url = "https://api.github.com/repos/sabre-io/event/zipball/86d57e305c272898ba3c28e9bd3d65d5464587c2";
          sha256 = "0axikjgdy3angpwhxq28n8si986i60xyzll8q5gfpxkmkh627k8a";
        };
      };
    };
    "sebastian/cli-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-cli-parser-2b56bea83a09de3ac06bb18b92f068e60cc6f50b";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/cli-parser/zipball/2b56bea83a09de3ac06bb18b92f068e60cc6f50b";
          sha256 = "18rr5nj0dm4wmfppybdrs2pfkzy5nabb1lik9r9a661f926q8xv9";
        };
      };
    };
    "sebastian/code-unit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-1fc9f64c0927627ef78ba436c9b17d967e68e120";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/code-unit/zipball/1fc9f64c0927627ef78ba436c9b17d967e68e120";
          sha256 = "04vlx050rrd54mxal7d93pz4119pas17w3gg5h532anfxjw8j7pm";
        };
      };
    };
    "sebastian/code-unit-reverse-lookup" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-reverse-lookup-ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/code-unit-reverse-lookup/zipball/ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5";
          sha256 = "1h1jbzz3zak19qi4mab2yd0ddblpz7p000jfyxfwd2ds0gmrnsja";
        };
      };
    };
    "sebastian/comparator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-comparator-fa0f136dd2334583309d32b62544682ee972b51a";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/comparator/zipball/fa0f136dd2334583309d32b62544682ee972b51a";
          sha256 = "0m8ibkwaxw2q5v84rlvy7ylpkddscsa8hng0cjczy4bqpqavr83w";
        };
      };
    };
    "sebastian/complexity" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-complexity-25f207c40d62b8b7aa32f5ab026c53561964053a";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/complexity/zipball/25f207c40d62b8b7aa32f5ab026c53561964053a";
          sha256 = "1k8w6z8zcym3y5s0riami9667s0gd206jr3za6pkbb90zzj6b76g";
        };
      };
    };
    "sebastian/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-diff-ba01945089c3a293b01ba9badc29ad55b106b0bc";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/diff/zipball/ba01945089c3a293b01ba9badc29ad55b106b0bc";
          sha256 = "1c5xr3mfcf7jzrj0grbc7lapi60j42dcwjsjs1x8kn5willmz9mp";
        };
      };
    };
    "sebastian/environment" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-environment-830c43a844f1f8d5b7a1f6d6076b784454d8b7ed";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/environment/zipball/830c43a844f1f8d5b7a1f6d6076b784454d8b7ed";
          sha256 = "02045n3in01zk571v1phyhj0b2mvnvx8qnlqvw4j33r7qdd4clzn";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-78c00df8f170e02473b682df15bfcdacc3d32d72";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/exporter/zipball/78c00df8f170e02473b682df15bfcdacc3d32d72";
          sha256 = "1nbx0w1q50hv47k4hf7k17c3lwi8zbm6qm8v2rmy3qkh84z5ygi5";
        };
      };
    };
    "sebastian/global-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-global-state-bca7df1f32ee6fe93b4d4a9abbf69e13a4ada2c9";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/global-state/zipball/bca7df1f32ee6fe93b4d4a9abbf69e13a4ada2c9";
          sha256 = "1sixfy1wp9bf2jx92pbvv0w5swnisga4klnpw6dgmpvcscvqqsdl";
        };
      };
    };
    "sebastian/lines-of-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-lines-of-code-e1e4a170560925c26d424b6a03aed157e7dcc5c5";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/lines-of-code/zipball/e1e4a170560925c26d424b6a03aed157e7dcc5c5";
          sha256 = "1ycasbrcsmyqszihx730l9krh2inj72xkpvb2fqd5y5xn4r8va2g";
        };
      };
    };
    "sebastian/object-enumerator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-enumerator-5c9eeac41b290a3712d88851518825ad78f45c71";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/5c9eeac41b290a3712d88851518825ad78f45c71";
          sha256 = "11853z07w8h1a67wsjy3a6ir5x7khgx6iw5bmrkhjkiyvandqcn1";
        };
      };
    };
    "sebastian/object-reflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-reflector-b4f479ebdbf63ac605d183ece17d8d7fe49c15c7";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/b4f479ebdbf63ac605d183ece17d8d7fe49c15c7";
          sha256 = "0g5m1fswy6wlf300x1vcipjdljmd3vh05hjqhqfc91byrjbk4rsg";
        };
      };
    };
    "sebastian/recursion-context" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-recursion-context-e75bd0f07204fec2a0af9b0f3cfe97d05f92efc1";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/e75bd0f07204fec2a0af9b0f3cfe97d05f92efc1";
          sha256 = "1ag6ysxffhxyg7g4rj9xjjlwq853r4x92mmin4f09hn5mqn9f0l1";
        };
      };
    };
    "sebastian/resource-operations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-resource-operations-05d5692a7993ecccd56a03e40cd7e5b09b1d404e";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/resource-operations/zipball/05d5692a7993ecccd56a03e40cd7e5b09b1d404e";
          sha256 = "186kqdsgsrdyz4j2sv5lgjyr9ykhgbkv8gvkmaqdq99c11qfjin2";
        };
      };
    };
    "sebastian/type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-type-75e2c2a32f5e0b3aef905b9ed0b179b953b3d7c7";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/type/zipball/75e2c2a32f5e0b3aef905b9ed0b179b953b3d7c7";
          sha256 = "0bvfvb62qbpy2hzxs4bjzb0xhks6h3cp6qx96z4qlyz6wl2fa1w5";
        };
      };
    };
    "sebastian/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-version-c6c1022351a901512170118436c764e473f6de8c";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/version/zipball/c6c1022351a901512170118436c764e473f6de8c";
          sha256 = "1bs7bwa9m0fin1zdk7vqy5lxzlfa9la90lkl27sn0wr00m745ig1";
        };
      };
    };
    "seld/jsonlint" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "seld-jsonlint-76d449a358ece77d6f1d6331c68453e657172202";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/jsonlint/zipball/76d449a358ece77d6f1d6331c68453e657172202";
          sha256 = "1qqbnhifw9l6wv621ihc2q54ci6y3k4qcrck69ncwd0kzfpvnr3b";
        };
      };
    };
    "squizlabs/php_codesniffer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "squizlabs-php_codesniffer-14f5fff1e64118595db5408e946f3a22c75807f7";
        src = fetchurl {
          url = "https://api.github.com/repos/PHPCSStandards/PHP_CodeSniffer/zipball/14f5fff1e64118595db5408e946f3a22c75807f7";
          sha256 = "0dr37j7xlpbqlwaccn76f68p12q80zz13yxr6dkr8wlhjhq0zl3y";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-fefcc18c0f5d0efe3ab3152f15857298868dc2c3";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/console/zipball/fefcc18c0f5d0efe3ab3152f15857298868dc2c3";
          sha256 = "017hwcrl6gyf5gpqhz3xzdq0farcfwcb4hswpbh9s6bkgdq2rqka";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-service-contracts-e53260aabf78fb3d63f8d79d69ece59f80d5eda0";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/service-contracts/zipball/e53260aabf78fb3d63f8d79d69ece59f80d5eda0";
          sha256 = "0qvk3ajc1jgw97ibr3jmxh7wxmxrvra5471ashhbd56gaiim7iq4";
        };
      };
    };
    "symfony/string" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-string-446e0d146f991dde3e73f45f2c97a9faad773c82";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/string/zipball/446e0d146f991dde3e73f45f2c97a9faad773c82";
          sha256 = "0ad2xspi7yp2631nhzfqvb8lnq71vmhwxm6lhms8zj3p9z7vgvsg";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-82b478c69745d8878eb60f9a049a4d584996f73a";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/var-dumper/zipball/82b478c69745d8878eb60f9a049a4d584996f73a";
          sha256 = "0zn72hiq2q3smyx4b192kzfvd3nb0ibsksf5hxc9wvnb9a2kjyjn";
        };
      };
    };
    "theseer/tokenizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "theseer-tokenizer-737eda637ed5e28c3413cb1ebe8bb52cbf1ca7a2";
        src = fetchurl {
          url = "https://api.github.com/repos/theseer/tokenizer/zipball/737eda637ed5e28c3413cb1ebe8bb52cbf1ca7a2";
          sha256 = "1pi1wlzmyzla2wli0h3kqf8vhddhqra2bkp9rg81b38pbh791w34";
        };
      };
    };
    "tysonandre/var_representation_polyfill" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tysonandre-var_representation_polyfill-e9116c2c352bb0835ca428b442dde7767c11ad32";
        src = fetchurl {
          url = "https://api.github.com/repos/TysonAndre/var_representation_polyfill/zipball/e9116c2c352bb0835ca428b442dde7767c11ad32";
          sha256 = "1xq0msx88z4dcm7mkg0rjlwrp4pp642xz6jz2rx7cql3sdk068zz";
        };
      };
    };
    "webmozart/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-assert-11cb2199493b2f8a3b53e7f19068fc6aac760991";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozarts/assert/zipball/11cb2199493b2f8a3b53e7f19068fc6aac760991";
          sha256 = "18qiza1ynwxpi6731jx1w5qsgw98prld1lgvfk54z92b1nc7psix";
        };
      };
    };
    "wikimedia/alea" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-alea-ef39b2c50af83c2b0c358bcb2ef8ce9d709bc054";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/mediawiki-libs-alea/zipball/ef39b2c50af83c2b0c358bcb2ef8ce9d709bc054";
          sha256 = "0k7h4z32lnqsz1vhjzgincjl22262dqzb00zfq89x6blflpb56bi";
        };
      };
    };
    "wikimedia/langconv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-langconv-4bd255fd316df6650c489fa0f9b621c48458859b";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/langconv/zipball/4bd255fd316df6650c489fa0f9b621c48458859b";
          sha256 = "1r7lpr1cfm8hqwa3h73flf3yvp56zwin1sma5fyjp82183vslz7z";
        };
      };
    };
    "wikimedia/testing-access-wrapper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wikimedia-testing-access-wrapper-975e89994a667b2ab10b36f99d049318b6137db8";
        src = fetchurl {
          url = "https://api.github.com/repos/wikimedia/testing-access-wrapper/zipball/975e89994a667b2ab10b36f99d049318b6137db8";
          sha256 = "0s8aaxwcr7nn110q29v0igx8cxll42zsdwhkqnq3l95033x7xwii";
        };
      };
    };
    "wmde/hamcrest-html-matchers" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "wmde-hamcrest-html-matchers-4dd3ca958e1087c60a0933d10b53abc0423ad9dc";
        src = fetchurl {
          url = "https://api.github.com/repos/wmde/hamcrest-html-matchers/zipball/4dd3ca958e1087c60a0933d10b53abc0423ad9dc";
          sha256 = "0x25g0nslf411ak7mlvl6mrqdyj1rm1disrdkmbp6rb9ghdqiyzj";
        };
      };
    };
  };
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "mediawiki-core";
  src = composerEnv.filterSrc ./.;
  executable = false;
  symlinkDependencies = false;
  meta = {
    homepage = "https://www.mediawiki.org/";
    license = "GPL-2.0-or-later";
  };
}
