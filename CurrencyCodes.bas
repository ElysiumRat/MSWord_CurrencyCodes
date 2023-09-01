Attribute VB_Name = "CurrencyCodes"
Sub CurrencyCodes()

Dim currencies(249, 3) As String
Dim givenval, temp As String
Dim counter, smlcount As Integer
Dim found, alreadyrun As Boolean
Dim selrange As Range
Dim selStart, selEnd As Long
Dim msg, response

' List of countries

currencies(0, 0) = "AFGHANISTAN"
currencies(1, 0) = "ALAND ISLANDS"
currencies(2, 0) = "ALBANIA"
currencies(3, 0) = "ALGERIA"
currencies(4, 0) = "AMERICAN SAMOA"
currencies(5, 0) = "ANDORRA"
currencies(6, 0) = "ANGOLA"
currencies(7, 0) = "ANGUILLA"
currencies(8, 0) = "ANTIGUA AND BARBUDA"
currencies(9, 0) = "ARGENTINA"
currencies(10, 0) = "ARMENIA"
currencies(11, 0) = "ARUBA"
currencies(12, 0) = "AUSTRALIA"
currencies(13, 0) = "AUSTRIA"
currencies(14, 0) = "AZERBAIJAN"
currencies(15, 0) = "BAHAMAS (THE)"
currencies(16, 0) = "BAHRAIN"
currencies(17, 0) = "BANGLADESH"
currencies(18, 0) = "BARBADOS"
currencies(19, 0) = "BELARUS"
currencies(20, 0) = "BELGIUM"
currencies(21, 0) = "BELIZE"
currencies(22, 0) = "BENIN"
currencies(23, 0) = "BERMUDA"
currencies(24, 0) = "BHUTAN"
currencies(25, 0) = "BOLIVIA (PLURINATIONAL STATE OF)"
currencies(26, 0) = "BONAIRE, SINT EUSTATIUS AND SABA"
currencies(27, 0) = "BOSNIA AND HERZEGOVINA"
currencies(28, 0) = "BOTSWANA"
currencies(29, 0) = "BOUVET ISLAND"
currencies(30, 0) = "BRAZIL"
currencies(31, 0) = "BRITISH INDIAN OCEAN TERRITORY (THE)"
currencies(32, 0) = "BRUNEI DARUSSALAM"
currencies(33, 0) = "BULGARIA"
currencies(34, 0) = "BURKINA FASO"
currencies(35, 0) = "BURUNDI"
currencies(36, 0) = "CABO VERDE"
currencies(37, 0) = "CAMBODIA"
currencies(38, 0) = "CAMEROON"
currencies(39, 0) = "CANADA"
currencies(40, 0) = "CAYMAN ISLANDS (THE)"
currencies(41, 0) = "CENTRAL AFRICAN REPUBLIC (THE)"
currencies(42, 0) = "CHAD"
currencies(43, 0) = "CHILE"
currencies(44, 0) = "CHINA"
currencies(45, 0) = "CHRISTMAS ISLAND"
currencies(46, 0) = "COCOS (KEELING) ISLANDS (THE)"
currencies(47, 0) = "COLOMBIA"
currencies(48, 0) = "COMOROS (THE)"
currencies(49, 0) = "CONGO (THE DEMOCRATIC REPUBLIC OF THE)"
currencies(50, 0) = "CONGO (THE)"
currencies(51, 0) = "COOK ISLANDS (THE)"
currencies(52, 0) = "COSTA RICA"
currencies(53, 0) = "C�TE D'IVOIRE"
currencies(54, 0) = "CROATIA"
currencies(55, 0) = "CUBA"
currencies(56, 0) = "CURA�AO"
currencies(57, 0) = "CYPRUS"
currencies(58, 0) = "CZECHIA"
currencies(59, 0) = "DENMARK"
currencies(60, 0) = "DJIBOUTI"
currencies(61, 0) = "DOMINICA"
currencies(62, 0) = "DOMINICAN REPUBLIC (THE)"
currencies(63, 0) = "ECUADOR"
currencies(64, 0) = "EGYPT"
currencies(65, 0) = "EL SALVADOR"
currencies(66, 0) = "EQUATORIAL GUINEA"
currencies(67, 0) = "ERITREA"
currencies(68, 0) = "ESTONIA"
currencies(69, 0) = "ESWATINI"
currencies(70, 0) = "ETHIOPIA"
currencies(71, 0) = "EUROPEAN UNION"
currencies(72, 0) = "FALKLAND ISLANDS (THE)"
currencies(73, 0) = "FAROE ISLANDS (THE)"
currencies(74, 0) = "FIJI"
currencies(75, 0) = "FINLAND"
currencies(76, 0) = "FRANCE"
currencies(77, 0) = "FRENCH GUIANA"
currencies(78, 0) = "FRENCH POLYNESIA"
currencies(79, 0) = "FRENCH SOUTHERN TERRITORIES (THE)"
currencies(80, 0) = "GABON"
currencies(81, 0) = "GAMBIA (THE)"
currencies(82, 0) = "GEORGIA"
currencies(83, 0) = "GERMANY"
currencies(84, 0) = "GHANA"
currencies(85, 0) = "GIBRALTAR"
currencies(86, 0) = "GREECE"
currencies(87, 0) = "GREENLAND"
currencies(88, 0) = "GRENADA"
currencies(89, 0) = "GUADELOUPE"
currencies(90, 0) = "GUAM"
currencies(91, 0) = "GUATEMALA"
currencies(92, 0) = "GUERNSEY"
currencies(93, 0) = "GUINEA"
currencies(94, 0) = "GUINEA-BISSAU"
currencies(95, 0) = "GUYANA"
currencies(96, 0) = "HAITI"
currencies(97, 0) = "HEARD ISLAND AND McDONALD ISLANDS"
currencies(98, 0) = "HOLY SEE (THE)"
currencies(99, 0) = "HONDURAS"
currencies(100, 0) = "HONG KONG"
currencies(101, 0) = "HUNGARY"
currencies(102, 0) = "ICELAND"
currencies(103, 0) = "INDIA"
currencies(104, 0) = "INDONESIA"
currencies(105, 0) = "INTERNATIONAL MONETARY FUND (IMF)"
currencies(106, 0) = "IRAN (ISLAMIC REPUBLIC OF)"
currencies(107, 0) = "IRAQ"
currencies(108, 0) = "IRELAND"
currencies(109, 0) = "ISLE OF MAN"
currencies(110, 0) = "ISRAEL"
currencies(111, 0) = "ITALY"
currencies(112, 0) = "JAMAICA"
currencies(113, 0) = "JAPAN"
currencies(114, 0) = "JERSEY"
currencies(115, 0) = "JORDAN"
currencies(116, 0) = "KAZAKHSTAN"
currencies(117, 0) = "KENYA"
currencies(118, 0) = "KIRIBATI"
currencies(119, 0) = "KOREA (THE DEMOCRATIC PEOPLE�S REPUBLIC OF)"
currencies(120, 0) = "KOREA (THE REPUBLIC OF)"
currencies(121, 0) = "KUWAIT"
currencies(122, 0) = "KYRGYZSTAN"
currencies(123, 0) = "LAO PEOPLE�S DEMOCRATIC REPUBLIC (THE)"
currencies(124, 0) = "LATVIA"
currencies(125, 0) = "LEBANON"
currencies(126, 0) = "LESOTHO"
currencies(127, 0) = "LIBERIA"
currencies(128, 0) = "LIBYA"
currencies(129, 0) = "LIECHTENSTEIN"
currencies(130, 0) = "LITHUANIA"
currencies(131, 0) = "LUXEMBOURG"
currencies(132, 0) = "MACAO"
currencies(133, 0) = "NORTH MACEDONIA"
currencies(134, 0) = "MADAGASCAR"
currencies(135, 0) = "MALAWI"
currencies(136, 0) = "MALAYSIA"
currencies(137, 0) = "MALDIVES"
currencies(138, 0) = "MALI"
currencies(139, 0) = "MALTA"
currencies(140, 0) = "MARSHALL ISLANDS (THE)"
currencies(141, 0) = "MARTINIQUE"
currencies(142, 0) = "MAURITANIA"
currencies(143, 0) = "MAURITIUS"
currencies(144, 0) = "MAYOTTE"
currencies(145, 0) = "MEMBER COUNTRIES OF THE AFRICAN DEVELOPMENT BANK GROUP"
currencies(146, 0) = "MEXICO"
currencies(147, 0) = "MICRONESIA (FEDERATED STATES OF)"
currencies(148, 0) = "MOLDOVA (THE REPUBLIC OF)"
currencies(149, 0) = "MONACO"
currencies(150, 0) = "MONGOLIA"
currencies(151, 0) = "MONTENEGRO"
currencies(152, 0) = "MONTSERRAT"
currencies(153, 0) = "MOROCCO"
currencies(154, 0) = "MOZAMBIQUE"
currencies(155, 0) = "MYANMAR"
currencies(156, 0) = "NAMIBIA"
currencies(157, 0) = "NAURU"
currencies(158, 0) = "NEPAL"
currencies(159, 0) = "NETHERLANDS (THE)"
currencies(160, 0) = "NEW CALEDONIA"
currencies(161, 0) = "NEW ZEALAND"
currencies(162, 0) = "NICARAGUA"
currencies(163, 0) = "NIGER (THE)"
currencies(164, 0) = "NIGERIA"
currencies(165, 0) = "NIUE"
currencies(166, 0) = "NORFOLK ISLAND"
currencies(167, 0) = "NORTHERN MARIANA ISLANDS (THE)"
currencies(168, 0) = "NORWAY"
currencies(169, 0) = "OMAN"
currencies(170, 0) = "PAKISTAN"
currencies(171, 0) = "PALAU"
currencies(172, 0) = "PANAMA"
currencies(173, 0) = "PAPUA NEW GUINEA"
currencies(174, 0) = "PARAGUAY"
currencies(175, 0) = "PERU"
currencies(176, 0) = "PHILIPPINES (THE)"
currencies(177, 0) = "PITCAIRN"
currencies(178, 0) = "POLAND"
currencies(179, 0) = "PORTUGAL"
currencies(180, 0) = "PUERTO RICO"
currencies(181, 0) = "QATAR"
currencies(182, 0) = "R�UNION"
currencies(183, 0) = "ROMANIA"
currencies(184, 0) = "RUSSIAN FEDERATION (THE)"
currencies(185, 0) = "RWANDA"
currencies(186, 0) = "SAINT BARTH�LEMY"
currencies(187, 0) = "SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA"
currencies(188, 0) = "SAINT KITTS AND NEVIS"
currencies(189, 0) = "SAINT LUCIA"
currencies(190, 0) = "SAINT MARTIN (FRENCH PART)"
currencies(191, 0) = "SAINT PIERRE AND MIQUELON"
currencies(192, 0) = "SAINT VINCENT AND THE GRENADINES"
currencies(193, 0) = "SAMOA"
currencies(194, 0) = "SAN MARINO"
currencies(195, 0) = "SAO TOME AND PRINCIPE"
currencies(196, 0) = "SAUDI ARABIA"
currencies(197, 0) = "SENEGAL"
currencies(198, 0) = "SERBIA"
currencies(199, 0) = "SEYCHELLES"
currencies(200, 0) = "SIERRA LEONE"
currencies(201, 0) = "SINGAPORE"
currencies(202, 0) = "SINT MAARTEN (DUTCH PART)"
currencies(203, 0) = "SISTEMA UNITARIO DE COMPENSACION REGIONAL DE PAGOS 'SUCRE'"
currencies(204, 0) = "SLOVAKIA"
currencies(205, 0) = "SLOVENIA"
currencies(206, 0) = "SOLOMON ISLANDS"
currencies(207, 0) = "SOMALIA"
currencies(208, 0) = "SOUTH AFRICA"
currencies(209, 0) = "SOUTH SUDAN"
currencies(210, 0) = "SPAIN"
currencies(211, 0) = "SRI LANKA"
currencies(212, 0) = "SUDAN (THE)"
currencies(213, 0) = "SURINAME"
currencies(214, 0) = "SVALBARD AND JAN MAYEN"
currencies(215, 0) = "SWEDEN"
currencies(216, 0) = "SWITZERLAND"
currencies(217, 0) = "SYRIAN ARAB REPUBLIC"
currencies(218, 0) = "TAIWAN (PROVINCE OF CHINA)"
currencies(219, 0) = "TAJIKISTAN"
currencies(220, 0) = "TANZANIA, UNITED REPUBLIC OF"
currencies(221, 0) = "THAILAND"
currencies(222, 0) = "TIMOR-LESTE"
currencies(223, 0) = "TOGO"
currencies(224, 0) = "TOKELAU"
currencies(225, 0) = "TONGA"
currencies(226, 0) = "TRINIDAD AND TOBAGO"
currencies(227, 0) = "TUNISIA"
currencies(228, 0) = "T�RKIYE"
currencies(229, 0) = "TURKMENISTAN"
currencies(230, 0) = "TURKS AND CAICOS ISLANDS (THE)"
currencies(231, 0) = "TUVALU"
currencies(232, 0) = "UGANDA"
currencies(233, 0) = "UKRAINE"
currencies(234, 0) = "UNITED ARAB EMIRATES (THE)"
currencies(235, 0) = "UNITED KINGDOM OF GREAT BRITAIN AND NORTHERN IRELAND (THE)"
currencies(236, 0) = "UNITED STATES MINOR OUTLYING ISLANDS (THE)"
currencies(237, 0) = "UNITED STATES OF AMERICA (THE)"
currencies(238, 0) = "URUGUAY"
currencies(239, 0) = "UZBEKISTAN"
currencies(240, 0) = "VANUATU"
currencies(241, 0) = "VENEZUELA (BOLIVARIAN REPUBLIC OF)"
currencies(242, 0) = "VIETNAM"
currencies(243, 0) = "VIRGIN ISLANDS (BRITISH)"
currencies(244, 0) = "VIRGIN ISLANDS (U.S.)"
currencies(245, 0) = "WALLIS AND FUTUNA"
currencies(246, 0) = "WESTERN SAHARA"
currencies(247, 0) = "YEMEN"
currencies(248, 0) = "ZAMBIA"
currencies(249, 0) = "ZIMBABWE"

