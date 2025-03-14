// To parse this JSON data, do
//
//     final api = apiFromJson(jsonString);

import 'dart:convert';

List<Api> apiFromJson(String str) => List<Api>.from(json.decode(str).map((x) => Api.fromJson(x)));

String apiToJson(List<Api> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Api {
    final Name name;
    final List<String> tld;
    final String cca2;
    final String ccn3;
    final String cca3;
    final String? cioc;
    final bool independent;
    final String status;
    final bool unMember;
    final Map<String, Currency> currencies;
    final Idd idd;
    final List<String> capital;
    final List<String> altSpellings;
    final String region;
    final String subregion;
    final Languages languages;
    final Map<String, Translation> translations;
    final List<double> latlng;
    final bool landlocked;
    final int area;
    final Demonyms demonyms;
    final String flag;
    final Maps maps;
    final int population;
    final Car car;
    final List<String> timezones;
    final List<String> continents;
    final Flags flags;
    final CoatOfArms coatOfArms;
    final String startOfWeek;
    final CapitalInfo capitalInfo;
    final PostalCode? postalCode;
    final List<String>? borders;
    final Gini? gini;
    final String? fifa;

    Api({
        required this.name,
        required this.tld,
        required this.cca2,
        required this.ccn3,
        required this.cca3,
        this.cioc,
        required this.independent,
        required this.status,
        required this.unMember,
        required this.currencies,
        required this.idd,
        required this.capital,
        required this.altSpellings,
        required this.region,
        required this.subregion,
        required this.languages,
        required this.translations,
        required this.latlng,
        required this.landlocked,
        required this.area,
        required this.demonyms,
        required this.flag,
        required this.maps,
        required this.population,
        required this.car,
        required this.timezones,
        required this.continents,
        required this.flags,
        required this.coatOfArms,
        required this.startOfWeek,
        required this.capitalInfo,
        this.postalCode,
        this.borders,
        this.gini,
        this.fifa,
    });

    factory Api.fromJson(Map<String, dynamic> json) => Api(
        name: Name.fromJson(json["name"]),
        tld: List<String>.from(json["tld"].map((x) => x)),
        cca2: json["cca2"],
        ccn3: json["ccn3"],
        cca3: json["cca3"],
        cioc: json["cioc"],
        independent: json["independent"],
        status: json["status"],
        unMember: json["unMember"],
        currencies: Map.from(json["currencies"]).map((k, v) => MapEntry<String, Currency>(k, Currency.fromJson(v))),
        idd: Idd.fromJson(json["idd"]),
        capital: List<String>.from(json["capital"].map((x) => x)),
        altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
        region: json["region"],
        subregion: json["subregion"],
        languages: Languages.fromJson(json["languages"]),
        translations: Map.from(json["translations"]).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
        latlng: List<double>.from(json["latlng"].map((x) => x?.toDouble())),
        landlocked: json["landlocked"],
        area: json["area"],
        demonyms: Demonyms.fromJson(json["demonyms"]),
        flag: json["flag"],
        maps: Maps.fromJson(json["maps"]),
        population: json["population"],
        car: Car.fromJson(json["car"]),
        timezones: List<String>.from(json["timezones"].map((x) => x)),
        continents: List<String>.from(json["continents"].map((x) => x)),
        flags: Flags.fromJson(json["flags"]),
        coatOfArms: CoatOfArms.fromJson(json["coatOfArms"]),
        startOfWeek: json["startOfWeek"],
        capitalInfo: CapitalInfo.fromJson(json["capitalInfo"]),
        postalCode: json["postalCode"] == null ? null : PostalCode.fromJson(json["postalCode"]),
        borders: json["borders"] == null ? [] : List<String>.from(json["borders"]!.map((x) => x)),
        gini: json["gini"] == null ? null : Gini.fromJson(json["gini"]),
        fifa: json["fifa"],
    );

    Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "tld": List<dynamic>.from(tld.map((x) => x)),
        "cca2": cca2,
        "ccn3": ccn3,
        "cca3": cca3,
        "cioc": cioc,
        "independent": independent,
        "status": status,
        "unMember": unMember,
        "currencies": Map.from(currencies).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "idd": idd.toJson(),
        "capital": List<dynamic>.from(capital.map((x) => x)),
        "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
        "region": region,
        "subregion": subregion,
        "languages": languages.toJson(),
        "translations": Map.from(translations).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
        "landlocked": landlocked,
        "area": area,
        "demonyms": demonyms.toJson(),
        "flag": flag,
        "maps": maps.toJson(),
        "population": population,
        "car": car.toJson(),
        "timezones": List<dynamic>.from(timezones.map((x) => x)),
        "continents": List<dynamic>.from(continents.map((x) => x)),
        "flags": flags.toJson(),
        "coatOfArms": coatOfArms.toJson(),
        "startOfWeek": startOfWeek,
        "capitalInfo": capitalInfo.toJson(),
        "postalCode": postalCode?.toJson(),
        "borders": borders == null ? [] : List<dynamic>.from(borders!.map((x) => x)),
        "gini": gini?.toJson(),
        "fifa": fifa,
    };
}

class CapitalInfo {
    final List<double> latlng;

    CapitalInfo({
        required this.latlng,
    });

    factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: List<double>.from(json["latlng"].map((x) => x?.toDouble())),
    );

    Map<String, dynamic> toJson() => {
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
    };
}

