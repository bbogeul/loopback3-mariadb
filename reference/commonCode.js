'use strict';
module.exports = {
  "OPTION_VIEW_TYPE": {
    "SELECT": "SELECT",
    "RADIO": "RADIO",
    "BUTTON": "BUTTON"
  },
  "DATA_STATUS": {
    "DELETED": "D",
    "USE": "Y"
  },
  "USER_STATUS": {
    "OUT": "O",
    "DELETED": "D",
    "WAITING": "W",
    "APPROVAL": "A",
    "REFUSED": "R"
  },
  "BIZ_TYPE_RETAILER": {
    "ONLINE_SOHO_MALL": "BTR1",
    "ONLINE_OPEN_MARKET": "BTR2",
    "ONLINE_INFLUENCER": "BTR3",
    "OFFLINE_COSMETICS_STORE": "BTR4",
    "OFFLINE_BEAUTY_SALON": "BTR5",
    "OFFLINE_SUPERMARKET": "BTR6",
    "OFFLINE_MOM_&_POP": "BTR7"
  },
  "PRODUCT_STATUS": {
    "WAITING": "W",
    "APPROVAL": "A",
    "REFUSED": "R",
    "DELETED": "D"
  },
  "BIZ_TYPE_WHOLESALE": {
    "ONLINE_SOHO_MALL": "BTW1",
    "ONLINE_OPEN_MARKET": "BTW2",
    "ONLINE_INFLUENCER": "BTW3",
    "OFFLINE_COSMETICS_STORE": "BTW4",
    "OFFLINE_BEAUTY_SALON": "BTW5",
    "OFFLINE_SUPERMARKET": "BTW6",
    "OFFLINE_MOM_&_POP": "BTW7"
  },
  "USER_TYPE": {
    "ADMIN": {
      "SUPER_ADMIN": "SA",
      "NORMAL_ADMIN": "NA",
      "LOGISTICS_ADMIN": "LA",
      "FINANCE_ADMIN": "FA",
      "OPERATION_ADMIN": "OA",
      "VENDOR_ADMIN": "VA"
    },
    "BUYER": {
      "RETAILER": "R",
      "WHOLESALE": "W",
      "ETC": "ETC"
    },
    "SELLER": {}
  },
  "CAPACITY_TYPE": {
    "ML": "ML",
    "GRAM": "G",
    "GML": "GML"
  },
  "INCOTERMS": {
    "CIF": "CIF",
    "CFR": "CFR",
    "CPT": "CPT",
    "CIP": "CIP",
    "FCA": "FCA",
    "FAS": "FAS",
    "FOB": "FOB",
    "EXW": "EXW",
    "DAT": "DAT",
    "DAP": "DAP",
    "DDP": "DDP",
    "DDU": "DDU"
  },
  "BIZ_TYPE": {
    "CHAIN_STORE": "CS",
    "DRUG_STORE": "DS",
    "DUTY_FREE_SHOP": "DFS",
    "E_COMMERCE": "EC",
    "DISTRIBUTOR": "DTB",
    "BEAUTY_SALON": "BS",
    "HAIR_SALON": "HS",
    "NAIL_SALON": "NS",
    "SPA": "SPA",
    "ETC": "ETC"
  },
  "BIZ_VOLUME": {
    "LEVEL0": "LV0",
    "LEVEL1": "LV1",
    "LEVEL2": "LV2",
    "LEVEL3": "LV3",
    "LEVEL4": "LV4",
    "LEVEL5": "LV5",
    "LEVEL6": "LV6",
    "LEVEL7": "LV7",
    "LEVEL8": "LV8",
    "LEVEL9": "LV9"
  },
  "PAYMENT_METHOD": {
    "PAYPAL": "P",
    "TT": "T",
    "ALL_DEBIT": "AD"
  },
  "PAYMENT_TYPE": {
    "PAYMENT": "PAYMENT",
    "REFUND": "REFUND",
    "PARTIAL_REFUND": "PARTIAL_REFUND",
    "PARTIAL_PAYMENT": "PARTIAL_PAYMENT",
    "RETURN": "RETURN"
  },
  "MSDS_TYPE": {
    "DANGEROUS_GOOD": "DG",
    "NONE_DANGEROUS_GOOD": "NDG"
  },
  "INQUIRY_TYPE": {
    "INQUIRY_PARTNERSHIP": "PR",
    "INQUIRY_SYSTEM": "SY",
    "INQUIRY_PRODUCT": "P",
    "INQUIRY_DELIVERY": "D",
    "INQUIRY_PAYMENT": "PY",
    "INQUIRY_ETC": "E"
  },
  "BANNER_TYPE": {
    "BRAND": "BRAND",
    "PRODUCT": "PRODUCT",
    "INTERNAL": "INTERNAL",
    "EXTERNAL": "EXTERNAL"
  },
  "DISTRIBUTION_CHANNEL": {
    "AMAZON": "DC1",
    "ANTHROPOLOGIE": "DC2",
    "AS_NATURE_INTENDED": "DC3",
    "AS_WATSON_GROUP": "DC4",
    "BARTELL_DRUG": "DC5",
    "BATH_BODY_WORKS": "DC6",
    "BEAUTY_4_U": "DC7",
    "BEAUTY_COLLECTION": "DC8",
    "BEAUTYCARECHOICES_COM": "DC9",
    "BED_BATH_BEYOND": "DC10",
    "BELK": "DC11",
    "BIG_W": "DC12",
    "BI_MART": "DC13",
    "BIRCHBOX": "DC14",
    "BLOOMINGDALES": "DC15",
    "BOOTS": "DC16",
    "BOSCOVS": "DC17",
    "BURLINGTON_COAT_FACTORY": "DC18",
    "CANYON_RANCH": "DC19",
    "CENTRO_NATURAL": "DC20",
    "CHARLOTTE_RUSSE": "DC21",
    "CHARMING_CHARLIE": "DC22",
    "CITI_TRENDS": "DC23",
    "CLAIRES": "DC24",
    "CLEAN_BEAUTY_MART": "DC25",
    "COAST_GUARD_EXCHANGE": "DC26",
    "COLES": "DC27",
    "COST_PLUS_WORLD_MARKET": "DC28",
    "COSTCO": "DC29",
    "CRACKER_BARREL_OLD_COUNTRY_STORES": "DC30",
    "CREST_FRESH_MARKET": "DC31",
    "DEBENHAMS": "DC32",
    "DERMSTORE_COM": "DC33",
    "DILLARDS": "DC34",
    "DISCOUNT_DRUG_MART": "DC35",
    "DOLLAR_GENERAL": "DC36",
    "DOLLAR_TREE": "DC37",
    "EARTH_ORIGINS_MARKET": "DC38",
    "EBAY": "DC39",
    "EL_CORTES_INGLES": "DC40",
    "ELEGANT_BEAUTY_SUPPLIES": "DC41",
    "ETSY_COM": "DC42",
    "EVINE_LIVE": "DC43",
    "FAMILY_DOLLAR_STORES": "DC44",
    "FEEL_BEAUTY_SUPPLY": "DC45",
    "FEELUNIQUE": "DC46",
    "FENWICK": "DC47",
    "FOOD_LION": "DC48",
    "FOOD4LESS": "DC49",
    "FRED_MEYER": "DC50",
    "FREE_PEOPLE": "DC51",
    "FUEGO": "DC52",
    "GALA_FRESH_FARMS": "DC53",
    "GNC": "DC54",
    "HAGGEN": "DC55",
    "HAMMACHER_SCHLEMMER": "DC56",
    "HANNAFORD": "DC57",
    "HB_BEAUTY_BAR": "DC58",
    "HEB": "DC59",
    "HERA_BEAUTY": "DC60",
    "HOLLAND_AND_BARRETT": "DC61",
    "HSN": "DC62",
    "ICING": "DC63",
    "IHERB": "DC64",
    "IPSY": "DC65",
    "JEAN_COUTU": "DC66",
    "JET": "DC67",
    "KING_SOOPERS": "DC68",
    "KITCHEN_COLLECTION": "DC69",
    "KOHLS": "DC70",
    "KOTSOVOLOS": "DC71",
    "KROGER": "DC72",
    "LIDL": "DC73",
    "LONDON_DRUGS": "DC74",
    "LORD_TAYLOR": "DC75",
    "LUCKY_VITAMIN": "DC76",
    "MACEYS": "DC77",
    "MACS_FRESH_MARKET": "DC78",
    "MACYS": "DC79",
    "MAISON_BABY": "DC80",
    "MARIANOS": "DC81",
    "MARINE_CORPS_EXCHANGE": "DC82",
    "MARKS_SPENCER": "DC83",
    "MARLENES_MARKET_DELI": "DC84",
    "MEIJER": "DC85",
    "NATURES_FARE": "DC86",
    "NEIMAN_MARCUS": "DC87",
    "NEWEGG_COM": "DC88",
    "NEX_NAVY_EXCHANGE": "DC89",
    "NEXT": "DC90",
    "NORDSTROM": "DC91",
    "NUGGET_MARKET": "DC92",
    "NUTRITION_SMART": "DC93",
    "OVERSTOCK_COM": "DC94",
    "PCC_NATURAL_MARKETS": "DC95",
    "PENINSULA_BEAUTY": "DC96",
    "PHARMACA": "DC97",
    "PHARMAPRIX": "DC98",
    "PLANET_BEAUTY": "DC99",
    "PLANET_ORGANIC": "DC100",
    "RAINBOW_SHOPS": "DC101",
    "RALPHS": "DC102",
    "REXALL": "DC103",
    "RILEY_ROSE": "DC104",
    "SAKS": "DC105",
    "SALLY_BEAUTY": "DC106",
    "SELFRIDGES": "DC107",
    "SEPHORA": "DC108",
    "SLEEK_HAIR": "DC109",
    "SNUGGLE_BUGZ": "DC110",
    "SOKO_GLAM": "DC111",
    "SPACE_NK": "DC112",
    "SPRING_MARKET": "DC113",
    "TARGET": "DC114",
    "TEKNIKMAGASINET": "DC115",
    "THE_HAPPY_HERB_COMPANY": "DC116",
    "THE_HUT_GROUP": "DC117",
    "THE_MAKEUP_CLUB": "DC118",
    "THEGROMMET": "DC119",
    "TOPSHOP": "DC120",
    "ULTA": "DC121",
    "UNCOMMON_GOODS": "DC122",
    "UNIPRIX": "DC123",
    "URBAN_OUTFITTERS": "DC124",
    "VITA_COST": "DC125",
    "WALGREENS": "DC126",
    "WALMART": "DC127",
    "WEST_COAST_BEAUTY": "DC128",
    "WIGS_COM": "DC129"
  },
  "EMAIL_TYPE": {
    "RELEASE_NOTE": "RN",
    "ERROR": "EN"
  },
  "REFUND_STATUS": {
    "REFUND": "1",
    "RETURN": "2",
    "SHIP_MISTAKE": "3",
    "SHIP_UN": "4"
  },
  "ORDER_TYPE": {
    "O": "O",
    "P": "P",
    "Q": "Q"
  },
  "OPERATION": {
    "L": "L",
    "O": "O",
    "P": "P"
  },
  "COMMON_SITE": {
    "EMAIL": "EMAIL",
    "CONTACT": "CONTACT",
    "ADDRESS": "ADDRESS"
  },
  "PLACEMENT": {
    "HEADER": "HEADER",
    "FOOTER": "FOOTER",
    "ETC": "ETC"
  },
  "COMPANY_STATUS": {
    "WAITING": "W",
    "APPROVAL": "A",
    "REFUSE_REQUEST": "RU",
    "UPDATE_REQUEST": "UR",
    "REFUSE_SIGNUP": "RS",
    "OUT": "O",
    "EXPIRED": "E"
  },
  "B2LINK_DEPT": {
    "GS": "GS",
    "CBT": "CBT",
    "OTHERS": "OTHERS",
    "USP": "USP",
    "B2LABS": "B2LABS",
    "UO": "UO"
  },
  "PRODUCT_TYPE": {
    "SINGLE": "SINGLE",
    "COMPOSITE": "COMPOSITE"
  },
  "PRODUCT_OPTION_STATUS": {
    "미사용": "0",
    "사용": "1"
  },
  "APPROVED_STATUS": {
    "WAITING": "W",
    "APPROVAL": "A",
    "REFUSED": "R",
    "DELETED": "D"
  },
  "AUTHORIZATION_AND_CERTIFICATION": {
    "MADE_SAFE": "AC1",
    "LEAPING_BUNNY_APPROVED": "AC2",
    "ISO_22716_2007": "AC3",
    "HALAL_CERTIFICATION": "AC4",
    "GLUTEN_REDUCED_CERTIFIED": "AC5",
    "GLOBAL_CERTIFICATION_SERVICE_LTD": "AC6",
    "FDA_ANTIBIOTIC_FREE": "AC7",
    "FAIR_TRADE_CERTIFIED": "AC8",
    "EWG_VERIFIED": "AC9",
    "ECOCERT": "AC10",
    "VEGAN_CERTIFIED": "AC11",
    "US_HALAL_CERTIFICATION": "AC12",
    "USDA_ORGANIC": "AC13",
    "USDA_CERTIFIED_BIOBASED_PRODUCT": "AC14",
    "USDA_BIOPREFERRED": "AC15",
    "UL_CERTIFICATION": "AC16",
    "THE_GREEN_GOOD_HOUSEKEEPING_SEAL": "AC17",
    "SGS_PRODUCT_CERTIFIED": "AC18",
    "SEDEX_CERTIFIED": "AC19",
    "PFOA_FREE": "AC20",
    "PETA_CRUELTY_FREE_AND_VEGAN": "AC21",
    "PETA_CRUELTY_FREE": "AC22",
    "PEFC": "AC23",
    "PALEO_CERTIFIED": "AC24",
    "NSF_NON_GMO": "AC25",
    "NSF_GMP": "AC26",
    "NSF_ANSI_305": "AC27",
    "NPA_NATURAL_SEAL_PERSONAL_CARE": "AC28",
    "NON_GMO_TESTED": "AC29",
    "PDO_PROTECTED_DESIGNATION_OF_ORIGIN": "AC30",
    "DESIGNLIGHTS_CONSORTIUM_DLC_CERTIFICATION": "AC31",
    "COSMOS_STANDARD": "AC32",
    "CODEX_GMP": "AC33",
    "CHOOSE_CRUELTY_FREE": "AC34",
    "CERTIFIED_ORGANIC": "AC35",
    "CCOF_ORGANIC": "AC36",
    "CCIC_CRUELTY_FREE": "AC37",
    "BPA_FREE": "AC38",
    "BFC": "AC39",
    "AUSTRALIAN_CERTIFIED_ORGANIC": "AC40",
    "BANNED_SUBSTANCES_CONTROL_GROUP_BSCG": "AC41",
    "GENERALLY_RECOGNIZED_AS_SAFE_GRAS": "AC42",
    "HEALTH_CANADA": "AC43"
  },
  "FAQ_TYPE": {
    "ABOUT_UMMA": "A",
    "HOW_IT_WORKS": "H",
    "SIGNING_UP": "S"
  },
  "INQUIRY_STATUS": {
    "ONGOING": "0",
    "COMPLETED": "1"
  },
  "ADV_TYPE": {
    "B2LINK": "B2LINK",
    "WORD_OF_MOUTH": "WM",
    "SNS": "SM",
    "ONLINE_ADS": "OA",
    "GOOGLE": "G",
    "OTHERS": "O"
  },
  "K_BEAUTY_BIZ_SCALE": {
    "LEVEL0": "LV0",
    "LEVEL1": "LV1",
    "LEVEL2": "LV2",
    "LEVEL3": "LV3",
    "LEVEL4": "LV4",
    "LEVEL5": "LV5",
    "LEVEL6": "LV6",
    "LEVEL7": "LV7",
    "LEVEL8": "LV8"
  },
  "OPTION_TYPE": {
    "COLOR": "C",
    "VOLUME": "V",
    "SKIN_TYPE": "ST",
    "FUNCTIONAL": "F"
  },
  "ADMIN_ROLE": {
    "SA": 11,
    "NA": 12,
    "OA": 13,
    "LA": 14,
    "VA": 15,
    "FA": 16
  },
  "COMPLETE_STATUS": {
    "PAYMENT_WAITING": 0,
    "PAYMENT_COMPLETE": 1,
    "LOADING_ITEMS": 2,
    "ON_DELIVERY": 3,
    "ARRIVED": 4,
    "ORDER_COMPLETE": 5,
    "ORDER_CANCELED": 6
  },
  "DP": {
    "미노출": 0,
    "노출": 1
  },
  "YN": {
    "예": "Y",
    "아니오": "N"
  },
  "TFYN": {
    "아니오": 0,
    "예": 1
  },
  "RT": {
    "반품_신청": 1,
    "환불_신청": 10
  },
  "URT": {
    "반품_확인중": 2,
    "반품_완료": 3,
    "환불_확인중": 20,
    "환불_완료": 30
  },
  "PS": {
    "미확인": "0",
    "승인": "1",
    "반려": "-1"
  },
  "OS": {
    "견적대기": 0,
    "결제완료": 1,
    "상품_준비중": 2,
    "배송중": 3,
    "배송완료": 4,
    "주문완료": 5,
    "주문취소": 6
  }
};