' List of other common names

For counter = 0 To 249
    currencies(counter, 1) = "N/A"
Next counter

currencies(49, 1) = "DRC, D.R.C."
currencies(53, 1) = "COTE D'IVOIRE, IVORY COAST"
currencies(69, 1) = "SWAZILAND"
currencies(71, 1) = "EU, E.U."
currencies(72, 1) = "MALVINAS"
currencies(98, 1) = "VATICAN"
currencies(119, 1) = "NORTH KOREA, DPRK, D.P.R.K."
currencies(120, 1) = "SOUTH KOREA"
currencies(132, 1) = "MACAU"
currencies(145, 1) = "AFDB"
currencies(155, 1) = "BURMA"
currencies(159, 1) = "HOLLAND"
currencies(161, 1) = "NZ, N.Z."
currencies(182, 1) = "REUNION"
currencies(186, 1) = "SAINT BARTHELEMY"
currencies(222, 1) = "EAST TIMOR"
currencies(228, 1) = "TURKIYE, TURKEY"
currencies(234, 1) = "UAE, U.A.E."
currencies(235, 1) = "UK, U.K."
currencies(237, 1) = "USA, U.S.A."
currencies(242, 1) = "VIET NAM"

' List of currency names

currencies(0, 2) = "Afghani"
currencies(1, 2) = "Euro"
currencies(2, 2) = "Lek"
currencies(3, 2) = "Algerian Dinar"
currencies(4, 2) = "US Dollar"
currencies(5, 2) = "Euro"
currencies(6, 2) = "Kwanza"
currencies(7, 2) = "East Caribbean Dollar"
currencies(8, 2) = "East Caribbean Dollar"
currencies(9, 2) = "Argentine Peso"
currencies(10, 2) = "Armenian Dram"
currencies(11, 2) = "Aruban Florin"
currencies(12, 2) = "Australian Dollar"
currencies(13, 2) = "Euro"
currencies(14, 2) = "Azerbaijan Manat"
currencies(15, 2) = "Bahamian Dollar"
currencies(16, 2) = "Bahraini Dinar"
currencies(17, 2) = "Taka"
currencies(18, 2) = "Barbados Dollar"
currencies(19, 2) = "Belarusian Ruble"
currencies(20, 2) = "Euro"
currencies(21, 2) = "Belize Dollar"
currencies(22, 2) = "CFA Franc BCEAO"
currencies(23, 2) = "Bermudian Dollar"
currencies(24, 2) = "Ngultrum"
currencies(25, 2) = "Boliviano"
currencies(26, 2) = "US Dollar"
currencies(27, 2) = "Convertible Mark"
currencies(28, 2) = "Pula"
currencies(29, 2) = "Norwegian Krone"
currencies(30, 2) = "Brazilian Real"
currencies(31, 2) = "US Dollar"
currencies(32, 2) = "Brunei Dollar"
currencies(33, 2) = "Bulgarian Lev"
currencies(34, 2) = "CFA Franc BCEAO"
currencies(35, 2) = "Burundi Franc"
currencies(36, 2) = "Cabo Verde Escudo"
currencies(37, 2) = "Riel"
currencies(38, 2) = "CFA Franc BEAC"
currencies(39, 2) = "Canadian Dollar"
currencies(40, 2) = "Cayman Islands Dollar"
currencies(41, 2) = "CFA Franc BEAC"
currencies(42, 2) = "CFA Franc BEAC"
currencies(43, 2) = "Chilean Peso"
currencies(44, 2) = "Yuan Renminbi"
currencies(45, 2) = "Australian Dollar"
currencies(46, 2) = "Australian Dollar"
currencies(47, 2) = "Colombian Peso"
currencies(48, 2) = "Comorian Franc "
currencies(49, 2) = "Congolese Franc"
currencies(50, 2) = "CFA Franc BEAC"
currencies(51, 2) = "New Zealand Dollar"
currencies(52, 2) = "Costa Rican Colon"
currencies(53, 2) = "CFA Franc BCEAO"
currencies(54, 2) = "Euro"
currencies(55, 2) = "Cuban Peso"
currencies(56, 2) = "Netherlands Antillean Guilder"
currencies(57, 2) = "Euro"
currencies(58, 2) = "Czech Koruna"
currencies(59, 2) = "Danish Krone"
currencies(60, 2) = "Djibouti Franc"
currencies(61, 2) = "East Caribbean Dollar"
currencies(62, 2) = "Dominican Peso"
currencies(63, 2) = "US Dollar"
currencies(64, 2) = "Egyptian Pound"
currencies(65, 2) = "El Salvador Colon"
currencies(66, 2) = "CFA Franc BEAC"
currencies(67, 2) = "Nakfa"
currencies(68, 2) = "Euro"
currencies(69, 2) = "Lilangeni"
currencies(70, 2) = "Ethiopian Birr"
currencies(71, 2) = "Euro"
currencies(72, 2) = "Falkland Islands Pound"
currencies(73, 2) = "Danish Krone"
currencies(74, 2) = "Fiji Dollar"
currencies(75, 2) = "Euro"
currencies(76, 2) = "Euro"
currencies(77, 2) = "Euro"
currencies(78, 2) = "CFP Franc"
currencies(79, 2) = "Euro"
currencies(80, 2) = "CFA Franc BEAC"
currencies(81, 2) = "Dalasi"
currencies(82, 2) = "Lari"
currencies(83, 2) = "Euro"
currencies(84, 2) = "Ghana Cedi"
currencies(85, 2) = "Gibraltar Pound"
currencies(86, 2) = "Euro"
currencies(87, 2) = "Danish Krone"
currencies(88, 2) = "East Caribbean Dollar"
currencies(89, 2) = "Euro"
currencies(90, 2) = "US Dollar"
currencies(91, 2) = "Quetzal"
currencies(92, 2) = "Pound Sterling"
currencies(93, 2) = "Guinean Franc"
currencies(94, 2) = "CFA Franc BCEAO"
currencies(95, 2) = "Guyana Dollar"
currencies(96, 2) = "Gourde"
currencies(97, 2) = "Australian Dollar"
currencies(98, 2) = "Euro"
currencies(99, 2) = "Lempira"
currencies(100, 2) = "Hong Kong Dollar"
currencies(101, 2) = "Forint"
currencies(102, 2) = "Iceland Krona"
currencies(103, 2) = "Indian Rupee"
currencies(104, 2) = "Rupiah"
currencies(105, 2) = "SDR (Special Drawing Right)"
currencies(106, 2) = "Iranian Rial"
currencies(107, 2) = "Iraqi Dinar"
currencies(108, 2) = "Euro"
currencies(109, 2) = "Pound Sterling"
currencies(110, 2) = "New Israeli Sheqel"
currencies(111, 2) = "Euro"
currencies(112, 2) = "Jamaican Dollar"
currencies(113, 2) = "Yen"
currencies(114, 2) = "Pound Sterling"
currencies(115, 2) = "Jordanian Dinar"
currencies(116, 2) = "Tenge"
currencies(117, 2) = "Kenyan Shilling"
currencies(118, 2) = "Australian Dollar"
currencies(119, 2) = "North Korean Won"
currencies(120, 2) = "Won"
currencies(121, 2) = "Kuwaiti Dinar"
currencies(122, 2) = "Som"
currencies(123, 2) = "Lao Kip"
currencies(124, 2) = "Euro"
currencies(125, 2) = "Lebanese Pound"
currencies(126, 2) = "Loti"
currencies(127, 2) = "Liberian Dollar"
currencies(128, 2) = "Libyan Dinar"
currencies(129, 2) = "Swiss Franc"
currencies(130, 2) = "Euro"
currencies(131, 2) = "Euro"
currencies(132, 2) = "Pataca"
currencies(133, 2) = "Denar"
currencies(134, 2) = "Malagasy Ariary"
currencies(135, 2) = "Malawi Kwacha"
currencies(136, 2) = "Malaysian Ringgit"
currencies(137, 2) = "Rufiyaa"
currencies(138, 2) = "CFA Franc BCEAO"
currencies(139, 2) = "Euro"
currencies(140, 2) = "US Dollar"
currencies(141, 2) = "Euro"
currencies(142, 2) = "Ouguiya"
currencies(143, 2) = "Mauritius Rupee"
currencies(144, 2) = "Euro"
currencies(145, 2) = "ADB Unit of Account"
currencies(146, 2) = "Mexican Peso"
currencies(147, 2) = "US Dollar"
currencies(148, 2) = "Moldovan Leu"
currencies(149, 2) = "Euro"
currencies(150, 2) = "Tugrik"
currencies(151, 2) = "Euro"
currencies(152, 2) = "East Caribbean Dollar"
currencies(153, 2) = "Moroccan Dirham"
currencies(154, 2) = "Mozambique Metical"
currencies(155, 2) = "Kyat"
currencies(156, 2) = "Namibia Dollar"
currencies(157, 2) = "Australian Dollar"
currencies(158, 2) = "Nepalese Rupee"
currencies(159, 2) = "Euro"
currencies(160, 2) = "CFP Franc"
currencies(161, 2) = "New Zealand Dollar"
currencies(162, 2) = "Cordoba Oro"
currencies(163, 2) = "CFA Franc BCEAO"
currencies(164, 2) = "Naira"
currencies(165, 2) = "New Zealand Dollar"
currencies(166, 2) = "Australian Dollar"
currencies(167, 2) = "US Dollar"
currencies(168, 2) = "Norwegian Krone"
currencies(169, 2) = "Rial Omani"
currencies(170, 2) = "Pakistan Rupee"
currencies(171, 2) = "US Dollar"
currencies(172, 2) = "Balboa"
currencies(173, 2) = "Kina"
currencies(174, 2) = "Guarani"
currencies(175, 2) = "Sol"
currencies(176, 2) = "Philippine Peso"
currencies(177, 2) = "New Zealand Dollar"
currencies(178, 2) = "Zloty"
currencies(179, 2) = "Euro"
currencies(180, 2) = "US Dollar"
currencies(181, 2) = "Qatari Rial"
currencies(182, 2) = "Euro"
currencies(183, 2) = "Romanian Leu"
currencies(184, 2) = "Russian Ruble"
currencies(185, 2) = "Rwanda Franc"
currencies(186, 2) = "Euro"
currencies(187, 2) = "Saint Helena Pound"
currencies(188, 2) = "East Caribbean Dollar"
currencies(189, 2) = "East Caribbean Dollar"
currencies(190, 2) = "Euro"
currencies(191, 2) = "Euro"
currencies(192, 2) = "East Caribbean Dollar"
currencies(193, 2) = "Tala"
currencies(194, 2) = "Euro"
currencies(195, 2) = "Dobra"
currencies(196, 2) = "Saudi Riyal"
currencies(197, 2) = "CFA Franc BCEAO"
currencies(198, 2) = "Serbian Dinar"
currencies(199, 2) = "Seychelles Rupee"
currencies(200, 2) = "Leone"
currencies(201, 2) = "Singapore Dollar"
currencies(202, 2) = "Netherlands Antillean Guilder"
currencies(203, 2) = "Sucre"
currencies(204, 2) = "Euro"
currencies(205, 2) = "Euro"
currencies(206, 2) = "Solomon Islands Dollar"
currencies(207, 2) = "Somali Shilling"
currencies(208, 2) = "Rand"
currencies(209, 2) = "South Sudanese Pound"
currencies(210, 2) = "Euro"
currencies(211, 2) = "Sri Lanka Rupee"
currencies(212, 2) = "Sudanese Pound"
currencies(213, 2) = "Surinam Dollar"
currencies(214, 2) = "Norwegian Krone"
currencies(215, 2) = "Swedish Krona"
currencies(216, 2) = "Swiss Franc"
currencies(217, 2) = "Syrian Pound"
currencies(218, 2) = "New Taiwan Dollar"
currencies(219, 2) = "Somoni"
currencies(220, 2) = "Tanzanian Shilling"
currencies(221, 2) = "Baht"
currencies(222, 2) = "US Dollar"
currencies(223, 2) = "CFA Franc BCEAO"
currencies(224, 2) = "New Zealand Dollar"
currencies(225, 2) = "Pa�anga"
currencies(226, 2) = "Trinidad and Tobago Dollar"
currencies(227, 2) = "Tunisian Dinar"
currencies(228, 2) = "Turkish Lira"
currencies(229, 2) = "Turkmenistan New Manat"
currencies(230, 2) = "US Dollar"
currencies(231, 2) = "Australian Dollar"
currencies(232, 2) = "Uganda Shilling"
currencies(233, 2) = "Hryvnia"
currencies(234, 2) = "UAE Dirham"
currencies(235, 2) = "Pound Sterling"
currencies(236, 2) = "US Dollar"
currencies(237, 2) = "US Dollar"
currencies(238, 2) = "Peso Uruguayo"
currencies(239, 2) = "Uzbekistan Sum"
currencies(240, 2) = "Vatu"
currencies(241, 2) = "Bol�var Soberano"
currencies(242, 2) = "Dong"
currencies(243, 2) = "US Dollar"
currencies(244, 2) = "US Dollar"
currencies(245, 2) = "CFP Franc"
currencies(246, 2) = "Moroccan Dirham"
currencies(247, 2) = "Yemeni Rial"
currencies(248, 2) = "Zambian Kwacha"
currencies(249, 2) = "Zimbabwe Dollar"

