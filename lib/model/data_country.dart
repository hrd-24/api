// To parse this JSON data, do
//
//     final countryNameRespons = countryNameResponsFromJson(jsonString);

import 'dart:convert';

List<CountryNameRespons> countryNameResponsFromJson(String str) => List<CountryNameRespons>.from(json.decode(str).map((x) => CountryNameRespons.fromJson(x)));

String countryNameResponsToJson(List<CountryNameRespons> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CountryNameRespons {
    final Name? name;
    final List<String>? tld;
    final String? cca2;
    final String? ccn3;
    final String? cca3;
    final String? cioc;
    final bool? independent;
    final String? status;
    final bool? unMember;
    final Currencies? currencies;
    final Idd? idd;
    final List<String>? capital;
    final List<String>? altSpellings;
    final String? region;
    final String? subregion;
    final Languages? languages;
    final Translations? translations;
    final List<double>? latlng;
    final bool? landlocked;
    final double? area;
    final Demonyms? demonyms;
    final String? flag;
    final Maps? maps;
    final int? population;
    final Car? car;
    final List<String>? timezones;
    final List<String>? continents;
    final Flags? flags;
    final CoatOfArms? coatOfArms;
    final String? startOfWeek;
    final CapitalInfo? capitalInfo;
    final PostalCode? postalCode;
    final List<String>? borders;
    final Gini? gini;
    final String? fifa;

    CountryNameRespons({
        this.name,
        this.tld,
        this.cca2,
        this.ccn3,
        this.cca3,
        this.cioc,
        this.independent,
        this.status,
        this.unMember,
        this.currencies,
        this.idd,
        this.capital,
        this.altSpellings,
        this.region,
        this.subregion,
        this.languages,
        this.translations,
        this.latlng,
        this.landlocked,
        this.area,
        this.demonyms,
        this.flag,
        this.maps,
        this.population,
        this.car,
        this.timezones,
        this.continents,
        this.flags,
        this.coatOfArms,
        this.startOfWeek,
        this.capitalInfo,
        this.postalCode,
        this.borders,
        this.gini,
        this.fifa,
    });
  static List<CountryNameRespons> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => CountryNameRespons.fromJson(json)).toList();
  }
    factory CountryNameRespons.fromJson(Map<String, dynamic> json) => CountryNameRespons(
        name: json["name"] == null ? null : Name.fromJson(json["name"]),
        tld: json["tld"] == null ? [] : List<String>.from(json["tld"]!.map((x) => x)),
        cca2: json["cca2"],
        ccn3: json["ccn3"],
        cca3: json["cca3"],
        cioc: json["cioc"],
        independent: json["independent"],
        status: json["status"],
        unMember: json["unMember"],
        currencies: json["currencies"] == null ? null : Currencies.fromJson(json["currencies"]),
        idd: json["idd"] == null ? null : Idd.fromJson(json["idd"]),
        capital: json["capital"] == null ? [] : List<String>.from(json["capital"]!.map((x) => x)),
        altSpellings: json["altSpellings"] == null ? [] : List<String>.from(json["altSpellings"]!.map((x) => x)),
        region: json["region"],
        subregion: json["subregion"],
        languages: json["languages"] == null ? null : Languages.fromJson(json["languages"]),
        translations: json["translations"] == null ? null : Translations.fromJson(json["translations"]),
        latlng: json["latlng"] == null ? [] : List<double>.from(json["latlng"]!.map((x) => x?.toDouble())),
        landlocked: json["landlocked"],
        area: json["area"],
        demonyms: json["demonyms"] == null ? null : Demonyms.fromJson(json["demonyms"]),
        flag: json["flag"],
        maps: json["maps"] == null ? null : Maps.fromJson(json["maps"]),
        population: json["population"],
        car: json["car"] == null ? null : Car.fromJson(json["car"]),
        timezones: json["timezones"] == null ? [] : List<String>.from(json["timezones"]!.map((x) => x)),
        continents: json["continents"] == null ? [] : List<String>.from(json["continents"]!.map((x) => x)),
        flags: json["flags"] == null ? null : Flags.fromJson(json["flags"]),
        coatOfArms: json["coatOfArms"] == null ? null : CoatOfArms.fromJson(json["coatOfArms"]),
        startOfWeek: json["startOfWeek"],
        capitalInfo: json["capitalInfo"] == null ? null : CapitalInfo.fromJson(json["capitalInfo"]),
        postalCode: json["postalCode"] == null ? null : PostalCode.fromJson(json["postalCode"]),
        borders: json["borders"] == null ? [] : List<String>.from(json["borders"]!.map((x) => x)),
        gini: json["gini"] == null ? null : Gini.fromJson(json["gini"]),
        fifa: json["fifa"],
    );

    Map<String, dynamic> toJson() => {
        "name": name?.toJson(),
        "tld": tld == null ? [] : List<dynamic>.from(tld!.map((x) => x)),
        "cca2": cca2,
        "ccn3": ccn3,
        "cca3": cca3,
        "cioc": cioc,
        "independent": independent,
        "status": status,
        "unMember": unMember,
        "currencies": currencies?.toJson(),
        "idd": idd?.toJson(),
        "capital": capital == null ? [] : List<dynamic>.from(capital!.map((x) => x)),
        "altSpellings": altSpellings == null ? [] : List<dynamic>.from(altSpellings!.map((x) => x)),
        "region": region,
        "subregion": subregion,
        "languages": languages?.toJson(),
        "translations": translations?.toJson(),
        "latlng": latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
        "landlocked": landlocked,
        "area": area,
        "demonyms": demonyms?.toJson(),
        "flag": flag,
        "maps": maps?.toJson(),
        "population": population,
        "car": car?.toJson(),
        "timezones": timezones == null ? [] : List<dynamic>.from(timezones!.map((x) => x)),
        "continents": continents == null ? [] : List<dynamic>.from(continents!.map((x) => x)),
        "flags": flags?.toJson(),
        "coatOfArms": coatOfArms?.toJson(),
        "startOfWeek": startOfWeek,
        "capitalInfo": capitalInfo?.toJson(),
        "postalCode": postalCode?.toJson(),
        "borders": borders == null ? [] : List<dynamic>.from(borders!.map((x) => x)),
        "gini": gini?.toJson(),
        "fifa": fifa,
    };
}

