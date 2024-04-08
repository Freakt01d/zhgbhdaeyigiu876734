package com.example.enhancedaging;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DatabaseHelper_mes extends SQLiteOpenHelper {

    private static final String DATABASE_NAME = "messenger.db";
    private static final int DATABASE_VERSION = 1;

    // Table names and column names
    private static final String TABLE_WHITELIST = "whitelist";
    private static final String TABLE_BLACKLIST = "blacklist";
    private static final String COLUMN_ID = "_id";
    private static final String COLUMN_URL = "url";

    public DatabaseHelper_mes(Context context) {
        super(context, DATABASE_NAME, null, DATABASE_VERSION);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        // Create tables for whitelist and blacklist
        String CREATE_WHITELIST_TABLE = "CREATE TABLE " + TABLE_WHITELIST + "("
                + COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT,"
                + COLUMN_URL + " TEXT" + ")";
        String CREATE_BLACKLIST_TABLE = "CREATE TABLE " + TABLE_BLACKLIST + "("
                + COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT,"
                + COLUMN_URL + " TEXT" + ")";
        db.execSQL(CREATE_WHITELIST_TABLE);
        db.execSQL(CREATE_BLACKLIST_TABLE);

        // Pre-defined URLs for whitelist
        String[] whitelistUrls = {
                "https://www.india.gov.in/",
                "https://igod.gov.in/sector/GRNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/_RNsIHQBsvhI6u6Q3tfu/organizations",
                "https://igod.gov.in/sector/DxNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/AhNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/ABNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/BBNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/ERNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/GhNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/BRNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/BxNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/ARNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/CBNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/CxNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/FBNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/GBNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/ChNsIHQBsvhI6u6Q3tju/organizations",
                "https://igod.gov.in/sector/DBNsIHQBsvhI6u6Q3tju/organizations"

        };

        // Pre-defined URLs for blacklist
        String[] blacklistUrls = {
                "br-icloud.com.br",
                "mp3raid.com/music/krizz_kaliko.html",
                "bopsecrets.org/rexroth/cr/1.htm",
                "http://www.garage-pirenne.be/index.php?option=com_content&view=article&id=70&vsig70_0=15",
                "http://adventure-nicaragua.net/index.php?option=com_mailto&tmpl=component&link=aHR0cDovL2FkdmVudHVyZS1uaWNhcmFndWEubmV0L2luZGV4LnBocD9vcHRpb249Y29tX2NvbnRlbnQmdmlldz1hcnRpY2xlJmlkPTQ3OmFib3V0JmNhdGlkPTM2OmRlbW8tYXJ0aWNsZXMmSXRlbWlkPTU0",
                "http://buzzfil.net/m/show-art/ils-etaient-loin-de-s-imaginer-que-le-hibou-allait-faire-ceci-quand-ils-filmaient-2.html",
                "espn.go.com/nba/player/_/id/3457/brandon-rush",
                "yourbittorrent.com/?q=anthony-hamilton-soulife",
                "http://www.pashminaonline.com/pure-pashminas",
                "allmusic.com/album/crazy-from-the-heat-r16990",
                "corporationwiki.com/Ohio/Columbus/frank-s-benson-P3333917.aspx",
                "http://www.ikenmijnkunst.nl/index.php/exposities/exposities-2006",
                "myspace.com/video/vid/30602581",
                "http://www.lebensmittel-ueberwachung.de/index.php/aktuelles.1",
                "http://www.szabadmunkaero.hu/cimoldal.html?start=12",
                "http://larcadelcarnevale.com/catalogo/palloncini",
                "quickfacts.census.gov/qfd/maps/iowa_map.html",
                "nugget.ca/ArticleDisplay.aspx?archive=true&e=1160966",
                "uk.linkedin.com/pub/steve-rubenstein/8/718/755",
                "http://www.vnic.co/khach-hang.html",
                "baseball-reference.com/players/h/harrige01.shtml",
                "signin.eby.de.zukruygxctzmmqi.civpro.co.za",
                "192.com/atoz/people/oakley/patrick/",
                "nytimes.com/1998/03/29/style/cuttings-oh-that-brazen-raucous-glorious-hibiscus.html",
                "escholarship.org/uc/item/5xt4952c",
                "songfacts.com/detail.php?id=13410",
                "casamanana.org/education/blba/",
                "http://hollywoodlife.com/2014/05/01/rihanna-iheartradio-music-awards-dress-2014-pics/",
                "http://www.marketingbyinternet.com/mo/e56508df639f6ce7d55c81ee3fcd5ba8/",
                "en.wikipedia.org/wiki/North_Dakota",
                "soaps.sheknows.com/daysofourlives/news/id/20259/Days_Of_Our_Lives_Casts_Ruta_Lee/",
                "perfectpeople.net/celebrity-star/6920/gidget-gein.htm",
                "media.caltech.edu/press_releases/13186",
                "wikiobits.com/Obits/TonyProudfoot",
                "vanderbilt.rivals.com/viewcoach.asp?coach=2079&sport=1&year=2011",
                "http://peluqueriadeautor.com/index.php?option=com_virtuemart&page=shop.browse&category_id=31&Itemid=70",
                "movies.yahoo.com/shop?d=hv&cf=info&id=1800340831",
                "cyndislist.com/us/pa/counties",
                "http://www.824555.com/app/member/SportOption.php?uid=guest&langx=gb",
                "http://www.raci.it/component/user/reset.html",
                "https://docs.google.com/spreadsheet/viewform?formkey=dGg2Z1lCUHlSdjllTVNRUW50TFIzSkE6MQ",
                "psychology.wikia.com/wiki/Phonemes",
                "info.centriq.com/content/fivereasons",
                "articles.baltimoresun.com/1991-06-11/sports/1991162162_1_james-koehler-texas-rangers-terrell-lowery",
                "infinitysw.com/",
                "strawberrycreekgardens.com/",
                "http://earth-sure.com/industrial-tech/everlast-impact-resistant-dumpster-enclosure",
                "spoke.com/dir/p/desantis/nick",
                "wordsmith.org/words/pignus.html",
                "http://interpark.com/displaycorner/FreeMarket.do?_method=itemCateList&free1=pc&free2=007001008003&free3=item&disp_no=007001008003",
                "http://www.newtec.ac.uk/courses/health-and-social-care/level-2-diploma-in-health-a-social-care-.html",
                "http://www.kingsmillshotel.com/spring/mothers-day",
                "almanac.logos.com/Denominations",
                "gaming.wikia.com/wiki/Backbreaker_(video_game)",
                "ceu.hu/",
                "registry.weddingchannel.com/coupledir/20108/C/R314763282/JARED_CLOUGH_AND_TAJAI_RITCHIE.htm",
                "linkedin.com/pub/george-cleveland/7/80a/599",
                "sunshinemills.com/",
                "agoda.com/north_america/canada/montreal_qc/attractions/hotels_near_mcgill_university_centre_for_continuing_education.html",
                "ctv.ca/generic/WebSpecials/sponsorship_scandal/",
                "http://www.approvi.com.br/ck.htm",
                "http://www.shaborooz.ir/index.php?view=article&catid=7:1390-01-27-09-09-55&id=23:1390-04-12-08-07-33&tmpl=component&print=1&layout=default&page=&option=com_content&Itemid=2",
                "veoox.com/tags/game.html",
                "chuckwalkertrio.blogspot.com/",
                "aerosolesshoes.org/",
                "http://www.juventudelirica.com.br/index.html",
                "http://www.myenrg.com/southwest/9-texas",
                "recipelink.com/msgbrd/board_14/2007/DEC/29094.html",
                "http://www.musimagen.com/lista_socios.php?letra=303%91",
                "ideas.repec.org/f/pma235.html",
                "peopleaz.org/firstname/Fowlkes/6",
                "orensamtraktrip.wordpress.com/",
                "retajconsultancy.com",
                "alexa.com/whatshot?q=james+arness",
                "jpopasia.com/group/arashi/discography/",
                "kitsapsun.com/photos/2011/feb/25/177999/",
                "local.yahoo.com/info-42862457-oakland-international-airport-oakland",
                "tripadvisor.com/Restaurant_Review-g680765-d1768647-Reviews-Yacha_Yacha-Miyakojima_Okinawa_Prefecture_Kyushu_Okinawa.html",
                "articles.elitefts.com/articles/training-articles/five-great-exercises-for-building-a-dominant-defensive-lineman/",
                "broadwaystars.com/classic/?source=www.playbill.com",
                "http://www.pn-wuppertal.de/links/2-linkseite/5-httpwwwkrebshilfede",
                "forums.networkinfrastructure.info/motorola-wireless-lan-switches/",
                "youtube.com/watch?v=mwpoPQ1SPJU",
                "mccall-idchamber.org/",
                "chacha.com/question/who-said-the-quote-%27say-what-you-mean%2C-mean-what-you-say-and-put-a-beat-to-it%27",
                "friars.com/sports/m-baskbl/archive/prov-m-baskbl-2003.html",
                "http://asociacionkaribu.org/index.php/servicios/centro-jambo",
                "http://www.martin-busker.de/administrator/help/en-GB/css/Facture/c4d12146ebce8e1684d3542308399779/8fa39dab95edb1b676b638a672278eae/particuliers-45636.php",
                "pipl.com/directory/name/Whissell/180",
                "spokeo.com/John+Collet",
                "http://www.parafiapiaski.pl/index.php?option=com_contact&view=contact&id=1&Itemid=6",
                "http://fanpage.gr/family/gineka/%ce%b1%cf%85%cf%84%ce%bf%ce%af-%ce%b5%ce%af%ce%bd%ce%b1%ce%b9-%ce%bf%ce%b9-13-%cf%89%cf%81%ce%b1%ce%b9%cf%8c%cf%84%ce%b5%cf%81%ce%bf%ce%b9-%ce%ad%ce%bb%ce%bb%ce%b7%ce%bd%ce%b5%cf%82-%ce%b1%ce%bd-2/",
                "faqs.org/copyright/handbook-for-the-individual-or-group-culture-free/",
                "duckduckgo.com/1/c/Roman_Catholic_cathedrals_in_Canada",
                "alexpay2.beget.tech",
                "http://worldoftanks.ru/ru/content/guide/payments_instruction/mobile-payments-rostelekom-ural-utel/",
                "http://www.artedesignsas.it/catalogo.html?page=shop.browse&category_id=14",
                "en.wikipedia.org/wiki/Lloyd_Bacon",
                "http://serverfault.com/questions/682832/squid-transparent-https-certificate-error-ssl-error-bad-cert-domain",
                "http://www.viamanaus.com.br/index.php?option=com_wrapper&view=wrapper&Itemid=297",
                "ciajfk.com/harold.html",
                "http://www.protect-effect.nl/diensten/62-telefonie",
                "indyweek.com/artery/archives/2011/10/07/come-back-to-the-1980s-at-the-escapism-film-festival-which-begins-friday",
                "linkedin.com/pub/charles-gariepy/2/642/28",
                "http://www.gst-ukraine.com.ua/ukraine/tours/2754-arboretum-alexandria-sofiyivka",
                "facebook.unitedcolleges.net",
                "http://www.bimabn.com/1-configurazione-supporto-apple.store-contatta/c/Apple-id/3d465e25b47e6bc23ae55f5de40e1bb1/",
                "eyeappealoptometry.com/",
                "brophygen.com/",
                "icehockey.wikia.com/wiki/Dan_Blackburn",
                "gurufocus.com/news/116068/who-is-the-warren-buffett-of-canada-prem-watsa-of-fairfax-financial-ffh-or-paul-desmarais-of-power-corporation-of-canada-pow",
                "http://www.bg-ricevimenti.it/index.php/location/osteria-del-molo.html?fontstyle=f-smaller",
                "stewstew.com/",
                "livingharvest.com/products/ice-cream-bars",
                "http://icicibank.com/Personal-Banking/offers/offer-detail.page?id=offer-readers-digest-magazine-offer-20150202203953555",
                "http://9779.info/%E5%84%BF%E7%AB%A5%E7%AB%8B%E4%BD%93%E7%BA%B8%E8%B4%B4%E7%94%BB/",
                "bleacherreport.com/articles/300242-doug-harvey-one-of-the-best-ever-to-play-the-game",
                "http://www.boeuf-soufflenheim.com/de.feed?type=rss",
                "artfacts.net/it/istituzion/ms--muzeum-sztuki-lodz-2724/visione-generale.html",
                "parsippanysoccerclub.org/",
                "international.uiowa.edu/services/language/allnet/resources/languages/turkish.asp",
                "btscene.eu/verified-search/torrent/franco+piersanti/",
                "signature-editions.com/",
                "en.wikipedia.org/wiki/Blessed_by_a_Broken_Heart",
                "http://www.trenker-bestattungen.de/index.php?option=com_content&view=article&id=13&Itemid=14",
                "national.ca/Bold-Thinking/NATIONAL-Publications.aspx",
                "halkbankparaf-para.com",
                "http://motthegioi.vn/the-gioi-cuoi/clip-dai-gia-mac-ca-voi-co-ban-banh-my-185682.html",
                "metroactive.com/papers/metro/01.29.98/idiotflesh-9804.html",
                "https://twitter.com/home?status=%E3%83%8C%E3%81%91%E3%82%8B%EF%BC%81%E3%80%90%E3%82%A2%E3%83%8B%E3%83%A1%E3%80%91+http%3A%2F%2Fero-video.net%2Ft%2FwjfL4fhPp1lPxTZb+%E3%82%A2%E3%83%AA%E3%82%B5%E5%86%8D%E3%81%B3%EF%BC%81%E3%82%A8%E3%83%AD%E3%82%A2%E3%83%8B%E3%83%A1+%23ero+%23douga+%23agesage",
                "http://correios.com.br/para-sua-empresa/comunicacao/certificados-digitais/ajuda-interativa/informacoes-sobre-a-baixa-dos-certificados-a1",
                "http://olx.ro/i2/electronice-si-electrocasnice/electrocasnice/masini-de-cusut/gtm.start",
                "http://www.aba-diagnostic.com/espace-prive/reset.html",
                "msn.foxsports.com/nhl/player/yann-sauve/720461",
                "hallmark.businessgreetings.com/",
                "musicstack.com/records-cds/toni+tony+tone",
                "nudecelebsnow.com/tags/1/victoria+justus.htm",
                "http://www.paoarapanui.cl/index.php?option=com_contact&view=contact&id=1&Itemid=6",
                "worldwrestlinginsanity.com/am2/publish/ringofhonorlive/roh_sinclair_tv2.shtml",
                "http://www.designeremdoces.com/components/com_contact/ggdrives/",
                "http://slashdot.org/submission/2916707/facebook-to-include-profile-photos-in-its-facial-recognition-database",
                "facebook.com/people/Yui-Takeshita/100001611015714",
                "sportsposterwarehouse.com/items_388__grandprixclassicscoll.html",
                "padmapper.com/search/apartments/Quebec/Montreal-est/",
                "mrskin.com/christina-ricci-nude-c868.html",
                "lip-service.com/webzine/tag/post-apocalyptic-fashion/",
                "http://www.tiendagnulinux.com.ar/calcomanias-en-vinilo?page=shop.browse&category_id=52",
                "http://chelurao.ru/index.php?option=com_content&view=article&id=9&Itemid=10&lang=ru",
                "linkedin.com/pub/dir/elizabeth/scarborough",
                "cqgcr.ca/ang/producer01.php",
                "huffingtonpost.com/2011/10/24/south-carolina-primary-case_n_1029599.html",
                "http://qz.com/403774/quartz-daily-brief-japanese-military-verizon-aol-sporty-branson-saucy-swedes/",
                "select.nytimes.com/gst/abstract.html?res=F70814F93B581A7A93CBA9178BD95F4C8385F9",
                "startrekcostumes.net/",
                "en.wikipedia.org/wiki/Neil_Curtis",
                "music.carowinds.com/"
        };

        // Insert pre-defined whitelist URLs
        for (String url : whitelistUrls) {
            insertUrlWhitelist(url, db);
        }

        // Insert pre-defined blacklist URLs
        for (String url : blacklistUrls) {
            insertUrlBlacklist(url, db);
        }
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        // Upgrade database schema if needed
    }

    private void insertUrlWhitelist(String url, SQLiteDatabase db) {
        ContentValues values = new ContentValues();
        values.put(COLUMN_URL, url);
        db.insert(TABLE_WHITELIST, null, values);
    }

    private void insertUrlBlacklist(String url, SQLiteDatabase db) {
        ContentValues values = new ContentValues();
        values.put(COLUMN_URL, url);
        db.insert(TABLE_BLACKLIST, null, values);
    }

    public boolean isUrlWhitelisted(String url) {
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor cursor = db.rawQuery("SELECT * FROM " + TABLE_WHITELIST + " WHERE " + COLUMN_URL + " = ?", new String[]{url});
        boolean whitelisted = cursor.getCount() > 0;
        cursor.close();
        db.close();
        return whitelisted;
    }

    public boolean isUrlBlacklisted(String url) {
        SQLiteDatabase db = this.getReadableDatabase();
        Cursor cursor = db.rawQuery("SELECT * FROM " + TABLE_BLACKLIST + " WHERE " + COLUMN_URL + " = ?", new String[]{url});
        boolean blacklisted = cursor.getCount() > 0;
        cursor.close();
        db.close();
        return blacklisted;
    }
}