' List of codes

currencies(0, 3) = "AFN"
currencies(1, 3) = "EUR"
currencies(2, 3) = "ALL"
currencies(3, 3) = "DZD"
currencies(4, 3) = "USD"
currencies(5, 3) = "EUR"
currencies(6, 3) = "AOA"
currencies(7, 3) = "XCD"
currencies(8, 3) = "XCD"
currencies(9, 3) = "ARS"
currencies(10, 3) = "AMD"
currencies(11, 3) = "AWG"
currencies(12, 3) = "AUD"
currencies(13, 3) = "EUR"
currencies(14, 3) = "AZN"
currencies(15, 3) = "BSD"
currencies(16, 3) = "BHD"
currencies(17, 3) = "BDT"
currencies(18, 3) = "BBD"
currencies(19, 3) = "BYN"
currencies(20, 3) = "EUR"
currencies(21, 3) = "BZD"
currencies(22, 3) = "XOF"
currencies(23, 3) = "BMD"
currencies(24, 3) = "BTN"
currencies(25, 3) = "BOB"
currencies(26, 3) = "USD"
currencies(27, 3) = "BAM"
currencies(28, 3) = "BWP"
currencies(29, 3) = "NOK"
currencies(30, 3) = "BRL"
currencies(31, 3) = "USD"
currencies(32, 3) = "BND"
currencies(33, 3) = "BGN"
currencies(34, 3) = "XOF"
currencies(35, 3) = "BIF"
currencies(36, 3) = "CVE"
currencies(37, 3) = "KHR"
currencies(38, 3) = "XAF"
currencies(39, 3) = "CAD"
currencies(40, 3) = "KYD"
currencies(41, 3) = "XAF"
currencies(42, 3) = "XAF"
currencies(43, 3) = "CLP"
currencies(44, 3) = "CNY"
currencies(45, 3) = "AUD"
currencies(46, 3) = "AUD"
currencies(47, 3) = "COP"
currencies(48, 3) = "KMF"
currencies(49, 3) = "CDF"
currencies(50, 3) = "XAF"
currencies(51, 3) = "NZD"
currencies(52, 3) = "CRC"
currencies(53, 3) = "XOF"
currencies(54, 3) = "EUR"
currencies(55, 3) = "CUP"
currencies(56, 3) = "ANG"
currencies(57, 3) = "EUR"
currencies(58, 3) = "CZK"
currencies(59, 3) = "DKK"
currencies(60, 3) = "DJF"
currencies(61, 3) = "XCD"
currencies(62, 3) = "DOP"
currencies(63, 3) = "USD"
currencies(64, 3) = "EGP"
currencies(65, 3) = "SVC"
currencies(66, 3) = "XAF"
currencies(67, 3) = "ERN"
currencies(68, 3) = "EUR"
currencies(69, 3) = "SZL"
currencies(70, 3) = "ETB"
currencies(71, 3) = "EUR"
currencies(72, 3) = "FKP"
currencies(73, 3) = "DKK"
currencies(74, 3) = "FJD"
currencies(75, 3) = "EUR"
currencies(76, 3) = "EUR"
currencies(77, 3) = "EUR"
currencies(78, 3) = "XPF"
currencies(79, 3) = "EUR"
currencies(80, 3) = "XAF"
currencies(81, 3) = "GMD"
currencies(82, 3) = "GEL"
currencies(83, 3) = "EUR"
currencies(84, 3) = "GHS"
currencies(85, 3) = "GIP"
currencies(86, 3) = "EUR"
currencies(87, 3) = "DKK"
currencies(88, 3) = "XCD"
currencies(89, 3) = "EUR"
currencies(90, 3) = "USD"
currencies(91, 3) = "GTQ"
currencies(92, 3) = "GBP"
currencies(93, 3) = "GNF"
currencies(94, 3) = "XOF"
currencies(95, 3) = "GYD"
currencies(96, 3) = "HTG"
currencies(97, 3) = "AUD"
currencies(98, 3) = "EUR"
currencies(99, 3) = "HNL"
currencies(100, 3) = "HKD"
currencies(101, 3) = "HUF"
currencies(102, 3) = "ISK"
currencies(103, 3) = "INR"
currencies(104, 3) = "IDR"
currencies(105, 3) = "XDR"
currencies(106, 3) = "IRR"
currencies(107, 3) = "IQD"
currencies(108, 3) = "EUR"
currencies(109, 3) = "GBP"
currencies(110, 3) = "ILS"
currencies(111, 3) = "EUR"
currencies(112, 3) = "JMD"
currencies(113, 3) = "JPY"
currencies(114, 3) = "GBP"
currencies(115, 3) = "JOD"
currencies(116, 3) = "KZT"
currencies(117, 3) = "KES"
currencies(118, 3) = "AUD"
currencies(119, 3) = "KPW"
currencies(120, 3) = "KRW"
currencies(121, 3) = "KWD"
currencies(122, 3) = "KGS"
currencies(123, 3) = "LAK"
currencies(124, 3) = "EUR"
currencies(125, 3) = "LBP"
currencies(126, 3) = "LSL"
currencies(127, 3) = "LRD"
currencies(128, 3) = "LYD"
currencies(129, 3) = "CHF"
currencies(130, 3) = "EUR"
currencies(131, 3) = "EUR"
currencies(132, 3) = "MOP"
currencies(133, 3) = "MKD"
currencies(134, 3) = "MGA"
currencies(135, 3) = "MWK"
currencies(136, 3) = "MYR"
currencies(137, 3) = "MVR"
currencies(138, 3) = "XOF"
currencies(139, 3) = "EUR"
currencies(140, 3) = "USD"
currencies(141, 3) = "EUR"
currencies(142, 3) = "MRU"
currencies(143, 3) = "MUR"
currencies(144, 3) = "EUR"
currencies(145, 3) = "XUA"
currencies(146, 3) = "MXN"
currencies(147, 3) = "USD"
currencies(148, 3) = "MDL"
currencies(149, 3) = "EUR"
currencies(150, 3) = "MNT"
currencies(151, 3) = "EUR"
currencies(152, 3) = "XCD"
currencies(153, 3) = "MAD"
currencies(154, 3) = "MZN"
currencies(155, 3) = "MMK"
currencies(156, 3) = "NAD"
currencies(157, 3) = "AUD"
currencies(158, 3) = "NPR"
currencies(159, 3) = "EUR"
currencies(160, 3) = "XPF"
currencies(161, 3) = "NZD"
currencies(162, 3) = "NIO"
currencies(163, 3) = "XOF"
currencies(164, 3) = "NGN"
currencies(165, 3) = "NZD"
currencies(166, 3) = "AUD"
currencies(167, 3) = "USD"
currencies(168, 3) = "NOK"
currencies(169, 3) = "OMR"
currencies(170, 3) = "PKR"
currencies(171, 3) = "USD"
currencies(172, 3) = "PAB"
currencies(173, 3) = "PGK"
currencies(174, 3) = "PYG"
currencies(175, 3) = "PEN"
currencies(176, 3) = "PHP"
currencies(177, 3) = "NZD"
currencies(178, 3) = "PLN"
currencies(179, 3) = "EUR"
currencies(180, 3) = "USD"
currencies(181, 3) = "QAR"
currencies(182, 3) = "EUR"
currencies(183, 3) = "RON"
currencies(184, 3) = "RUB"
currencies(185, 3) = "RWF"
currencies(186, 3) = "EUR"
currencies(187, 3) = "SHP"
currencies(188, 3) = "XCD"
currencies(189, 3) = "XCD"
currencies(190, 3) = "EUR"
currencies(191, 3) = "EUR"
currencies(192, 3) = "XCD"
currencies(193, 3) = "WST"
currencies(194, 3) = "EUR"
currencies(195, 3) = "STN"
currencies(196, 3) = "SAR"
currencies(197, 3) = "XOF"
currencies(198, 3) = "RSD"
currencies(199, 3) = "SCR"
currencies(200, 3) = "SLE"
currencies(201, 3) = "SGD"
currencies(202, 3) = "ANG"
currencies(203, 3) = "XSU"
currencies(204, 3) = "EUR"
currencies(205, 3) = "EUR"
currencies(206, 3) = "SBD"
currencies(207, 3) = "SOS"
currencies(208, 3) = "ZAR"
currencies(209, 3) = "SSP"
currencies(210, 3) = "EUR"
currencies(211, 3) = "LKR"
currencies(212, 3) = "SDG"
currencies(213, 3) = "SRD"
currencies(214, 3) = "NOK"
currencies(215, 3) = "SEK"
currencies(216, 3) = "CHF"
currencies(217, 3) = "SYP"
currencies(218, 3) = "TWD"
currencies(219, 3) = "TJS"
currencies(220, 3) = "TZS"
currencies(221, 3) = "THB"
currencies(222, 3) = "USD"
currencies(223, 3) = "XOF"
currencies(224, 3) = "NZD"
currencies(225, 3) = "TOP"
currencies(226, 3) = "TTD"
currencies(227, 3) = "TND"
currencies(228, 3) = "TRY"
currencies(229, 3) = "TMT"
currencies(230, 3) = "USD"
currencies(231, 3) = "AUD"
currencies(232, 3) = "UGX"
currencies(233, 3) = "UAH"
currencies(234, 3) = "AED"
currencies(235, 3) = "GBP"
currencies(236, 3) = "USD"
currencies(237, 3) = "USD"
currencies(238, 3) = "UYU"
currencies(239, 3) = "UZS"
currencies(240, 3) = "VUV"
currencies(241, 3) = "VES"
currencies(242, 3) = "VND"
currencies(243, 3) = "USD"
currencies(244, 3) = "USD"
currencies(245, 3) = "XPF"
currencies(246, 3) = "MAD"
currencies(247, 3) = "YER"
currencies(248, 3) = "ZMW"
currencies(249, 3) = "ZWL"