class CapitalInfo {
    final List<double>? latlng;

    CapitalInfo({
        this.latlng,
    });

    factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: json["latlng"] == null ? [] : List<double>.from(json["latlng"]!.map((x) => x?.toDouble())),
    );

    Map<String, dynamic> toJson() => {
        "latlng": latlng == null ? [] : List<dynamic>.from(latlng!.map((x) => x)),
    };
}

class Car {
    final List<String>? signs;
    final String? side;

    Car({
        this.signs,
        this.side,
    });

    factory Car.fromJson(Map<String, dynamic> json) => Car(
        signs: json["signs"] == null ? [] : List<String>.from(json["signs"]!.map((x) => x)),
        side: json["side"],
    );

    Map<String, dynamic> toJson() => {
        "signs": signs == null ? [] : List<dynamic>.from(signs!.map((x) => x)),
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

class Currencies {
    final Bob? usd;
    final Bob? xpf;
    final Bob? bob;

    Currencies({
        this.usd,
        this.xpf,
        this.bob,
    });

    factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        usd: json["USD"] == null ? null : Bob.fromJson(json["USD"]),
        xpf: json["XPF"] == null ? null : Bob.fromJson(json["XPF"]),
        bob: json["BOB"] == null ? null : Bob.fromJson(json["BOB"]),
    );

    Map<String, dynamic> toJson() => {
        "USD": usd?.toJson(),
        "XPF": xpf?.toJson(),
        "BOB": bob?.toJson(),
    };
}

class Bob {
    final String? name;
    final String? symbol;

    Bob({
        this.name,
        this.symbol,
    });

    factory Bob.fromJson(Map<String, dynamic> json) => Bob(
        name: json["name"],
        symbol: json["symbol"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
    };
}

class Demonyms {
    final Eng? eng;
    final Eng? fra;

    Demonyms({
        this.eng,
        this.fra,
    });

    factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: json["eng"] == null ? null : Eng.fromJson(json["eng"]),
        fra: json["fra"] == null ? null : Eng.fromJson(json["fra"]),
    );

    Map<String, dynamic> toJson() => {
        "eng": eng?.toJson(),
        "fra": fra?.toJson(),
    };
}

class Eng {
    final String? f;
    final String? m;