class Car {
    final List<String> signs;
    final String side;

    Car({
        required this.signs,
        required this.side,
    });

    factory Car.fromJson(Map<String, dynamic> json) => Car(
        signs: List<String>.from(json["signs"].map((x) => x)),
        side: json["side"],
    );

    Map<String, dynamic> toJson() => {
        "signs": List<dynamic>.from(signs.map((x) => x)),
        "side": side,
    };
}

class CoatOfArms {
    final String? png;
    final String? svg;

    CoatOfArms({
        this.png,
        this.svg,
    });

    factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
        png: json["png"],
        svg: json["svg"],
    );

    Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
    };
}

class Currency {
    final String name;
    final String symbol;

    Currency({
        required this.name,
        required this.symbol,
    });

    factory Currency.fromJson(Map<String, dynamic> json) => Currency(
        name: json["name"],
        symbol: json["symbol"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
    };
}

class Demonyms {
    final Eng eng;
    final Eng? fra;

    Demonyms({
        required this.eng,
        this.fra,
    });

    factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: Eng.fromJson(json["eng"]),
        fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
    );

    Map<String, dynamic> toJson() => {
        "eng": eng.toJson(),
        "fra": fra?.toJson(),
    };
}

class Eng {
    final String f;
    final String m;

    Eng({
        required this.f,
        required this.m,
    });

    factory Eng.fromJson(Map<String, dynamic> json) => Eng(
        f: json["f"],
        m: json["m"],
    );

    Map<String, dynamic> toJson() => {
        "f": f,
        "m": m,
    };
}

class Flags {
    final String png;
    final String svg;
    final String? alt;

    Flags({
        required this.png,
        required this.svg,
        this.alt,
    });

    factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        png: json["png"],
        svg: json["svg"],
        alt: json["alt"],
    );

    Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
        "alt": alt,
    };
}

class Gini {
    final double the2019;

    Gini({
        required this.the2019,
    });

    factory Gini.fromJson(Map<String, dynamic> json) => Gini(
        the2019: json["2019"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "2019": the2019,
    };
}

class Idd {
    final String root;
    final List<String> suffixes;

    Idd({
        required this.root,
        required this.suffixes,
    });

    factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json["root"],
        suffixes: List<String>.from(json["suffixes"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "root": root,
        "suffixes": List<dynamic>.from(suffixes.map((x) => x)),
    };
}

class Languages {
    final String? eng;
    final String? mah;
    final String? fra;
    final String? aym;
    final String? grn;
    final String? que;
    final String? spa;

    Languages({
        this.eng,
        this.mah,
        this.fra,
        this.aym,
        this.grn,
        this.que,
        this.spa,
    });

    factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        eng: json["eng"],
        mah: json["mah"],
        fra: json["fra"],
        aym: json["aym"],
        grn: json["grn"],
        que: json["que"],
        spa: json["spa"],
    );

    Map<String, dynamic> toJson() => {
        "eng": eng,
        "mah": mah,
        "fra": fra,
        "aym": aym,
        "grn": grn,
        "que": que,
        "spa": spa,
    };
}

class Maps {
    final String googleMaps;
    final String openStreetMaps;

    Maps({
        required this.googleMaps,
        required this.openStreetMaps,
    });

    factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
    );

    Map<String, dynamic> toJson() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
    };
}

class Name {
    final String common;
    final String official;
    final NativeName nativeName;

    Name({
        required this.common,
        required this.official,
        required this.nativeName,
    });

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: NativeName.fromJson(json["nativeName"]),
    );

    Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName.toJson(),
    };
}

class NativeName {
    final Translation? eng;
    final Translation? mah;
    final Translation? fra;
    final Translation? aym;
    final Translation? grn;
    final Translation? que;
    final Translation? spa;

    NativeName({
        this.eng,
        this.mah,
        this.fra,
        this.aym,
        this.grn,
        this.que,
        this.spa,
    });

    factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        eng: json["eng"] == null ? null : Translation.fromJson(json["eng"]),
        mah: json["mah"] == null ? null : Translation.fromJson(json["mah"]),
        fra: json["fra"] == null ? null : Translation.fromJson(json["fra"]),
        aym: json["aym"] == null ? null : Translation.fromJson(json["aym"]),
        grn: json["grn"] == null ? null : Translation.fromJson(json["grn"]),
        que: json["que"] == null ? null : Translation.fromJson(json["que"]),
        spa: json["spa"] == null ? null : Translation.fromJson(json["spa"]),
    );

    Map<String, dynamic> toJson() => {
        "eng": eng?.toJson(),
        "mah": mah?.toJson(),
        "fra": fra?.toJson(),
        "aym": aym?.toJson(),
        "grn": grn?.toJson(),
        "que": que?.toJson(),
        "spa": spa?.toJson(),
    };
}

class Translation {
    final String official;
    final String common;

    Translation({
        required this.official,
        required this.common,
    });

    factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        official: json["official"],
        common: json["common"],
    );

    Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
    };
}

class PostalCode {
    final String format;
    final String regex;

    PostalCode({
        required this.format,
        required this.regex,
    });

    factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
        format: json["format"],
        regex: json["regex"],
    );

    Map<String, dynamic> toJson() => {
        "format": format,
        "regex": regex,
    };
}