' User input

Set selrange = ActiveDocument.Range
selStart = Selection.Start
selEnd = Selection.End
selrange.SetRange Start:=selStart, End:=selEnd
selrange.Select

If Selection.Range.ComputeStatistics(wdStatisticWords) < 1 Then
    givenval = UCase("*" + InputBox("Please input country, currency, or ISO code:") + "*")
    Else
        givenval = UCase("*" + selrange.Text + "*")
End If

Check:
For counter = 0 To 249
    For smlcount = 0 To 3
    temp = UCase(currencies(counter, smlcount))
        If givenval = "**" Then
            Exit Sub
        Else
            If temp Like givenval Then
                msg = "List version: Jan 1, 2023." & vbCrLf & vbCrLf & "ISO country name: " & currencies(counter, 0) & vbCrLf & "Other common names/spellings: " & currencies(counter, 1) & vbCrLf & "Currency name: " & currencies(counter, 2) & vbCrLf & "ISO 4217 code: " & currencies(counter, 3) & vbCrLf & vbCrLf & "Would you like to insert the code?"
                response = MsgBox(msg, vbYesNo)
                If response = vbYes Then
                    Selection.InsertAfter (currencies(counter, 3) + " ")
                    Exit Sub
                End If
                found = True
                Exit For
            End If
        End If
    Next smlcount
Next counter

If found = False Then
    If Selection.Range.ComputeStatistics(wdStatisticWords) = 1 And alreadyrun = True Then
        givenval = UCase("*" + InputBox("Please input country, currency, or ISO code:") + "*")
        alreadyrun = True
        GoTo Check
    End If
    MsgBox "Country not found."
End If

End Sub