    Eng({
        this.f,
        this.m,
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
    final String? png;
    final String? svg;
    final String? alt;

    Flags({
        this.png,
        this.svg,
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
    final double? the2019;

    Gini({
        this.the2019,
    });

    factory Gini.fromJson(Map<String, dynamic> json) => Gini(
        the2019: json["2019"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "2019": the2019,
    };
}

class Idd {
    final String? root;
    final List<String>? suffixes;

    Idd({
        this.root,
        this.suffixes,
    });

    factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json["root"],
        suffixes: json["suffixes"] == null ? [] : List<String>.from(json["suffixes"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "root": root,
        "suffixes": suffixes == null ? [] : List<dynamic>.from(suffixes!.map((x) => x)),
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
    final String? googleMaps;
    final String? openStreetMaps;

    Maps({
        this.googleMaps,
        this.openStreetMaps,
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
    final String? common;
    final String? official;
    final NativeName? nativeName;

    Name({
        this.common,
        this.official,
        this.nativeName,
    });

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: json["nativeName"] == null ? null : NativeName.fromJson(json["nativeName"]),
    );

    Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName?.toJson(),
    };
}

class NativeName {
    final Ara? eng;
    final Ara? mah;
    final Ara? fra;
    final Ara? aym;
    final Ara? grn;
    final Ara? que;
    final Ara? spa;

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
        eng: json["eng"] == null ? null : Ara.fromJson(json["eng"]),
        mah: json["mah"] == null ? null : Ara.fromJson(json["mah"]),
        fra: json["fra"] == null ? null : Ara.fromJson(json["fra"]),
        aym: json["aym"] == null ? null : Ara.fromJson(json["aym"]),
        grn: json["grn"] == null ? null : Ara.fromJson(json["grn"]),
        que: json["que"] == null ? null : Ara.fromJson(json["que"]),
        spa: json["spa"] == null ? null : Ara.fromJson(json["spa"]),
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

class Ara {
    final String? official;
    final String? common;

    Ara({
        this.official,
        this.common,
    });

    factory Ara.fromJson(Map<String, dynamic> json) => Ara(
        official: json["official"],
        common: json["common"],
    );

    Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
    };
}

class PostalCode {
    final String? format;
    final String? regex;

    PostalCode({
        this.format,
        this.regex,
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

class Translations {
    final Ara? ara;
    final Ara? bre;
    final Ara? ces;
    final Ara? cym;
    final Ara? deu;
    final Ara? est;
    final Ara? fin;
    final Ara? fra;
    final Ara? hrv;
    final Ara? hun;
    final Ara? ita;
    final Ara? jpn;
    final Ara? kor;
    final Ara? nld;
    final Ara? per;
    final Ara? pol;
    final Ara? por;
    final Ara? rus;
    final Ara? slk;
    final Ara? spa;
    final Ara? srp;
    final Ara? swe;
    final Ara? tur;
    final Ara? urd;
    final Ara? zho;

    Translations({
        this.ara,
        this.bre,
        this.ces,
        this.cym,
        this.deu,
        this.est,
        this.fin,
        this.fra,
        this.hrv,
        this.hun,
        this.ita,
        this.jpn,
        this.kor,
        this.nld,
        this.per,
        this.pol,
        this.por,
        this.rus,
        this.slk,
        this.spa,
        this.srp,
        this.swe,
        this.tur,
        this.urd,
        this.zho,
    });

    factory Translations.fromJson(Map<String, dynamic> json) => Translations(
        ara: json["ara"] == null ? null : Ara.fromJson(json["ara"]),
        bre: json["bre"] == null ? null : Ara.fromJson(json["bre"]),
        ces: json["ces"] == null ? null : Ara.fromJson(json["ces"]),
        cym: json["cym"] == null ? null : Ara.fromJson(json["cym"]),
        deu: json["deu"] == null ? null : Ara.fromJson(json["deu"]),
        est: json["est"] == null ? null : Ara.fromJson(json["est"]),
        fin: json["fin"] == null ? null : Ara.fromJson(json["fin"]),
        fra: json["fra"] == null ? null : Ara.fromJson(json["fra"]),
        hrv: json["hrv"] == null ? null : Ara.fromJson(json["hrv"]),
        hun: json["hun"] == null ? null : Ara.fromJson(json["hun"]),
        ita: json["ita"] == null ? null : Ara.fromJson(json["ita"]),
        jpn: json["jpn"] == null ? null : Ara.fromJson(json["jpn"]),
        kor: json["kor"] == null ? null : Ara.fromJson(json["kor"]),
        nld: json["nld"] == null ? null : Ara.fromJson(json["nld"]),
        per: json["per"] == null ? null : Ara.fromJson(json["per"]),
        pol: json["pol"] == null ? null : Ara.fromJson(json["pol"]),
        por: json["por"] == null ? null : Ara.fromJson(json["por"]),
        rus: json["rus"] == null ? null : Ara.fromJson(json["rus"]),
        slk: json["slk"] == null ? null : Ara.fromJson(json["slk"]),
        spa: json["spa"] == null ? null : Ara.fromJson(json["spa"]),
        srp: json["srp"] == null ? null : Ara.fromJson(json["srp"]),
        swe: json["swe"] == null ? null : Ara.fromJson(json["swe"]),
        tur: json["tur"] == null ? null : Ara.fromJson(json["tur"]),
        urd: json["urd"] == null ? null : Ara.fromJson(json["urd"]),
        zho: json["zho"] == null ? null : Ara.fromJson(json["zho"]),
    );

    Map<String, dynamic> toJson() => {
        "ara": ara?.toJson(),
        "bre": bre?.toJson(),
        "ces": ces?.toJson(),
        "cym": cym?.toJson(),
        "deu": deu?.toJson(),
        "est": est?.toJson(),
        "fin": fin?.toJson(),
        "fra": fra?.toJson(),
        "hrv": hrv?.toJson(),
        "hun": hun?.toJson(),
        "ita": ita?.toJson(),
        "jpn": jpn?.toJson(),
        "kor": kor?.toJson(),
        "nld": nld?.toJson(),
        "per": per?.toJson(),
        "pol": pol?.toJson(),
        "por": por?.toJson(),
        "rus": rus?.toJson(),
        "slk": slk?.toJson(),
        "spa": spa?.toJson(),
        "srp": srp?.toJson(),
        "swe": swe?.toJson(),
        "tur": tur?.toJson(),
        "urd": urd?.toJson(),
        "zho": zho?.toJson(),
    };
}
