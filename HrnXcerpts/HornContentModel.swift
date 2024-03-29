//
//  HornContentModel.swift
//  HrnXcerpts
//
//  Created by Alexander Burdiss on 9/14/20.
//  Copyright © 2020 Alexander Burdiss. All rights reserved.
//

import Foundation

/**
 Composition collection that holds all information about a composition, and is displayed on a view.
 */
struct Composition: Identifiable {
    let id: Int
    var composer: String
    var composerLast: String
    var name: String
    var date: String
    var era: String
    var genre: String
    var excerpts: [Excerpt]
    var mutes: String
    var videos: [[String]] /// [Name, YouTubeID]
}

/**
 Excerpt collection that holds images of an excerpt.
 */
struct Excerpt: Identifiable {
    let id: Int
    var description: String
    var measures: String
    var pictures: [[String]] /// [Part, PictureNo.]
}

/**
 Composer collection that holds all the information about a composer. This information is displayed in one view.
 */
struct Composer: Identifiable {
    let id: Int
    var name: String
    var ipa: String
    var image: Int
    var country: String
    var dates: String
    var bio: String
    var excerpts: [Composition]
}

//MARK: Compositions

let bachBrandenburgConcerto = Composition(id: 0, composer: "Johann Sebastian Bach", composerLast: "Bach", name: "Brandenburg Concerto No. 1", date: "1721", era: "Baroque", genre: "Concerto", excerpts: [
    Excerpt(id: 1, description: "Excerpt 1", measures: "Mov. I, mm. 12 - 25", pictures: [["F Horn 1", "1000"], ["F Horn 2", "1001"]]),
    Excerpt(id: 2, description: "Excerpt 2", measures: "Mov. I, mm. 36 - 43", pictures: [["F Horn 1", "1002"], ["F Horn 2", "1003"]]),
    Excerpt(id: 3, description: "Excerpt 3", measures: "Mov. I, mm. 65 - 74", pictures: [["F Horn 1", "1004"], ["F Horn 2", "1005"]]),
    Excerpt(id: 4, description: "Excerpt 4", measures: "Mov. III, Beginning - mm. 17", pictures: [["F Horn 1", "1006"], ["F Horn 2", "1007"]]),
    Excerpt(id: 5, description: "Excerpt 5", measures: "Mov. III, mm. 84 - End", pictures: [["F Horn 1", "1008"], ["F Horn 2", "1009"]]),
    Excerpt(id: 6, description: "Excerpt 6", measures: "Mov. IV, Trio II", pictures: [["F Horn 1", "1010"], ["F Horn 2", "1011"]])
], mutes: "", videos: [
    ["Baroque Razzle-Dazzle", "iHeyhXlsu6M"],
    ["Claudio Abbado (With Score)", "4kI1Ab6_Xfk"],
    ["Freiburger Barockorchester", "BOZEj8wyj-I"],
    ["Trevor Pinnock, The English Concert (With Score)", "7TlG6LMQR9M"],
])

let bachMassB = Composition(id: 1, composer: "Johann Sebastian Bach", composerLast: "Bach", name: "Mass in B minor", date: "1749", era: "Baroque", genre: "Mass", excerpts: [
    Excerpt(id: 7, description: "Excerpt 1", measures: "Mov. X, mm. 1 - 15", pictures: [["D Horn", "1012"]])
], mutes: "", videos: [
    ["Frans Brüggen, Orchestra of the 18th Century (With Score)", "EH6wdRVqoXQ"],
    ["Harry Bicket, The English Concert", "7F7TVM8m95Y"],
    ["John Eliot Gardiner, English Baroque Soloists", "m7obnfrlP0s"],
    ["John Eliot Gardiner, Monteverdi Choir", "CT6vRpmyiW0"],
    ["Jordi Savall, Le Concert des Nations", "tDteccEwZNI"],
    ["Jos van Veldhoven, Netherlands Bach Society", "3FLbiDrn8IE"],
    ["Karl Richter, Münchener Bach-Orchester", "vw9eEIfohj4"],
    ["René Jacobs, Akademie fur Alte Musik Berlin", "So704KMhspk"],
])

let beethovenFidelio = Composition(id: 2, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Fidelio", date: "1805", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 8, description: "Excerpt 1", measures: "Overture, mm. 1 - 16", pictures: [["E Horn 1", "1013"], ["E Horn 2", "1014"], ["E Horn 3", "1015"], ["E Horn 4", "1016"]]),
    Excerpt(id: 9, description: "Excerpt 2", measures: "Overture, mm. 45 - 55", pictures: [["E Horn 1", "1017"], ["E Horn 2", "1018"], ["E Horn 3", "1019"], ["E Horn 4", "1020"]]),
    Excerpt(id: 10, description: "Excerpt 3", measures: "Overture, mm. 136 - 151", pictures: [["E Horn 1", "1021"], ["E Horn 2", "1022"]])
], mutes: "", videos: [
    ["Claudio Abbado, Vienna Philharmonic Orchestra", "fq7g6du9S3s"],
    ["Herbert Von Karajan, Berliner Philharmoniker", "1FB7z2ki2MQ"],
    ["James Levine, Metropolitan Opera Orchestra", "NA3bi_evCZk"],
    ["강석희 (Kang Seok-Hee), 전주시립교향악단 (Jeonju Symphony Orchestra)", "ZkB9OgZvjSI"],
    ["Leonard Bernstein, Vienna State Opera Orchestra (With Score)", "YI-CF_rOApI"],
    ["Riccardo Muti, Philadelphia Orchestra", "JC_wGFGYkjs"]
])

let beethoven2 = Composition(id: 3, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 2", date: "1802", era: "Classical", genre: "Symphony", excerpts: [
    Excerpt(id: 11, description: "Excerpt 1", measures: "Mov. II, mm. 85 - 96", pictures: [["E Horn 1", "1023"], ["E Horn 2", "1024"]]),
    Excerpt(id: 12, description: "Excerpt 2", measures: "Mov. II, mm. 249 - 260", pictures: [["E Horn 1", "1025"], ["E Horn 2", "1026"]]),
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "ytOL_iszvAE"],
    ["Christian Thielemann, Weiner Philharmoniker", "8PQ1EDQHCyk"],
    ["Daniel Barenboim, West-Eastern Divan Orchestra", "bEiYmeeV6sI"],
    ["Frans Brüggen, Radio Kamer Filharmonie", "3OmzVFIQM8s"],
    ["Herbert von Karajan, Berlin Philharmonic (With Score)", "pZyeEeXhYs4"],
    ["Leonard Bernstein, Wiener Philarmoniker", "70e28x9OaPQ"],
    ["Paavo Jarvi, Deutsche Kammerphilharmonie Bremen", "VAnjfp7vUvA"],
])

let beethoven3 = Composition(id: 4, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 3", date: "1803", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 13, description: "Excerpt 1", measures: "Mov. I, 4 mm. before [M] - 19 mm. after [M]", pictures: [["E♭ Horn 1", "1027"], ["E♭ Horn 2", "1028"], ["E♭ Horn 3", "1029"]]),
    Excerpt(id: 14, description: "Excerpt 2", measures: "Mov. I, 16 mm. before [U] – 9 mm. after [V]", pictures: [["E♭ Horn 1", "1030"], ["E♭ Horn 2", "1031"], ["E♭ Horn 3", "1032"]]),
    Excerpt(id: 15, description: "Excerpt 3", measures: "Mov. III, mm. 169 - 205", pictures: [["E♭ Horn 1", "1033"], ["E♭ Horn 2", "1034"], ["E♭ Horn 3", "1035"]]),
    Excerpt(id: 16, description: "Excerpt 4", measures: "Mov. IV, 9 mm. before [F] – 7 mm. after [G]", pictures: [["E♭ Horn 1", "1036"], ["E♭ Horn 2", "1037"], ["E♭ Horn 3", "1038"]]),
    Excerpt(id: 17, description: "Excerpt 5", measures: "Mov. IV, mm. 433 - End", pictures: [["E♭ Horn 1", "1039"], ["E♭ Horn 2", "1040"], ["E♭ Horn 3", "1041"]])
], mutes: "", videos: [
    ["Alondra de la Parra conducts Tonhalle Orchester Zürich", "s5ovX4aThP8"],
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "fhHcty9OM-0"],
    ["Christian Thielemann, Weiner Philharmoniker", "7gl3jeumGqY"],
    ["Claudio Abbado, Lucerne Festival Orchestra", "OVaJH0WLMgE"],
    ["Daniel Barenboim, West-Eastern Divan Orchestra", "InxT4S6wQf4"],
    ["Herbert von Karajan, Berlin Philharmonic", "nbGV-MVfgec"],
    ["Herbert von Karajan, Berlin Philharmonic (With Score)", "dTbesxdLwo8"],
])

let beethoven6 = Composition(id: 5, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 6", date: "1808", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 18, description: "Excerpt 1", measures: "Mov. III, 49 mm. after [A] - 78 mm. after [A] ", pictures: [["F Horn 1", "1042"], ["F Horn 2", "1043"]]),
    Excerpt(id: 19, description: "Excerpt 2", measures: "Mov. V, mm. 1 - 10", pictures: [["F Horn 1", "1044"]])
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "Zv4PIFRpYcw"],
    ["Christian Thielemann, Wiener Philharmoniker", "23VcuR55_j4"],
    ["Daniel Barenboim, West-Eastern Divan Orchestra", "aW-7CqxhnAQ"],
    ["Herbert von Karajan, Berlin Philharmonic (With Score)", "p4CCU2-AFZE"],
    ["James Loughran, London Philarmonic Orchestra", "fRg0K5rgXog"],
    ["Leonard Bernstein, Boston Symphony Orchestra", "t2VY33VXnrQ"],
    ["Paavo Jarvi, Deutsche Kammerphilharmonie Bremen", "iQGm0H9l9I4"]
])

let beethoven7 = Composition(id: 6, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 7", date: "1812", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 20, description: "Excerpt 1", measures: "Mov. I, 25 mm. before [C] - [C]", pictures: [["A Horn 1", "1045"], ["A Horn 2", "1046"]]),
    Excerpt(id: 21, description: "Excerpt 2", measures: "Mov. I, 23 mm. after [N] – End", pictures: [["A Horn 1", "1047"], ["A Horn 2", "1048"]]),
    Excerpt(id: 22, description: "Excerpt 3", measures: "Mov. III, mm. 153-239", pictures: [["D Horn 1", "1049"], ["D Horn 2", "1050"]]),
    Excerpt(id: 23, description: "Excerpt 4", measures: "Mov. IV, K – End", pictures: [["A Horn 1", "1051"], ["A Horn 2", "1052"]])
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "fWGCB81TFPQ"],
    ["Christian Thielemann, Wiener Philharmoniker", "rUQSsrIwwXM"],
    ["Iván Fischer, Royal Concertgebouw Orchestra", "-4788Tmz9Zo"],
    ["Herbert von Karajan, Berlin Philharmonic (With Score)", "JMrm9jEo_Pk"],
    ["Leonard Bernstein, Vienna Philharmonic", "V09RdzPUYVs"],
])

let beethoven8 = Composition(id: 7, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 8", date: "1812", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 24, description: "Excerpt 1", measures: "Mov. III, mm. 45 - 78", pictures: [["F Horn 1", "1053"], ["F Horn 2", "1054"]])
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "V6set4KUs4w"],
    ["Daniel Barenboim, West-Eastern Divan Orchestra", "dV1zTM2P_LE"],
    ["Herbert von Karajan, Philharmonia Orchestra", "C2Avpt9FKP0"],
    ["Herbert von Karajan, Berlin Philharmonic (With Score)", "fa6DRoxpOwg"],
    ["Leonard Bernstein, Wiener Philarmoniker", "GQ7-hbEWdw8"],
    ["Zubin Mehta, Israel Philharmonic Orchestra", "FMEL6z9Qir8"],
])

let beethoven9 = Composition(id: 8, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 9", date: "1824", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 25, description: "Excerpt 1", measures: "Mov. I, [Q] – 10 mm. after [Q]", pictures: [["D Horn 1", "1055"], ["D Horn 2", "1056"], ["B♭ basso Horn 3", "1057"], ["B♭ basso Horn 4", "1058"]]),
    Excerpt(id: 26, description: "Excerpt 2", measures: "Mov. II, [L] - 8 mm. after [L]", pictures: [["D Horn 1", "1059"], ["D Horn 2", "1060"]]),
    Excerpt(id: 27, description: "Excerpt 3", measures: "Mov. III, mm. 83 - 121", pictures: [["B Horn 1", "1061"], ["B Horn 2", "1062"], ["E♭ Horn 3", "1063"], ["E♭ Horn 4", "1064"]])
], mutes: "", videos: [
    ["Arturo Toscanini, NBC Symphony Orchestra", "DuK133dK6eQ"],
    ["정명훈 (Chung Myung-Whun), The Orchestre Philharmonique de Radio France", "KtRzuOSCOO0"],
    ["Daniel Barenboim, West-Eastern Divan Orchestra", "ChygZLpJDNE"],
    ["Herbert von Karjan, Berlin Philharmonic (With Score)", "ixpfgm_xxSE"],
    ["Klaus Mäkelä, Oslo Philharmonic", "QkQapdgAa7os"],
    ["Osaka, Japan", "X6s6YKlTpfw"],
    ["Riccardo Muti, Chicago Symphony Orchestra", "rOjHhS5MtvA"],
    ["Seiji Ozawa, Saito Kinen Orchestra", "VS6TEQ_z2wc"],
])

let berliozRomeoEtJuliet = Composition(id: 9, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Roméo et Juliette", date: "1839", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 28, description: "Excerpt 1", measures: "Mov. III, 9 mm. after 57 – 4 mm. after 62", pictures: [["F Horn 1", "1065"], ["C Horn 2", "1066"], ["B♭ Alto Horn 3", "1067"], ["E♭ Horn 4", "1068"]])
], mutes: "", videos: [
    ["Arturo Toscanini, NBC Symphony Orchestra", "zzlpOh6-Z1A?t=96"],
    ["Carlo Maria Giulini, Koninklijk Concertgebouworkest", "O-FN6NwGwF8"],
    ["Daniele Gatti, The Orchestre National de France", "zf7kGcB4VSQ"],
    ["Sir Colin Davis, Wiener Philharmoniker", "A1JBdePepGo"],
    ["Sir John Eliot Gardiner, Orchestra Révolutionnaire et Romantique", "6JADiAECnRQ"],
    ["Stephan Tetzlaff, Simfonijski Orkestar i Zbor Hrvatske Radiotelevizije", "OoWf3Mpmm2s"],
])

let brahmsAcademic = Composition(id: 10, composer: "Johannes Brahms", composerLast: "Brahms", name: "Academic Festival Overture", date: "1880", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 29, description: "Excerpt 1", measures: "Beginning - [A]", pictures: [["C Horn 1", "1069"], ["C Horn 2", "1070"]]),
    Excerpt(id: 30, description: "Excerpt 2", measures: "10 mm. after [F] – [G]", pictures: [["C Horn 1", "1071"], ["C Horn 2", "1072"], ["E Horn 3", "1073"], ["E Horn 4", "1074"]])
], mutes: "", videos: [
    ["Bernard Haitink, Royal Concertgebouw Orchestra (With Score)", "5AkQrnLPvC4"],
    ["Claudio Abbado, Berliner Philharmoniker", "iIss3Gca6Qo"],
    ["Leonard Bernstein", "Y1E6FBi-AJw"],
    ["Otto Klemperer, Philharmonia Orchestra", "bjLrZqYguFs"],
    ["Paavo Järvi, Orchestre de Paris", "R5pzr5655yw"],
    ["Sir Georg Solti, Chicago Symphony Orchestra", "JMIxE-tc6r0"],
])

let brahmsPiano1 = Composition(id: 11, composer: "Johannes Brahms", composerLast: "Brahms", name: "Piano Concerto No. 1", date: "1859", era: "Romantic", genre: "Piano Concerto", excerpts: [
    Excerpt(id: 31, description: "Excerpt 1", measures: "Mov. I, mm. 191 - 219", pictures: [["D Horn 1", "1075"], ["D Horn 2", "1076"], ["F Horn 3", "1077"], ["F Horn 4", "1078"]]),
    Excerpt(id: 32, description: "Excerpt 2", measures: "Mov. I, mm. 423 - 443", pictures: [["D Horn 1", "1079"], ["D Horn 2", "1080"]]),
    Excerpt(id: 33, description: "Excerpt 3", measures: "Mov. III, 19 mm. before [E] to [E]", pictures: [["D Horn 1", "1081"], ["D Horn 2", "1082"], ["B♭ Basso Horn 3", "1083"], ["B♭ Basso Horn 4", "1084"]]),
    Excerpt(id: 34, description: "Excerpt 4", measures: "Mov. III, [H] - 25 mm. after [H]", pictures: [["D Horn 1", "1085"], ["D Horn 2", "1086"]])
], mutes: "", videos: [
    ["Bernard Haitink, Concertgebouw Orchestra", "VsgWF406ti4"],
    ["Leonard Bernstein, Vienna Philharmonic", "1MJGC3OYE0M"],
    ["Michael Gielen, Southwest German Radio Symphony Orchestra", "OOlc2PAiWUU"],
    ["Riccardo Chailly, Gewandhausorchester (With Score)", "rDhBywJ5zCU"],
    ["Valery Gergiev", "Yxn8E6v8akQ"],
])

let brahmsPiano2 = Composition(id: 12, composer: "Johannes Brahms", composerLast: "Brahms", name: "Piano Concerto No. 2", date: "1881", era: "Romantic", genre: "Piano Concerto", excerpts: [
    Excerpt(id: 35, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 5", pictures: [["B♭ Basso Horn 1", "1087"]]),
    Excerpt(id: 36, description: "Excerpt 2", measures: "Mov. I, [D] - 5 mm. after [D]", pictures: [["B♭ Basso Horn 1", "1088"], ["B♭ Basso Horn 2", "1089"], ["F Horn 3", "1090"], ["F Horn 4", "1091"]]),
    Excerpt(id: 37, description: "Excerpt 3", measures: "Mov. I, [F] - 7 mm. before [G]", pictures: [["B♭ Basso Horn 1", "1092"], ["B♭ Basso Horn 2", "1093"], ["F Horn 3", "1094"], ["F Horn 4", "1095"]]),
    Excerpt(id: 38, description: "Excerpt 4", measures: "Mov. II, mm. 159 - 215", pictures: [["B♭ Basso Horn 1", "1096"], ["B♭ Basso Horn 2", "1097"], ["D Horn 3", "1098"], ["D Horn 4", "1099"]])
], mutes: "", videos: [
    ["Bernard Haitink, Chamber Orchestra of Europe", "40NsFKuskH0"],
    ["David Zinman, NHK Symphony Orchestra", "o6_lbrlehsg"],
    ["Leonard Bernstein, Vienna Philharmonic", "y4YqWXmF9Dg"],
    ["Leonard Bernstein, Vienna Philharmonic (With Score)", "tWoFaPwbzqE"],
    ["Valery Gergiev, Munich Philharmonic", "BszBccYHuAk"]
])

let brahms1 = Composition(id: 13, composer: "Johannes Brahms", composerLast: "Brahms", name: "Symphony No. 1", date: "1876", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 39, description: "Excerpt 1", measures: "Mov. I, [E] - 1 mm. after [F]", pictures: [["E Horn 1", "1100"], ["E Horn 2", "1101"]]),
    Excerpt(id: 40, description: "Excerpt 2", measures: "Mov. IV, [B] - 3 mm. before [C]", pictures: [["C Horn 1", "1102"], ["C Horn 2", "1103"], ["E Horn 3", "1104"]]),
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra", "cqd4NQ-ppCY"],
    ["Herbert von Karajan, Berliner Philharmoniker", "45mWi4qY5v0"],
    ["Karl Böhm, Berliner Philharmoniker (With Score)", "POW-u-RGspY"],
    ["Leonard Bernstein, Vienna Philharmonic Orchestra", "EGRqIGOAPcE"],
    ["Paavo Järvi, Orchestre de Paris", "BRdEgS_OHAk"],
    ["Stanisław Skrowaczewski, Frankfurt Radio Symphony Orchestra", "9Ij6I_zhBdU"],
])

let brahms2 = Composition(id: 14, composer: "Johannes Brahms", composerLast: "Brahms", name: "Symphony No. 2", date: "1877", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 41, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 13", pictures: [["D Horn 1", "1105"], ["D Horn 2", "1106"], ["E Horn 3", "1107"], ["E Horn 4", "1108"]]),
    Excerpt(id: 42, description: "Excerpt 2", measures: "Mov. I, mm. 438 - 477", pictures: [["D Horn 1", "1109"], ["D Horn 2", "1110"], ["E Horn 3", "1111"], ["E Horn 4", "1112"]]),
    Excerpt(id: 43, description: "Excerpt 3", measures: "Mov. II, [A] - [B]", pictures: [["B Basso Horn 1", "1113"], ["B Basso Horn 2", "1114"]])
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra", "qbcfuMlNRWg"],
    ["Carlos Kleiber, Wiener Philharmoniker", "XHmkl7GM_es"],
    ["Carlos Kleiber, Wiener Philharmoniker (With Score)", "HCkSpCh4Wcw"],
    ["Kurt Masur, Gewandhausorchester Leipzig", "lSii-jC6-Uo"],
    ["Leonard Bernstein, Wiener Philharmoniker", "6nKd-ia7_Lc"],
    ["Philippe Herreweghe, Frankfurt Radio Symphony Orchestra", "vMPP8DkVhk8"],
    ["Seiji Ozawa, Saito Kinen Orchestra", "QnTNiYTHQ90"],
])

let brahms3 = Composition(id: 15, composer: "Johannes Brahms", composerLast: "Brahms", name: "Symphony No. 3", date: "1883", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 44, description: "Excerpt 1", measures: "Mov. I, [G] - [H]", pictures: [["C Horn 1", "1115"], ["C Horn 2", "1116"]]),
    Excerpt(id: 45, description: "Excerpt 2", measures: "Mov. III, [F] - 12 mm. after [F]", pictures: [["C Horn 1", "1117"], ["C Horn 2", "1118"]]),
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "u68ETRjNQME"],
    ["Bernard Haitink, Chamber Orchestra of Europe", "GF260OjcAjE"],
    ["Daniel Barenboim, Chicago Symphony Orchestra", "mAjvP_b0l7E"],
    ["Edo de Waart, The Netherlands Philharmonic Orchestra", "a9TCjM9jhks"],
    ["Herbert von Karajan, Berliner Philharmoniker", "QaItCES17AY"],
    ["Leonard Bernstein, Wiener Philharmoniker", "4L0MqnAoEJM"],
    ["Philippe Herreweghe, Frankfurt Radio Symphony Orchestra", "vMPP8DkVhk8"],
    ["Seiji Ozawa, Saito Kinen Orchestra", "EN-ymlBxxTQ"],
    ["Sir Georg Solti, Chicago Symphony Orchestra", "wXiHNzRhoFw"],
    ["Sir John Barbirolli, Wiener Philharmoniker (With Score)", "Lst1Aex2vcQ"]
])

let brahms4 = Composition(id: 16, composer: "Johannes Brahms", composerLast: "Brahms", name: "Symphony No. 4", date: "1885", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 46, description: "Excerpt 1", measures: "12 mm. before [B] - 4 mm. after [E]", pictures: [["E Horn 1", "1119"], ["E Horn 2", "1120"], ["C Horn 3", "1121"], ["C Horn 4", "1122"]]),
    Excerpt(id: 47, description: "Excerpt 2", measures: "Mov. I, 2 mm. after [F] - 218", pictures: [["E Horn 1", "1123"], ["E Horn 2", "1124"], ["C Horn 3", "1125"], ["C Horn 4", "1126"]]),
    Excerpt(id: 48, description: "Excerpt 3", measures: "Mov. II, Beginning - [A]", pictures: [["E Horn 1", "1127"], ["E Horn 2", "1128"], ["C Horn 3", "1129"], ["C Horn 4", "1130"]]),
    Excerpt(id: 49, description: "Excerpt 4", measures: "Mov. II, mm. 113 - End", pictures: [["E Horn 1", "1131"], ["E Horn 2", "1132"], ["C Horn 3", "1133"], ["C Horn 4", "1134"]])
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "o69YVL_XKJo"],
    ["Bernard Haitink, Chamber Orchestra of Europe", "7QLuYj2jxoc"],
    ["Carlos Kleiber, Bayerische Staatsorchester", "t_L8BajLmtE"],
    ["Carlos Kleiber, Wiener Philharmoniker (With Score)", "pT6SN4tPbv8"],
    ["Christoph Eschenbach", "0jvpWs0sq9s"],
    ["정명훈 (Chung Myung-Whun), The Orchestre Philharmonique de Radio France", "G8R7T0R4NC0"],
    ["Leonard Bernstein, Wiener Philharmoniker", "ckuUq7im8H4"]
])

let brahmsVariations = Composition(id: 17, composer: "Johannes Brahms", composerLast: "Brahms", name: "Variations on a Theme by Haydn", date: "1873", era: "Romantic", genre: "Variations", excerpts: [
    Excerpt(id: 50, description: "Excerpt 1", measures: "Variation VI", pictures: [["B♭ Basso Horn 1", "1135"], ["B♭ Basso Horn 2", "1136"], ["F Horn 3", "1137"], ["F Horn 4", "1138"]]),
    Excerpt(id: 51, description: "Excerpt 2", measures: "Finale, 5 mm. after [O] - End", pictures: [["B♭ Basso Horn 1", "1139"], ["B♭ Basso Horn 2", "1140"], ["F Horn 3", "1141"], ["F Horn 4", "1142"]])
], mutes: "", videos: [
    ["Claudio Abbado, Berlin Philharmonic Orchestra", "BAuqxEMRapg"],
    ["Cristian Măcelaru, WDR Sinfonieorchester", "wcobxmwCTys"],
    ["Gustavo Dudamel, Berlin Philharmonic Orchestra", "BRu7CMg6wSs"],
    ["Iván Fischer, Budapesti Fesztiválzenekar", "2h9uLF0LqtM"],
    ["Nikolaus Harnoncourt, Berlin Philharmonic Orchestra", "02F9-SWkzc4"],
    ["Ricardo Muti, Philadelphia Orchestra (With Score)", "oMJVCdhJZPk"],
    ["Richard Davis, University of Melbourne Symphony Orchestra", "QmQLb5SZb4E"],
    ["Sergiu Celibidache, Munich Philharmonic Orchestra", "vQ-JIXjFykc"]
])

let bruckner4 = Composition(id: 18, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 4", date: "1888", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 52, description: "Excerpt 1", measures: "Mov. I, Beginning - [A]", pictures: [["F Horn 1", "1143"], ["F Horn 2", "1144"]]),
    Excerpt(id: 53, description: "Excerpt 2", measures: "Mov. I, [H] - [I]", pictures: [["F Horn 1", "1145"], ["F Horn 2", "1146"], ["F Horn 3", "1147"], ["F Horn 4", "1148"]]),
    Excerpt(id: 54, description: "Excerpt 3", measures: "Mov. II, 5 mm. after [D] - 9 mm. before [E]", pictures: [["F Horn 1", "1149"], ["F Horn 3", "1150"]]),
    Excerpt(id: 55, description: "Excerpt 4", measures: "Mov. III, Beginning - [D]", pictures: [["F Horn 1", "1151"], ["F Horn 2", "1152"], ["F Horn 3", "1153"], ["F Horn 4", "1154"]]),
    Excerpt(id: 56, description: "Excerpt 5", measures: "Mov. IV, [F] - [K]", pictures: [["F Horn 1", "1155"], ["F Horn 2", "1156"], ["F Horn 3", "1157"], ["F Horn 4", "1158"]])
], mutes: "", videos: [
    ["Claudio Abbado, Wiener Philharmoniker", "gcBg-tXn0fs"],
    ["Daniel Barenboim, Royal Concertgebouw Orchestra", "xdv-9RFZX2w"],
    ["Eliahu Inbal, Frankfurt Radio Symphony", "DEssCDEAyig"],
    ["Gustavo Gimeno, The Radio Philharmonic Orchestra", "G_VFA988d8s"],
    ["Herbert von Karajan, Berliner Philharmoniker", "rCvOXwgOvOo"],
    ["Sergiu Celibidache, Münchner Philharmoniker", "LY7m119eOys"],
    ["Stanislaw Skrowaczewski, Orquesta Sinfónica de Galicia", "P_BXBiHtIGM"],
])

let bruckner7 = Composition(id: 19, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 7", date: "1885", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 57, description: "Excerpt 1", measures: "Mov. II, [S] - 3 mm. after [S]", pictures: [["B♭ Tenor Wagner Tuba 1", "1163"], ["B♭ Tenor Wagner Tuba 2", "1169"], ["F Bass Wagner Tuba 1", "1165"], ["F Bass Wagner Tuba 2", "1167"]]),
    Excerpt(id: 58, description: "Excerpt 2", measures: "Mov. IV, [P] - [S]", pictures: [["F Horn 1", "1159"], ["F Horn 2", "1160"], ["F Horn 3", "1161"], ["F Horn 4", "1162"], ["B♭ Tenor Wagner Tuba 1", "1164"], ["B♭ Tenor Wagner Tuba 2", "1170"], ["F Bass Wagner Tuba 1", "1166"], ["F Bass Wagner Tuba 2", "1168"]])
], mutes: "", videos: [
    ["Andris Nelsons, Gewandhausorchester Leipzig", "_6sX6aIlgJk"],
    ["Bernard Haitink, Wiener Philharmoniker", "_6sX6aIlgJk"],
    ["Christoph Eschenbach, Frankfurt Radio Symphony", "uaV3eEJB55c"],
    ["Christian Thielemann, Wiener Philharmoniker", "cuXPkoOM2j8"],
    ["Herbert von Karajan, Wiener Philharmoniker", "3pioV8yB3iA"],
    ["Otto Klemperer, Philharmonia Orchestra", "wGoYMjVagqQ"],
    ["Sergiu Celibidache, Münchner Philharmoniker", "2X2bbusaOzI"],
    ["Wilhelm Furtwängler, Berliner Philharmoniker", "ihK5eDpP2vU"],
])

let dvorakCello = Composition(id: 20, composer: "Antonín Dvořák", composerLast: "Dvořák", name: "Cello Concerto", date: "1895", era: "Romantic", genre: "Cello Concerto", excerpts: [
    Excerpt(id: 59, description: "Excerpt 1", measures: "Mov. I, 11 mm. after [2] - 10 mm. before [3]", pictures: [["E Horn 1", "1171"]]),
    Excerpt(id: 60, description: "Excerpt 2", measures: "Mov. I, 6 mm. before [7] - 6 mm. before [8]", pictures: [["E Horn 1", "1172"], ["E Horn 2", "1173"], ["D Horn 3", "1174"]]),
    Excerpt(id: 61, description: "Excerpt 3", measures: "Mov. I, [8] - [9]", pictures: [["E Horn 1", "1175"], ["E Horn 2", "1176"], ["D Horn 3", "1177"]]),
    Excerpt(id: 62, description: "Excerpt 4", measures: "Mov. II, [6] - 13 mm. after [6]", pictures: [["F Horn 1", "1178"], ["F Horn 2", "1179"], ["C Horn 3", "1180"]])
], mutes: "", videos: [
    ["Daniel Barenboim, Chicago Symphony Orchestra", "llB7NaWLUc4"],
    ["Daniel Barenboim, London Symphony Orchestra", "U_yxtaeFuEQ"],
    ["Kurt Masur", "jcb4dAvpOIs"],
    ["Paavo Järvi, Orchestre de Paris", "FVKb3DwPFA8"],
    ["Stéphane Denève, Brussels Philharmonic", "oJZmRe8onBM"],
    ["Vasily Petrenko, Israel Philharmonic", "1-YiERbdGsQ"],
])

let dvorak9 = Composition(id: 21, composer: "Antonín Dvořák", composerLast: "Dvořák", name: "Symphony No. 9", date: "1893", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 63, description: "Excerpt 1", measures: "Mov. I, mm. 16 - 27", pictures: [["E Horn 1", "1181"], ["E Horn 2", "1182"], ["C Horn 3", "1183"], ["C Horn 4", "1184"]]),
    Excerpt(id: 64, description: "Excerpt 2", measures: "Mov. I, 13 mm. after [6] - 6 mm. before [8]", pictures: [["E Horn 1", "1185"], ["E Horn 2", "1186"], ["C Horn 3", "1187"], ["C Horn 4", "1188"]]),
    Excerpt(id: 65, description: "Excerpt 3", measures: "Mov. II, 7 mm. before [2] - [2]", pictures: [["E Horn 1", "1189"], ["E Horn 2", "1190"]]),
    Excerpt(id: 66, description: "Excerpt 4", measures: "Mov. III, 6 mm. before [3] - 4 mm. before [4]", pictures: [["E Horn 1", "1191"], ["E Horn 2", "1192"], ["E Horn 3", "1193"], ["E Horn 4", "1194"]]),
    Excerpt(id: 67, description: "Excerpt 5", measures: "Mov. IV, mm. 1 - 25", pictures: [["E Horn 1", "1195"], ["E Horn 2", "1196"], ["E Horn 3", "1197"], ["E Horn 4", "1198"]]),
    Excerpt(id: 68, description: "Excerpt 6", measures: "Mov. IV, 8 mm. before [11] - [11]", pictures: [["E Horn 1", "1199"], ["E Horn 2", "1200"], ["E Horn 3", "1201"], ["E Horn 4", "1202"]])
], mutes: "Straight", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "jOofzffyDSA"],
    ["Ferenc Fricsay, Berliner Philharmoniker (With Score)", "oLWpgWuUaU4"],
    ["George Szell, The Cleveland Orchestra", "jxoygdpGET0"],
    ["Mariss Jansons, Symphonieorchester des Bayerischen Rundfunks", "9_BlhOJp8RY"],
    ["Sergiu Celibidache, Münchner Philharmoniker", "_9RT2nHD6CQ"],
    ["Wolfgang Sawallisch, Philadelphia Orchestra", "_JsTuICpqI8"]
])

let franckD = Composition(id: 22, composer: "César Franck", composerLast: "Franck", name: "Symphony in D Minor", date: "1888", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 69, description: "Excerpt 1", measures: "Mov. II, 7 mm. before [B] - [C]", pictures: [["F Horn 1", "1203"]])
], mutes: "", videos: [
    ["Kurt Masur, New York Philharmonic Orchestra", "r0W3fqfr2CY"],
    ["Leonard Bernstein, Orchestre National de France", "uosj6PZLKKE"],
    ["Marc Minkowski, Frankfurt Radio Symphony", "uRWFjK11lfw"],
    ["Marc Soustrot, University of Gothenburg Symphony Orchestra", "9srAs4ss2kU"],
    ["Pierre Monteux, Chicago Symphony Orchestra", "G7obO7XyyQc"],
    ["Ricardo Muti, Philadelphia Orchestra", "0nF6TobCyV4"],
    ["Sergiu Celibidache, Munich Philharmonic Orchestra", "ytdSWSE7zxo"],
])

let haydn31 = Composition(id: 23, composer: "Franz Joseph Haydn", composerLast: "Haydn", name: "Symphony No. 31", date: "1765", era: "Classical", genre: "Symphony", excerpts: [
    Excerpt(id: 70, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 16", pictures: [["D Horn 1", "1204"], ["D Horn 2", "1205"], ["D Horn 3", "1206"], ["D Horn 4", "1207"]]),
    Excerpt(id: 71, description: "Excerpt 2", measures: "Mov. II, mm. 1 - 16", pictures: [["D Horn 1", "1208"], ["D Horn 2", "1209"], ["G Horn 3", "1210"], ["G Horn 4", "1211"]]),
    Excerpt(id: 72, description: "Excerpt 3", measures: "Mov. II, mm. 36 - 41", pictures: [["D Horn 1", "1212"], ["D Horn 2", "1213"], ["G Horn 3", "1214"], ["G Horn 4", "1215"]]),
    Excerpt(id: 73, description: "Excerpt 4", measures: "Mov. III, Trio", pictures: [["D Horn 1", "1216"], ["D Horn 2", "1217"], ["D Horn 3", "1218"], ["D Horn 4", "1219"]]),
    Excerpt(id: 74, description: "Excerpt 5", measures: "Mov. IV, Variation IV", pictures: [["D Horn 1", "1220"], ["D Horn 2", "1221"], ["D Horn 3", "1222"], ["D Horn 4", "1223"]])
], mutes: "", videos: [
    ["Antal Doráti, Philharmonia Hungarica (With Score)", "Ar4LVTO7rnQ"],
    ["Charles Mackerras, Orchestra of St. Luke's", "2cs6akfXxHE"],
    ["Christopher Hogwood, The Academy of Ancient Music", "H30PPIqVsSU"],
    ["Neville Marriner", "WHTYyNIHJew"],
    ["Robert W. Butts, The Baroque Orchestra of New Jersey", "7TdsVIl18Ts"],
    ["Yoichiro Omaki, Bamberger Symphoniker", "rDJl5i8kjQI"],
])

let lisztLesPreludes = Composition(id: 24, composer: "Franz Liszt", composerLast: "Liszt", name: "Les préludes", date: "1855", era: "Romantic", genre: "Symphonic Poem", excerpts: [
    Excerpt(id: 75, description: "Excerpt 1", measures: "mm. 55 - 62", pictures: [["E Horn 1", "1224"]]),
    Excerpt(id: 76, description: "Excerpt 2", measures: "mm. 69 - 86", pictures: [["E Horn 1", "1225"], ["E Horn 2", "1226"], ["E Horn 3", "1227"], ["E Horn 4", "1228"]])
], mutes: "", videos: [
    ["Daniel Barenboim, Berlin Philharmoniker", "jb2bkVQwtBs"],
    ["Daniel Barenboim, West Eastern Divan Orchestra", "e3zbIG0MN4o"],
    ["Mark Gorenstein, Russian State Symphony Orchestra (With Score)", "IC20YIllemg"],
    ["Michel Plasson, Dresdner Philharmonie", "zDEem_aEttE"],
    ["Michel Plasson, Dresdner Philharmonie (With Score)", "o5r7AhGi4yE"],
    ["Wojciech Pławner, Symphony Orchestra of the Karol Szymanowski State Music School", "psCI_CQ9jaU"],
])

let mahler1 = Composition(id: 25, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 1", date: "1888", era: "Late Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 77, description: "Excerpt 1", measures: "Mov. I, 4 mm. before [2] - [3]", pictures: [["F Horn 1", "1229"], ["F Horn 2", "1230"], ["F Horn 4", "1231"]]),
    Excerpt(id: 78, description: "Excerpt 2", measures: "Mov. I, 4 mm. before [15] - 12 mm. after [15]", pictures: [["F Horn 1", "1232"], ["F Horn 2", "1233"], ["F Horn 3", "1234"], ["F Horn 4", "1235"]]),
    Excerpt(id: 79, description: "Excerpt 3", measures: "Mov. I, [25] - End", pictures: [["F Horn 1", "1236"], ["F Horn 2", "1237"], ["F Horn 3", "1238"], ["F Horn 4", "1239"]]),
    Excerpt(id: 80, description: "Excerpt 4", measures: "Mov. II, [13] - 4 mm. after [16]", pictures: [["F Horn 1", "1240"], ["F Horn 2", "1241"], ["F Horn 3", "1242"], ["F Horn 4", "1243"]]),
    Excerpt(id: 81, description: "Excerpt 5", measures: "Mov. III, [13] - [15]", pictures: [["F Horn 1", "1244"], ["F Horn 2", "1245"], ["F Horn 3", "1246"], ["F Horn 4", "1247"]]),
    Excerpt(id: 82, description: "Excerpt 6", measures: "Mov. IV, 8 mm. before [52] - End", pictures: [["F Horn 1", "1248"], ["F Horn 2", "1249"], ["F Horn 3", "1250"], ["F Horn 4", "1251"], ["F Horn 5", "1252"], ["F Horn 6", "1253"], ["F Horn 7", "1254"]])
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "cqVIMEQfEd4"],
    ["Claudio Abbado, Chicago Symphony Orchestra", "UUypHJHFBq4"],
    ["Daniel Harding, Royal Concertgebouw Orchestra Amsterdam", "_JXMFbGRyII"],
    ["Leonard Bernstein, Concertgebouw Orchestra (With Score)", "ypClfhEwwCw"],
    ["Leonard Bernstein, Vienna Philharmonic Orchestra", "cQFjDBFXN58"],
    ["Lorin Maazel, New York Philharmonic", "d-rou1r9A5o"],
    ["Lorin Maazel, Sinfónica de Galicia", "IC56kGOgscI"],
    ["Marin Alsop, Peabody Symphony Orchestra", "UkvYOTJg9sM"],
    ["Paul Haas, Boston University Tanglewood Institute", "xoxI02g57TU"],
    ["Yannick Nézet-Séguin, Symphonieorchester des Bayerischen Rundfunks", "K-Pwh5Y5z14"],
])

let mahler3 = Composition(id: 26, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 3", date: "1896", era: "Late Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 83, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 11", pictures: [["F Horn 1", "1255"], ["F Horn 2", "1256"], ["F Horn 3", "1257"], ["F Horn 4", "1258"], ["F Horn 5", "1259"], ["F Horn 6", "1260"], ["F Horn 7", "1261"], ["F Horn 8", "1262"]]),
    Excerpt(id: 84, description: "Excerpt 2", measures: "Mov. I, [29] - 2 mm. before [33] ", pictures: [["F Horn 1", "1263"], ["F Horn 2", "1264"], ["F Horn 3", "1265"], ["F Horn 4", "1266"], ["F Horn 5", "1267"], ["F Horn 6", "1268"], ["F Horn 7", "1269"], ["F Horn 8", "1270"]]),
    Excerpt(id: 85, description: "Excerpt 3", measures: "Mov. I, [39] - [40]", pictures: [["F Horn 1", "1271"], ["F Horn 2", "1272"]]),
    Excerpt(id: 86, description: "Excerpt 4", measures: "Mov. I, [51] - 3 mm. before [54]", pictures: [["F Horn 1", "1273"], ["F Horn 2", "1274"], ["F Horn 3", "1275"], ["F Horn 4", "1276"], ["F Horn 5", "1277"], ["F Horn 6", "1278"], ["F Horn 7", "1279"], ["F Horn 8", "1280"]]),
    Excerpt(id: 87, description: "Excerpt 5", measures: "Mov. I, [55] - 4 mm. before [57]", pictures: [["F Horn 1", "1281"], ["F Horn 2", "1282"], ["F Horn 3", "1283"], ["F Horn 4", "1284"], ["F Horn 5", "1285"], ["F Horn 6", "1286"], ["F Horn 7", "1287"], ["F Horn 8", "1288"]])
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra", "oSBfEPAnDsY"],
    ["Bernard Haitink, Koninklijk Concertgebouworkest", "XYNk8VOGKa8"],
    ["Claudio Abbado, Lucerne Festival Orchestra", "Xplx64LVENg"],
    ["Jukka-Pekka Saraste, WDR Sinfonieorchester Köln", "Cjp-n6xS1CE"],
    ["Leonard Bernstein, Vienna Philharmonic Orchestra", "1AwFutIcnrU"],
    ["Semyon Bychkov, WDR Sinfonieorchester Köln (With Score)", "pRhQhUtOpPI"]
])

let mahler5 = Composition(id: 27, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 5", date: "1902", era: "Late Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 88, description: "Excerpt 1", measures: "Mov. I, [3] - [4]", pictures: [["F Horn 1", "1289"], ["F Horn 2", "1290"], ["F Horn 3", "1291"], ["F Horn 4", "1292"], ["F Horn 5", "1293"], ["F Horn 6", "1294"]]),
    Excerpt(id: 89, description: "Excerpt 2", measures: "Mov. I, 9 mm. after [8] - [9]", pictures: [["F Horn 1", "1295"], ["F Horn 2", "1296"], ["F Horn 3", "1297"], ["F Horn 4", "1298"], ["F Horn 5", "1299"], ["F Horn 6", "1300"]]),
    Excerpt(id: 90, description: "Excerpt 3", measures: "Mov. III, Beginning - [2]", pictures: [["F Horn obligato", "1301"], ["F Horn 1", "1302"], ["F Horn 2", "1303"], ["F Horn 3", "1304"], ["F Horn 4", "1305"], ["F Horn 5", "1306"]]),
    Excerpt(id: 91, description: "Excerpt 4", measures: "Mov. III, 18 mm. after [8] - [11]", pictures: [["F Horn obligato", "1307"], ["F Horn 1", "1308"], ["F Horn 2", "1309"], ["F Horn 3", "1310"], ["F Horn 4", "1311"], ["F Horn 5", "1312"]]),
    Excerpt(id: 92, description: "Excerpt 5", measures: "Mov. III, 15 mm. before [12] - 9 mm. after [12]", pictures: [["F Horn obligato", "1313"], ["F Horn 3", "1314"], ["F Horn 5", "1315"]]),
    Excerpt(id: 93, description: "Excerpt 6", measures: "Mov. III, 4 mm. before [21] - [24]", pictures: [["F Horn obligato", "1316"], ["F Horn 1", "1317"], ["F Horn 2", "1318"], ["F Horn 3", "1319"], ["F Horn 4", "1320"], ["F Horn 5", "1321"]]),
    Excerpt(id: 94, description: "Excerpt 7", measures: "Mov. III, 9 mm. after [30] - End", pictures: [["F Horn obligato", "1322"], ["F Horn 1", "1323"], ["F Horn 2", "1324"], ["F Horn 3", "1325"], ["F Horn 4", "1326"], ["F Horn 5", "1327"]])
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "fEGNNuEM3Fc"],
    ["Bernard Haitink, Koninklijk Concertgebouworkest", "MruTSRVecMo"],
    ["Christoph Eschenbach, Sinfónica de Galicia", "1tCk6nOOdzI"],
    ["Claudio Abbado, Lucerne Festival Orchestra", "vOvXhyldUko"],
    ["Gustavo Dudamel, Simón Bolívar Symphony Orchestra", "1F5G9JngqZY"],
    ["Leonard Bernstein, Wiener Philharmoniker", "6EJn43FEmjo"],
    ["Leonard Bernstein, Wiener Philharmoniker (With Score)", "nO0nytFsumo"],
    ["Valery Gergiev, World Orchestra for Peace", "UjmthMDpyco"],
])

let mahler9 = Composition(id: 28, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 9", date: "1910", era: "Late Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 95, description: "Excerpt 1", measures: "Mov. I, mm. 4 - 6 mm. after [2]", pictures: [["F Horn 2", "1328"], ["F Horn 4", "1329"]]),
    Excerpt(id: 96, description: "Excerpt 2", measures: "Mov. I, offen after [16] - Nicht merh so langsam", pictures: [["F Horn 1", "1330"]])
], mutes: "", videos: [
    ["Bernard Haitink, Concertgebouw Orchestra", "RjYs99atLUI"],
    ["정명훈 (Chung Myung-Whun), Concergebouworkest", "7NKvBNliyN8"],
    ["Claudio Abbado, Lucerne Festival Orchestra", "udhHFt--10Q"],
    ["Daniel Barenboim, Staatskapelle Berlin", "RlGe8bsdpB8"],
    ["Daniele Gatti, Vienna Philharmonic Orchestra", "Q1VjTuVntGE"],
    ["Gustavo Dudamel, Los Angeles Philharmonic", "3GwrgASjQ9I"],
    ["Leonard Bernstein, Berlin Philharmonic Orchestra (With Score)", "ah3mcaRpc9Q"],
    ["Leonard Bernstein, Vienna Philharmonic Orchestra", "IoNEeKJ2x44"]
])

let mendelssohnMidsummer = Composition(id: 29, composer: "Felix Mendelssohn", composerLast: "Mendelssohn", name: "A Midsummer Night's Dream", date: "1842", era: "Romantic", genre: "Incidental Music", excerpts: [
    Excerpt(id: 97, description: "Excerpt 1", measures: "No. 7, Beginning - 4 mm. before [A]", pictures: [["E Horn 1", "1331"], ["E Horn 2", "1332"]]),
    Excerpt(id: 98, description: "Excerpt 2", measures: "No. 7, [C] - End", pictures: [["E Horn 1", "1333"], ["E Horn 2", "1334"]])
], mutes: "", videos: [
    ["Alexis Hauser, McGill Symphony Orchestra", "zrhbm-kaxpk"],
    ["András Vass, Pannon Philharmonic Orchestra", "vQUrs0V4syc"],
    ["Avner Biron, The Israel Camerata Jerusalem Orchestra", "H2wYyTZKb6Q"],
    ["Francesco d'Avalos, Philharmonia Orchestra", "mqOY-02XAFk"],
    ["Paavo Järvi, Frankfurt Radio Symphony Orchestra", "njdTB6HxTj8"],
    ["Seiji Ozawa, Berlin Philharmonic", "yijwRZ6eqe0"],
    ["Walter Weller, Royal Scottish Orchestra", "gJs4KkUxN2Y"]
])

let mendelssohn3 = Composition(id: 30, composer: "Felix Mendelssohn", composerLast: "Mendelssohn", name: "Symphony No. 3", date: "1842", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 99, description: "Excerpt 1", measures: "Mov. II, 16 mm. after [A] - [B]", pictures: [["C Horn 1", "1335"], ["C Horn 2", "1336"], ["F Horn 3", "1337"], ["F Horn 4", "1338"]]),
    Excerpt(id: 100, description: "Excerpt 2", measures: "Mov. II, 10 mm. before [F] - 3 mm. after [G]", pictures: [["C Horn 1", "1339"], ["C Horn 2", "1340"], ["F Horn 3", "1341"], ["F Horn 4", "1342"]]),
    Excerpt(id: 101, description: "Excerpt 3", measures: "Mov. III, 5 mm. after [D] - 4 mm. before [E]", pictures: [["C Horn 1", "1343"], ["C Horn 2", "1344"], ["D Horn 3", "1345"], ["D Horn 4", "1346"]]),
    Excerpt(id: 102, description: "Excerpt 4", measures: "Mov. IV, mm. 396 - End", pictures: [["A Horn 1", "1347"], ["A Horn 2", "1348"], ["D Horn 3", "1349"], ["D Horn 4", "1350"]])
], mutes: "", videos: [
    ["Claudio Abbado, London Symphony Orchestra (With Score)", "8YT5KCVrBDU"],
    ["Herbert von Karajan, Berliner Philharmoniker", "newJOqUYPBc"],
    ["Kurt Masur, Gewandhausorchestra", "Q-zoNEO55yU"],
    ["Leonard Bernstein, New York Philharmonic", "hPM14CM8HUs"],
    ["Nikolaus Harnoncourt, Chamber Orchestra of Europe", "aeoxTvgEK0U"],
    ["Otto Klemperer, Philharmonia Orchestra", "4nP0gqKmWuY"],
    ["Rumon Gamba, Orquesta Sinfónica de Galicia", "FbH95mO_o3A"],
    ["Sir Georg Solti, Chicago Symphony Orchestra", "vRe3zSKolIY"],
])

let mozart29 = Composition(id: 31, composer: "Wolfgang Amadeus Mozart", composerLast: "Mozart", name: "Symphony No. 29", date: "1774", era: "Classical", genre: "Symphony", excerpts: [
    Excerpt(id: 103, description: "Excerpt 1", measures: "Mov. IV, mm. 155 - End", pictures: [["A Horn 1", "1351"], ["A Horn 2", "1352"]])
], mutes: "", videos: [
    ["Christoph Koncz, Ensemble Philmusica Tokyo", "bPP7GAMDUIo"],
    ["Claudio Abbado, Berliner Philharmoniker", "9U3tja1CmCw"],
    ["Herbert von Karajan, Berliner Philharmoniker", "3nGr4QAXKkM"],
    ["Jelena Ristic, Concertgebouw Chamber Orchestra", "X3j5f9ggN-4"],
    ["John Eliot Gardiner", "BAn66xqaj-c"],
    ["Trevor Pinnock, The English Concert", "PjvYa9qPY-w"],
])

let mozart40 = Composition(id: 32, composer: "Wolfgang Amadeus Mozart", composerLast: "Mozart", name: "Symphony No. 40", date: "1788", era: "Classical", genre: "Symphony", excerpts: [
    Excerpt(id: 104, description: "Excerpt 1", measures: "Mov. III, Trio", pictures: [["G Horn 1", "1353"], ["G Horn 2", "1354"]])
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "QyQ-POuTNn8"],
    ["Anzor Kinkladze, Georgian SIMI Festival Orchestra", "-hJf4ZffkoI"],
    ["Czech National Symphony Orchestra (With Score)", "BfcXoB9y4rc"],
    ["Julien Salemkour Staatskapelle Berlin", "wqkXqpQMk2k"],
    ["Leonard Bernstein, Boston Symphony Orchestra", "p8bZ7vm4_6M"],
    ["Sir Simon Rattle, Berliner Philharmoniker", "0sGqkMU-mGQ"],
])

let rimskyKorsakovScheherazade = Composition(id: 33, composer: "Nikolay Rimsky-Korsakov", composerLast: "Rimsky-Korsakov", name: "Scheherazade", date: "1888", era: "Romantic", genre: "Suite", excerpts: [
    Excerpt(id: 105, description: "Excerpt 1", measures: "Mov. II, [K] - [L]", pictures: [["F Horn 1", "1355"], ["F Horn 2", "1356"], ["F Horn 3", "1357"], ["F Horn 4", "1358"]]),
    Excerpt(id: 106, description: "Excerpt 2", measures: "Mov. II, 21 mm. after [Q] - End", pictures: [["F Horn 1", "1359"], ["F Horn 2", "1360"], ["F Horn 3", "1361"], ["F Horn 4", "1362"]]),
    Excerpt(id: 107, description: "Excerpt 3", measures: "Mov. IV, [U] - [V]", pictures: [["F Horn 1", "1363"], ["F Horn 2", "1364"], ["F Horn 3", "1365"], ["F Horn 4", "1366"]])
], mutes: "", videos: [
    ["Eugene Ormandy, Philadelphia Orchestra", "LEN5ObBND88"],
    ["Leif Segerstam, Sinfónica de Galicia", "zY4w4_W30aQ"],
    ["Nejc Bečan, Gimnazija Kranj Symphony Orchestra", "17lEx0ytE_0"],
    ["Valery Gergiev, Vienna Philharmonic", "SQNymNaTr-Y"],
    ["Yevgeny Svetlanov, USSR State Symphony Orchestra", "jR_Q7NbLzyU"],
    ["Yuri Temirkanov, Saint-Petersburg Philharmonic Orchestra", "vdnUBQT5Bqw"],
])

let rossiniSemiramide = Composition(id: 34, composer: "Gioacchino Rossini", composerLast: "Rossini", name: "Semiramide", date: "1823", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 108, description: "Excerpt 1", measures: "Overture, [B] - [C]", pictures: [["D Horn 1", "1367"], ["D Horn 2", "1368"], ["D Horn 3", "1369"], ["D Horn 4", "1370"]])
], mutes: "", videos: [
    ["Claudio Abbado, London Symphony Orchestra", "5PXmvKZFCLk"],
    ["Herbert von Karajan, Berliner Philharmoniker", "b72Zq0nduk8"],
    ["Marco Armiliato, Berlin Philharmonic", "bTauHYkul3c"],
    ["Michael Halasz, Zagreb Festival Orchestra", "OGnbT9ulCCo"],
    ["Riccardo Muti, Wiener Philharmoniker", "EwSwN1rl5wU"],
])

let saintSaens3 = Composition(id: 35, composer: "Camille Saint-Saëns", composerLast: "Saint-Saëns", name: "Symphony No. 3", date: "1886", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 109, description: "Excerpt 1", measures: "Mov. I, 4 mm. before [N] - 16 mm. after [N]", pictures: [["F Horn 3", "1371"], ["F Horn 4", "1372"]]),
    Excerpt(id: 110, description: "Excerpt 2", measures: "Mov. I, [Q] - [S]", pictures: [["F Horn 3", "1373"]]),
    Excerpt(id: 111, description: "Excerpt 3", measures: "Mov. II, 13 mm. after [BB] - [CC]", pictures: [["F Horn 3", "1374"], ["F Horn 4", "1375"]])
], mutes: "", videos: [
    ["Charles Dutoit, Orchestre symphonique de Montréal", "Vo24ojUaKCg"],
    ["Conrad van Alphen, Sinfonia Rotterdam", "8cnDMQFt3TQ"],
    ["Daniel Barenboim, Orchestre de Paris", "V-bTxNw4ny8"],
    ["Mariss Jansons, Symphonieorchester des Bayerischen Rundfunks", "y60L-N9iY9k"],
    ["Paavo Järvi, Orchestre de Paris", "ZWCZq33BrOo"],
    ["Paavo Järvi, Philharmonie de Paris", "TPvhPHIdjs0"],
])

let schubert9 = Composition(id: 36, composer: "Franz Schubert", composerLast: "Schubert", name: "Symphony No. 9", date: "1828", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 112, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 8", pictures: [["C Horn 1", "1376"], ["C Horn 2", "1377"]])
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "z9RTvJS8F64"],
    ["John Eliot Gardiner, Wiener Philarmoniker", "TPpvJnwf5BU"],
    ["Josef Krips, London Symphony Orchestra", "Vi85_BDRFXo"],
    ["Leonard Bernstein, Symphonieorchester des Bayerischen Rundfunks", "hCuC8--m-98"],
    ["Lorin Maazel, Bavarian Radio Symphony", "5kQTHhcIWnI"],
    ["Riccardo Muti, Vienna Philharmonic Orchestra", "bA6pzRx6gBE"],
    ["Seiji Ozawa, Saito Kinen Orchestra", "X4qN_dE39VQ"],
    ["Wolfgang Sawallisch, Wiener Philharmoniker", "kNocKxKd8-I"],
])

let schumann3 = Composition(id: 37, composer: "Robert Schumann", composerLast: "Schumann", name: "Symphony No. 3", date: "1850", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 113, description: "Excerpt 1", measures: "Mov. I, 6 mm. before [A] - 17 mm. after [A]", pictures: [["E♭ Horn 1", "1378"], ["E♭ Horn 2", "1379"], ["E♭ Horn 3", "1380"], ["E♭ Horn 4", "1381"]]),
    Excerpt(id: 114, description: "Excerpt 2", measures: "Mov. I, 4 mm. before [L] - 8 mm. before [M]", pictures: [["E♭ Horn 1", "1382"], ["E♭ Horn 2", "1383"]]),
    Excerpt(id: 115, description: "Excerpt 3", measures: "Mov. II, mm. 25 - 48", pictures: [["F Horn 1", "1384"], ["F Horn 2", "1385"], ["C Horn 3", "1386"], ["C Horn 4", "1387"]]),
    Excerpt(id: 116, description: "Excerpt 4", measures: "Mov. IV, mm. 1 - 8", pictures: [["E♭ Horn 1", "1388"], ["E♭ Horn 2", "1389"], ["E♭ Horn 3", "1390"], ["E♭ Horn 4", "1391"]])
], mutes: "", videos: [
    ["Giuseppe Sinopoli, Staatskapelle Dresden", "jcXkhEFXQGE"],
    ["Leonard Bernstein, New York Philharmonic", "TmKfrccpny0"],
    ["Leonard Bernstein, Wiener Philharmoniker", "OfR8d3aJKEs"],
    ["Marek Janowski, Frankfurt Radio Symphony", "3lRdCGIp-rg"],
    ["Paavo Järvi, NHK Symphony Orchestra", "PEuM0c5U5W8"],
    ["Riccardo Muti, Berliner Philharmoniker", "G8cIVO8KmcU"],
    ["Sergiu Celibidache, Munich Philharmonic Orchestra", "7GB8K5uSIJo"],
])

let straussDonJuan = Composition(id: 38, composer: "Richard Strauss", composerLast: "Strauss", name: "Don Juan", date: "1889", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 117, description: "Excerpt 1", measures: "20 mm. after [D] - 1 mm. before [F]", pictures: [["E Horn 1", "1392"], ["E Horn 2", "1393"], ["E Horn 3", "1394"], ["E Horn 4", "1395"]]),
    Excerpt(id: 118, description: "Excerpt 2", measures: "17 mm. before [O] - [P]", pictures: [["F Horn 1", "1396"], ["F Horn 2", "1397"], ["F Horn 3", "1398"], ["F Horn 4", "1399"]]),
    Excerpt(id: 119, description: "Excerpt 3", measures: "10 mm. before [W] - [CC]", pictures: [["E Horn 1", "1400"], ["E Horn 2", "1401"], ["E Horn 3", "1402"], ["E Horn 4", "1403"]])
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony", "XG4uBRBMdzY"],
    ["Georg Solti, Chicago Symphony Orchestra", "_um5yLJx-RM"],
    ["Herbert von Karajan, Osaka Philharmonic Orchestra", "F_V5KhUxWG8"],
    ["Thomas Schippers, Cincinnati Symphony Orchestra (With Score)", "8woshq-F21s"],
    ["Wolfgang Sawallisch, Philadelphia Orchestra", "KP89c9KfetA"]
])

let straussDonQuixote = Composition(id: 39, composer: "Richard Strauss", composerLast: "Strauss", name: "Don Quixote", date: "1897", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 120, description: "Excerpt 1", measures: "Introduction, [7] - [12]", pictures: [["F Horn 1", "1404"], ["F Horn 2", "1405"], ["F Horn 3", "1406"], ["F Horn 4", "1407"], ["F Horn 5", "1408"], ["F  Horn 6", "1409"]]),
    Excerpt(id: 121, description: "Excerpt 2", measures: "Var. III, 2 mm. before [34] - 2 mm. before [35]", pictures: [["F Horn 1", "1410"], ["F Horn 2", "1411"], ["F Horn 3", "1412"], ["F Horn 4", "1413"], ["F Horn 5", "1414"], ["F  Horn 6", "1415"]]),
    Excerpt(id: 122, description: "Excerpt 3", measures: "Var. V, 3 mm. before [48] - [48]", pictures: [["F Horn 4", "1416"]]),
    Excerpt(id: 123, description: "Excerpt 4", measures: "Var. VII, [57] - 4 mm. after [58]", pictures: [["F Horn 1", "1417"], ["F Horn 2", "1418"], ["F Horn 3", "1419"], ["F Horn 4", "1420"], ["F Horn 5", "1421"], ["F Horn 6", "1422"]]),
    Excerpt(id: 124, description: "Excerpt 5", measures: "Var. VIII. 6 mm. before [59] - 8 mm. after [62]", pictures: [["F Horn 1", "1423"], ["F Horn 2", "1424"], ["F Horn 3", "1425"], ["F Horn 4", "1426"], ["F Horn 5", "1427"], ["F Horn 6", "1428"]])
], mutes: "", videos: [
    ["Bernard Haitink, Symphonieorchester des Bayerischen Rundfunks", "_u5Zq769TJ4"],
    ["Dennis Russell Davies, Orquesta Sinfónica de Galicia", "Bo7KAGhrrIs"],
    ["Herbert von Karajan, Berliner Philharmoniker", "_6P1WHXKAlk"],
    ["Lorin Maazel, Symphonieorchester des Bayerischen Rundfunks", "-7EwD2Vz8fw"],
    ["George Pehlivanian, Orchestra dell'Accademia Nazionale di Santa Cecilia (With Score)", "5PvCGu2Ue0U"],
    ["Seiji Ozawa, Boston Symphony Orchestra", "Un6zfgAJi8I"],
    ["Wolfgang Sawallisch, NHK Symphony", "dJNEuvfeshg"],
])

let straussHeldenleben = Composition(id: 40, composer: "Richard Strauss", composerLast: "Strauss", name: "Ein Heldenleben", date: "1898", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 125, description: "Excerpt 1", measures: "Beginning - [6]", pictures: [["F Horn 1", "1429"], ["F Horn 2", "1430"], ["F Horn 3", "1431"], ["F Horn 4", "1432"], ["F Horn 5", "1433"], ["F Horn 6", "1434"], ["F Horn 7", "1435"], ["F Horn 8", "1436"]]),
    Excerpt(id: 126, description: "Excerpt 2", measures: "[8] - 4 mm. after [11]", pictures: [["F Horn 1", "1437"], ["F Horn 2", "1438"], ["F Horn 3", "1439"], ["F Horn 4", "1440"], ["F Horn 5", "1441"], ["F  Horn 6", "1442"], ["F Horn 7", "1443"], ["F Horn 8", "1444"]]),
    Excerpt(id: 127, description: "Excerpt 3", measures: "[74] - [80]", pictures: [["F Horn 1", "1445"], ["F Horn 2", "1446"], ["F Horn 3", "1447"], ["F Horn 4", "1448"], ["F Horn 5", "1449"], ["F Horn 6", "1450"], ["F Horn 7", "1451"], ["F Horn 8", "1452"]]),
    Excerpt(id: 128, description: "Excerpt 4", measures: "[94] - [98]", pictures: [["F Horn 1", "1453"], ["F Horn 2", "1454"], ["F Horn 3", "1455"], ["F Horn 4", "1456"], ["F Horn 5", "1457"], ["F Horn 6", "1458"], ["F Horn 7", "1459"], ["F Horn 8", "1460"]]),
    Excerpt(id: 129, description: "Excerpt 5", measures: "[107] - End", pictures: [["F Horn 1", "1461"], ["F Horn 2", "1462"], ["F Horn 3", "1463"], ["F Horn 4", "1464"], ["F Horn 5", "1465"], ["F Horn 6", "1466"], ["F Horn 7", "1467"], ["F Horn 8", "1468"]])
], mutes: "", videos: [
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra (With Score)", "mE-mZUEXWsg"],
    ["Andrés Orozco-Estrada, Frankfurt Radio Symphony Orchestra", "Us1jfC7bMpA"],
    ["Herbert von Karajan, Berlin Philharmonic Orchestra", "nu5AXJGmkJk"],
    ["Manfred Honeck, Pittsburgh Symphony Orchestra", "NGlzlNlnw_w"],
    ["Mariss Jansons, Symphonie-Orchestrer des Bayerischen Rundfunks", "_2-dLoWorUs"],
    ["Valery Gergiev, Munich Philharmonic Orchestra", "m-aaCruKsLI"],
])

let straussSinfoniaDomestica = Composition(id: 41, composer: "Richard Strauss", composerLast: "Strauss", name: "Sinfonia Domestica", date: "1903", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 130, description: "Excerpt 1", measures: "[29] - [32]", pictures: [["F Horn 1", "1469"], ["F Horn 2", "1470"], ["E Horn 3", "1471"], ["E Horn 4", "1472"], ["E Horn 5", "1473"], ["E Horn 6", "1474"]]),
    Excerpt(id: 131, description: "Excerpt 2", measures: "[72] - [74]", pictures: [["E Horn 1", "1475"], ["E Horn 2", "1476"], ["E Horn 3", "1477"], ["E Horn 4", "1478"], ["E Horn 5", "1479"], ["E Horn 6", "1480"], ["E Horn 7", "1481"], ["E Horn 8", "1482"]]),
    Excerpt(id: 132, description: "Excerpt 3", measures: "[97] - 2 mm. after [103]", pictures: [["E Horn 1", "1483"], ["F Horn 2", "1484"], ["E Horn 3", "1485"], ["E Horn 4", "1486"], ["F Horn 5", "1487"], ["F Horn 6", "1488"], ["F Horn 7", "1489"], ["F Horn 8", "1490"]]),
    Excerpt(id: 133, description: "Excerpt 4", measures: "[144] - [155]", pictures: [["F Horn 1", "1491"], ["F Horn 2", "1492"], ["F Horn 3", "1493"], ["F Horn 4", "1494"], ["F Horn 5", "1495"], ["F Horn 6", "1496"], ["F Horn 7", "1497"], ["F Horn 8", "1498"]])
], mutes: "", videos: [
    ["George Szell, Cleveland Orchestra", "kmDdqZUYjCw"],
    ["George Szell, Cleveland Orchestra (With Score)", "ETQWcUkLGRE"],
    ["Fritz Reiner, Chicago Symphony Orchestra", "vsWQuTnknQY"],
    ["Lorin Maazel, Royal Concertgebouw Orchestra", "8sjBKiWQWNk"],
    ["Marlan Carlson, Corvallis-OSU Symphony", "rghaBnAbMpQ"],
    ["Neeme Järvi, Scottish National Orchestra", "zvymcR85HPY"],
])

let straussEulenspiegel = Composition(id: 42, composer: "Richard Strauss", composerLast: "Strauss", name: "Till Eulenspiegels lustige Streiche", date: "1895", era: "Late Romantic", genre: "Tone Poem", excerpts: [
    Excerpt(id: 134, description: "Excerpt 1", measures: "Beginning - [1]", pictures: [["F Horn 1", "1499"]]),
    Excerpt(id: 135, description: "Excerpt 2", measures: "11 mm. after [28] - [31]", pictures: [["F Horn 1", "1500"], ["F Horn 2", "1501"], ["F Horn 3", "1502"], ["F Horn 4", "1503"]]),
    Excerpt(id: 136, description: "Excerpt 3", measures: "[31] - 4 mm. before [37]", pictures: [["F Horn 1", "1504"], ["F Horn 2", "1505"], ["F Horn 3", "1506"], ["F Horn 4", "1507"]]),
    Excerpt(id: 137, description: "Excerpt 4", measures: "[37] - [38]", pictures: [["F Horn 1", "1508"], ["F Horn 2", "1509"], ["F Horn 3", "1510"], ["F Horn 4", "1511"], ["F Horn 5", "1512"], ["F Horn 6", "1513"], ["F Horn 7", "1514"], ["F Horn 8", "1515"]])
], mutes: "", videos: [
    ["Christoph von Dohnányi, NDR Elbphilharmonie Orchester", "EMcQQFWAnA0"],
    ["Georg Solti, Wiener Philharmoniker", "ZpA47nVfgBY"],
    ["Herbert von Karajan, Berliner Philharmoniker", "99qWgSItaNQ"],
    ["Leonard Bernstein, New York Philharmonic Orchestra (With Score)", "1zbCfP9wGt4"],
    ["Lorin Maazel, Symphonieorchester des Bayerischen Rundfunk (With Score)", "QV5r9KG1eyc"],
    ["Richard Strauss, Vienna Philharmonic", "IouFZBgEG3s"],
    ["Masahiko Tanaka, Waseda Symphony Orchestra", "S7O9Oa22nsQ"],
    ["Zubin Mehta, New York Philharmonic", "ZU556MvQN6c"],
])

let tchaikovsky4 = Composition(id: 43, composer: "Pyotr Tchaikovsky", composerLast: "Tchaikovsky", name: "Symphony No. 4", date: "1878", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 138, description: "Excerpt 1", measures: "Mov. I, Beginning - 6 mm. after [A]", pictures: [["F Horn 1", "1516"], ["F Horn 2", "1517"], ["F Horn 3", "1518"], ["F Horn 4", "1519"]]),
    Excerpt(id: 139, description: "Excerpt 2", measures: "Mov. I, [I] - [L]", pictures: [["F Horn 1", "1520"], ["F Horn 2", "1521"], ["F Horn 3", "1522"], ["F Horn 4", "1523"]]),
    Excerpt(id: 140, description: "Excerpt 3", measures: "Mov. I, 12 mm. before [R] - [R]", pictures: [["F Horn 1", "1524"], ["F Horn 2", "1525"]])
], mutes: "", videos: [
    ["Carlos Miguel Prieto, Frankfurt Radio Symphony", "Y7G5ithbFys"],
    ["Christian Lindberg, The Arctic Philharmonic Orchestra", "ieYFdj1wI_M"],
    ["Gennady Rozhdestvensky, USSR State TV and Radio Symphony Orchestra (With Score)", "_Xldfaf4NGw"],
    ["Herbert Von Karajan, Vienna Philharmonic Orchestra", "cnXd4ZqN_c8"],
    ["Leonard Bernstein, New York Philharmonic", "4d1Me2gRZIQ"],
])

let tchaikovsky5 = Composition(id: 44, composer: "Pyotr Tchaikovsky", composerLast: "Tchaikovksy", name: "Symphony No. 5", date: "1888", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 141, description: "Excerpt 1", measures: "Mov. II, 7 mm. before [A] – 8 mm. after [A]", pictures: [["F Horn 1", "1526"]]),
    Excerpt(id: 142, description: "Excerpt 2", measures: "Mov. IV, 8 mm. after [A] - 7 mm. after [C]", pictures: [["F Horn 1", "1527"], ["F Horn 2", "1528"], ["F Horn 3", "1529"], ["F Horn 4", "1530"]])
], mutes: "", videos: [
    ["Elim Chan, Netherlands Philharmonic Orchestra", "xFf5GA2UpMs"],
    ["Emmanuel Krivine, Orchestre National de France", "Z1hFlRVB7DI"],
    ["Herbert von Karajan, Berliner Philharmoniker", "NeNeQrUXymg"],
    ["Leonard Bernstein, Boston Symphony Orchestra", "w2JBT0HC98I"],
    ["Leonard Bernstein, New York Philharmonic Orchestra (With Score)", "4_PSjr47AUo"],
    ["Manfred Honeck, Frankfurt Radio Symphony", "a_B02BZp-5Y"],
    ["Valery Gergiev, Mariinsky Orchestra", "nmMLFvjkcEs"],
    ["Vasily Petrenko, The Oslo Philharmonic", "JUk0WZVCnk4"],
])

let wagnerWalkure = Composition(id: 45, composer: "Richard Wagner", composerLast: "Wagner", name: "Die Walküre", date: "1870", era: "Late Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 143, description: "Excerpt 1", measures: "Act I Scene III, 6 mm. before [49] - 3 mm. after [50]", pictures: [["E and F Horn 1 and 2", "1531"], ["E Horn 3 and 4", "1532"]]),
    Excerpt(id: 144, description: "Excerpt 2", measures: "Act II Scene II, 10 mm. before [30] - 5 mm. after [31]", pictures: [["E Horn 2", "1533"]]),
    Excerpt(id: 145, description: "Excerpt 3", measures: "Act II Scene II, 3 mm. before [41] - 4 mm. before [42]", pictures: [["F Horn 1 and 2", "1534"], ["F Horn 3 and 4", "1535"]]),
    Excerpt(id: 146, description: "Excerpt 4", measures: "Act III Introduction, [8] - 3 mm. after [12]", pictures: [["E Horn 1 and 2", "1536"], ["E Horn 3 and 4", "1537"], ["E Horn 5 and 6", "1538"]])
], mutes: "", videos: [
    ["Adam Fischer, Vienna State Opera", "NMTc4t6RHmw"],
    ["Georg Solti, Vienna Philharmonic Orchestra (With Score)", "Qx55EmiFadg"],
    ["Herbert von Karajan,  Berlin Philharmonic", "w8v6rlasLyw"],
    ["Marek Janowski, Bayreuth Festival Orchestra", "80KUzCA71tg"],
    ["Zubin Mehta, Valencian Community Orchestra", "_C-0hH5G8MU"],
])

let wagnerRheingold = Composition(id: 46, composer: "Richard Wagner", composerLast: "Wagner", name: "Das Rheingold", date: "1854", era: "Late Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 147, description: "Excerpt 1", measures: "Prelude, mm. 17 - 52", pictures: [["E♭ Horn 8", "1539"]])
], mutes: "", videos: [
    ["China National Opera House", "9d-3nqzKTKU"],
    ["Georg Solti, Vienna Philharmonic Orchestra (With Score)", "loTqK2Fyrrw"],
    ["Georg Solti, Vienna Philharmonic Orchestra (With Score)", "VsR11uFzBJg"],
    ["Pierre Boulez", "3ZP-yXsNV2E"],
    ["Sir Simon Rattle, Orchestra of the Age of Enlightenment", "CUFWNKFajjA"],
    ["Zubin Mehta, Valencian Community Orchestra", "XgX14XYfYxQ"],
])

let wagnerGotterdammerung = Composition(id: 45, composer: "Richard Wagner", composerLast: "Wagner", name: "Götterdämmerung", date: "1874", era: "Late Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 148, description: "Excerpt 1", measures: "Act I, Short call", pictures: [["F Horn 1", "1540"]])
], mutes: "", videos: [
    ["Adam Fischer, Vienna State Opera", "kLly5R4gDiM"],
    ["Georg Solti, Vienna Philharmonic Orchestra (With Score)", "BQHtYVjCCF0"],
    ["Joseph Keilberth, Bayreuth Festival Orchestra", "KtQ40fqs6Kc"],
    ["Karl Böhm, Bayreuth Festival Orchestra", "9_TKIStwoQI"],
    ["Marek Janowski, Bayreuth Festival Orchestra", "ZKv8J_4jdSI"],
    ["Pierre Boulez, Bayreuth Festival Orchestra", "_ww4JHkloa8"],
    ["Zubin Mehta, Valencian Community Orchestra", "ebhrZZJ-mLg"]
])

let wagnerLohengrin = Composition(id: 46, composer: "Richard Wagner", composerLast: "Wagner", name: "Lohengrin", date: "1848", era: "Late Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 149, description: "Excerpt 1", measures: "Act II Scene III, 1 mm. after [30] - [32]", pictures: [["D Horn 1", "1541"], ["D Horn 2", "1542"], ["D Horn 3", "1543"], ["D Horn 4", "1544"]]),
    Excerpt(id: 150, description: "Excerpt 2", measures: "Prelude to Act III, Beginning - 1 mm. after [3]", pictures: [["G Horn 1", "1545"], ["G Horn 2", "1546"], ["G Horn 3", "1547"], ["G Horn 4", "1548"]])
], mutes: "", videos: [
    ["Andris Nelsons, Bayreuth Festival", "VXwSV0sjYzg"],
    ["Daniel Barenboim, Orchestra of the Milan Scala", "kSzkYafY0pM"],
    ["Georg Solti, Vienna Philharmonic Orchestra", "zUrXqwmf3ZU"],
    ["Silvio Varviso, Bayreuth Festival Orchestra and Chorus", "_ReY89_fM0g"],
])

let wagnerSigfried = Composition(id: 47, composer: "Richard Wagner", composerLast: "Wagner", name: "Siegfried", date: "1871", era: "Late Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 151, description: "Excerpt 1", measures: "Act II Scene II, Long call", pictures: [["F Horn 1", "1549"]])
], mutes: "", videos: [
    ["Adam Fischer, Vienna State Opera", "xlCtT5zSs2M"],
    ["Daniel Barenboim, Orchester der Bayreuther Festspiele", "KtLQS--VQF8"],
    ["Georg Solti, Vienna Philharmonic Orchestra (With Score)", "j5pATBWOsLc"],
    ["Marek Janowski, Bayreuth Festival Orchestra", "uxVPG5MkS4M"],
    ["Pierre Boulez, Bayreuther Festspiele", "sPHlpPwoUnA"],
    ["Zubin Mehta, Valencian Community Orchestra", "BaF8zdfS0q8"],
])

let weberFreischutz = Composition(id: 48, composer: "Carl Maria von Weber", composerLast: "Weber", name: "Der Freischütz", date: "1821", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 152, description: "Excerpt 1", measures: "Overture, mm. 10 - 25", pictures: [["F Horn 1", "1550"], ["F Horn 2", "1551"], ["C Horn 3", "1552"], ["C Horn 4", "1553"]])
], mutes: "", videos: [
    ["Carlos Kleiber, Staatskapelle Dresden", "pIhKnzgFsiU"],
    ["Carlos Kleiber, Südfunk-Sinfonieorchester", "9Umd7w5cECE"],
    ["Christoph Eschenbach, SWR Symphonieorchester", "QMSteKA1a_s"],
    ["Myung-Whun Chung, Teatro alla Scala", "s_o-hIEia5I"],
    ["Ondřej Vrabec, Czech Philharmonic Orchestra", "V9iaX9wWni4"],
])

let weberOberon = Composition(id: 49, composer: "Carl Maria von Weber", composerLast: "Weber", name: "Oberon", date: "1826", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 153, description: "Excerpt 1", measures: "Overture, Beginning - [A]", pictures: [["D Horn 1", "1554"]])
], mutes: "", videos: [
    ["Antoni Wit, New Zeland Symphony Orchestra", "aCyJjRvIeJA"],
    ["Bernard Haitink, Royal Opera House", "y2Eg7ra6fbQ"],
    ["Daniel Barenboim, Israel Philharmonic Orchestra", "LI4slVTrQh8"],
    ["Farkhad Khudyev, Frankfurt Radio Symphony Orchestra", "JLV9pPPaEiE"],
    ["Herbert von Karajan, Berliner Philharmoniker", "-oR7FZxEk0k"],
    ["Marek Janowski, Deutsches Symphonie-Orchester Berlin", "l2w896Ftc6U"],
])


//MARK: Composers

let bach = Composer(id: 0, name: "Johann Sebastian Bach", ipa: "joˈhan zeˈbastjan bɑx", image: 2000, country: "Germany", dates: "1685-1750", bio: "Johann Sebastian Bach was a German Baroque composer and musician. He is most well known for is keyboard works, and works for voice and orchestra. Bach was a master of counterpoint and harmonic organization and his influences in these fields continue to affect composers to this day.", excerpts: [
    bachBrandenburgConcerto, bachMassB
])

let beethoven = Composer(id: 1, name: "Ludwig Van Beethoven", ipa: "ˈlʊdvɪɡ væn ˈbeɪt(h)oʊvən", image: 2001, country: "Germany", dates: "1770-1827", bio: "Ludwig van Beethoven was a German composer and pianist. Beethoven began his compositional life firmly in the classical era, but was a key figure in the early romantic era. Beethoven grew to be mostly deaf in his lifetime, but never ceased composing. He was the first composer to incorporate trombones in a symphonic setting, and composed nine symphonies in his lifetime. He is considered to be one of the greatest composers of all time.", excerpts: [
    beethovenFidelio, beethoven2, beethoven3, beethoven6, beethoven7, beethoven8, beethoven9
])

let berlioz = Composer(id: 2, name: "Hector Berlioz", ipa: "ɛkˈtɔr bɛr liˌoʊz", image: 2002, country: "France", dates: "1803-1869", bio: "Hector Berlioz was a French Romantic composer, who gained his popularity through his unwillingness to accept traditional rules and formulas. He frequently employed extended techniques in many instruments, and developed his own forms and techniques for composition. He was internationally acclaimed as a conductor, and was also a prominant musical journalist.", excerpts: [
    berliozRomeoEtJuliet
])

let brahms = Composer(id: 3, name: "Johannes Brahms", ipa: "joˈhanəs ˈbʁaːms", image: 2003, country: "Germany", dates: "1833-1897", bio: "Johannes Brahms was one of the most famous composers of all time. He is most famous for his four symphonies, but he wrote for many diverse ensembles. Brahms was a perfectionist in all that he did, and was known to occaisionally destroy some of his work to prevent it from being seen by the outside world.", excerpts: [
    brahmsAcademic, brahmsPiano1, brahmsPiano2, brahms1, brahms2, brahms3, brahms4, brahmsVariations
])

let bruckner = Composer(id: 4, name: "Anton Bruckner", ipa: " 'antɔn ˈbʁʊknɐ", image: 2004, country: "Austria", dates: "1824-1896", bio: "Anton Bruckner was an Austrian organist, music theorist, and composer of the romantic era. He is best known for his symphonies and religious music. Bruckner was unlike other composers of his time, in that he was very a very humble man.", excerpts: [
    bruckner4, bruckner7
])

let dvorak = Composer(id: 5, name: "Antonín Dvořák", ipa: "ˈɑn tɔ nyin ˈdvɔr ʒɑk", image: 2005, country: "Austrian Empire", dates: "1841-1904", bio: "Dvořák was one of the first Czech composers to recieve worldwide recognition. Dvořák was an admirer of Richard Wagner, and took influence from him especially in his Operas. He frequently included folk music in his compositions, and his music often had nationalistic themes.", excerpts: [
    dvorakCello, dvorak9
])

let franck = Composer(id: 6, name: "César Franck", ipa: "seɪˈzar frɑŋk", image: 2006, country: "United Kingdom of the Netherlands (Now Belgium)", dates: "1822 - 1890", bio: "Franck studied music in Paris at a young age. After his studies, he returned to Belgium and gained a terrible reputation for his oratorio \"Ruth\", and moved to Paris where he became an organist and teacher. Later in life, he became the organist for the Basilica of Saint Clotilde, where he remained for the rest of his life, composing in his free time pieces that are now considered standard repetoire.", excerpts: [
    franckD
])

let haydn = Composer(id: 7, name: "Franz Joseph Haydn", ipa: "ˈfʁants ˈjoːzɛf ˈhaɪdn̩", image: 2007, country: "Austria", dates: "1732-1809", bio: "Haydn was a classical composer who is commonly known as \"The father of the Symphony\". He spent most of his life as a court musician for the Esterházy family. He was isolated in this role, with little to no contact with the rest of the music community, and was forced to create his own style because of this. Haydn was a prolific composer, producing 104 numbered symphonies and an immense amount of chamber music.", excerpts: [
    haydn31
])

let liszt = Composer(id: 8, name: "Franz Liszt", ipa: "ˈfɛrɛnt͡s ˈlist", image: 2008, country: "Hungary", dates: "1811-1886", bio: "Franz Liszt is regarded as one of the greatest pianists to ever live. A well known and travelled musician in his time, he invented what we now know as the recital, and set the precedent for memorizing solo compositions. Liszt also pioneered new paths in musical form and harmony, inventing the Symphonic Poem and made radical innovations in harmony.", excerpts: [
    lisztLesPreludes
])

let mahler = Composer(id: 9, name: "Gustav Mahler", ipa: "ˈgʊs tɑf ˈmɑ lər", image: 2009, country: "Austrian Empire", dates: "1860-1911", bio: "Mahler is one of the most popular composers of all time. In 2016, a BBC Music survey ranked three of his symphonies among the top ten symphonies of all time. His music continues to be among the top recorded and perfomed in all of classical music. During his day, he was also among one of the top conductors of his era, and was the first conductor of the New York Philharmonic Orchestra.", excerpts: [
    mahler1, mahler3, mahler5, mahler9
])

let mendellsohn = Composer(id: 10, name: "Felix Mendelssohn", ipa: "'fi lɪks 'mɛn dl sən", image: 2010, country: "Germany", dates: "1809-1947", bio: "Mendelssohn was born into a Jewish family, but was baptised Reformed Christian at the age of seven. He was known as a child prodigy, but his parents did not seek to capitalize on his talents. Well known as a composer, conductor, and organist, Mendelssohn helped to bring fame to the music of Bach.", excerpts: [
    mendelssohnMidsummer, mendelssohn3
])

let mozart = Composer(id: 11, name: "Wolfgang Amadeus Mozart", ipa: "ˈwʊlf gæŋ ˌæm əˈdeɪ əs ˈmoʊt sɑrt", image: 2011, country: "Germany", dates: "1756-1791", bio: "Mozart gained popularity as a pianist and composer at an early age. He gained employment as a court musician at the Salzburg court, but quickly lost interest and began traveling looking for other employment. In Vienna, he found great fame, but worked his whole life trying to achieve financial stability: a goal he was never able to achieve. Mozart's death is also very mysterious and controvercial.", excerpts: [
    mozart29, mozart40
])

let rimskyKorsakov = Composer(id: 12, name: "Nikolai Rimsky-Korsakov", ipa: "nʲɪkəˈlaj ˈrʲimskʲɪj ˈkorsəkəf", image: 2012, country: "Russia", dates: "1844-1908", bio: "Nikolai Rimsky-Korsakov was one of the most famous Russian composers. He was a master orchestrator, publishing a textbook on the subject using musical examples solely from his own compositions, and his most famous compositions are his orchestral works. Rimsky-Korsakov also spent a large portion of his musical life in association with the Russian military.", excerpts: [
    rimskyKorsakovScheherazade
])

let rossini = Composer(id: 13, name: "Gioachino Rossini", ipa: "dʒɔ ɑkˈki nɔ roʊˈsi ni", image: 2013, country: "Italy", dates: "1792-1868", bio: "Rossini was an Italian composer from the romantic era. His 39 operas gained him great success early in life, but he unexplainably gave up music almost entirely for the last 40 years of his life.", excerpts: [
    rossiniSemiramide
])

let saintSaens = Composer(id: 14, name: "Camille Saint-Saëns", ipa: "kamij sɛ̃ sɑ̃(s)", image: 2014, country: "France", dates: "1835-1921", bio: "Saint-Saëns was a French composer, conductor, organist, and pianist during the romantic era. Revered as a genius, he lived a mostly conventional carreer as a church organist. His most notable student was Gabriel Fauré.", excerpts: [
    saintSaens3
])

let schubert = Composer(id: 15, name: "Franz Schubert", ipa: "ˈfʁant͡s ˈʃuːbɐt", image: 2015, country: "Austria", dates: "1797-1828", bio: "Schubert was a prolific Austrian composer during the late Classical and early Romantic eras. During his short lifetime he composed over 1500 works. During his lifetime, he recieved little fame and success. It was only after his lifetime when musicians such as Schumann, Mendelssohn, Liszt, and Brahms discovered and praised his music that it became well known and widely recieved.", excerpts: [
    schubert9
])

let schumann = Composer(id: 16, name: "Robert Schumann", ipa: "ˈrɒb ərt ˈʃu mɑn", image: 2016, country: "Germany", dates: "1810-1856", bio: "Schumann was one of the most popular composers of the romantic era. He gave up the study of law to become a concert pianist, but his dreams were crushed by a hand injury. He subsequently pursued a career in composition, and married his teacher's daughter, Clara Wieck. Schumann mainly composed for piano, but later in live began to compose lieder, orchestral works, and one opera.", excerpts: [
    schumann3
])

let rStrauss = Composer(id: 17, name: "Richard Strauss", ipa: "ˈʁɪçaʁt ˈʃtʁaʊs", image: 2017, country: "Germany", dates: "1864-1949", bio: "Richard Strauss was one of the leading composers of the Romantic Era. He, along with Gustav Mahler, were considered successors of Richard Wagner. Although Strauss composed music for almost every classical genre, he is most famous for his tone poems. Strauss' compositional output began when he was just six years old, and continued almost eighty years later until his death.", excerpts: [
    straussDonJuan, straussDonQuixote, straussHeldenleben, straussSinfoniaDomestica, straussEulenspiegel
])

//let stravinsky = Composer(id: 18, name: "Igor Stravinsky", ipa: "ˈi gɔr strəˈvɪn ski", image: 2018, country: "Russia", dates: "1882-1971", bio: "Igor Stravinsky was one of the most influential composers of the twentieth century. Stravinsky's music is very unique from that of other composers, and often contains russian folk melodies. Throughout his life, the kinds of compositions that he composed also changed dramatically, from symphonies, to chamber music, to ballets.", excerpts: [
//
//])

let tchaikovsky = Composer(id: 19, name: "Pyotr Ilyich Tchaikovsky", ipa: "ˈpyɔtr iˈlyitʃ tʃaɪˈkɒfski", image: 2019, country: "Russia", dates: "1840-1893", bio: "Tchaikovsky was the first Russian composer to gain international fame. Tchaikovsky recieved a western European style music education, which seemed to counter the traditional Russian music practices. This dichotomy posed a great challenge for Tchaikovsky, one that affected his self confidence a lot. Although Tchaikovsky's music gained popular support, his life was deeply affected by depression and personal crises.", excerpts: [
    tchaikovsky4, tchaikovsky5
])

let wagner = Composer(id: 20, name: "Richard Wagner", ipa: "ˈʁɪçaʁt ˈvaːɡnɐ", image: 2020, country: "Germany", dates: "1813-1883", bio: "Wagner is one of the most well known composers of all time. His music frequently appears in television shows and movies. He was most well known in his era for his operas, which usually run about four hours. Wagner was unusual as an opera composer because he himself wrote the liberetto for the operas he composed. Wagner had his own opera house constructed, which still stands to this day.", excerpts: [
    wagnerWalkure, wagnerRheingold, wagnerGotterdammerung, wagnerLohengrin, wagnerSigfried
])

let weber = Composer(id: 21, name: "Carl Maria von Weber", ipa: "kɑrl məˈriə fən ˈvābər", image: 2021, country: "Germany", dates: "1786-1826", bio: "Carl Maria von Weber was a German composer, conductor, pianist, guitarist, and music critic. He is widely regarded as one of the first significant composers of the romantic school. His contributions to the field of Opera greatly influenced the development of Romantische Oper in Germany, and he was a major influence to Marschner, Meyerbeer and Wagner.", excerpts: [
    weberFreischutz, weberOberon
])

/**
 An Organized model of all of the Compositions and Composers in alphabetical order.
 */
class HornContentModel: ObservableObject {
    /**
     An alphabetical list of all of the compositions in the app.
     */
    var excerpts: [Composition] = [
        bachBrandenburgConcerto, bachMassB, beethovenFidelio, beethoven2, beethoven3, beethoven6, beethoven7, beethoven8, beethoven9, berliozRomeoEtJuliet, brahmsAcademic, brahmsPiano1, brahmsPiano2, brahms1, brahms2, brahms3, brahms4, brahmsVariations, bruckner4, bruckner7, dvorakCello, dvorak9, franckD, haydn31, lisztLesPreludes, mahler1, mahler3, mahler5, mahler9, mendelssohnMidsummer, mendelssohn3, mozart29, mozart40, rimskyKorsakovScheherazade, rossiniSemiramide, saintSaens3, schubert9, schumann3, straussDonJuan, straussDonQuixote, straussHeldenleben, straussSinfoniaDomestica, straussEulenspiegel, tchaikovsky4, tchaikovsky5, wagnerWalkure, wagnerRheingold, wagnerGotterdammerung, wagnerLohengrin, wagnerSigfried, weberFreischutz, weberOberon
    ]
    
    /**
     An alphabetical list of all of the composers in the app.
     */
    var composers: [Composer] = [
        bach, beethoven, berlioz, brahms, bruckner, dvorak, franck, haydn, liszt, mahler, mendellsohn, mozart, rimskyKorsakov, rossini, saintSaens, schubert, schumann, rStrauss, /*stravinsky,*/ tchaikovsky, wagner, weber
    ]
}

/**
 A Model for storing favorite compositions IDs as strings in an encapsulated list. Data is stored internally on every change.
 */
class Favorites: ObservableObject {
    // the actual resorts the user has favorited
    private var compositionIDs: [String]

    // the key we're using to read/write in UserDefaults
    private let saveKey = "Favorites"

    init() {
        // load our saved data
        self.compositionIDs = UserDefaults.standard.stringArray(forKey: saveKey) ?? [String]()
    }

    // returns true if our set contains this resort
    func contains(_ image: String) -> Bool {
        compositionIDs.contains(image)
    }

    // adds the resort to our set, updates all views, and saves the change
    func add(_ image: String) {
        objectWillChange.send()
        compositionIDs.append(image)
        save()
    }

    // removes the resort from our set, updates all views, and saves the change
    func remove(_ image: String) {
        objectWillChange.send()
        var counter = 0
        var removeIndex = 0
        while counter < compositionIDs.count {
            if compositionIDs[counter] == image {
                removeIndex = counter
            }
            counter += 1
        }
        compositionIDs.remove(at: removeIndex)
        save()
    }
    
    func removeAll() {
        objectWillChange.send()
        compositionIDs.removeAll()
        save()
    }

    func save() {
        // write out our data
        UserDefaults.standard.set(self.compositionIDs, forKey: saveKey)
    }
}

/**
 A model for saving user settings. Data is readable and writeable directly to memory from accessing and setting published variables.
 */
class Settings: ObservableObject {
    /**
     A static list to display names of random options in the Picker.
     */
    var randomOptions = ["All", "Favorites"]
    
    /**
     Selected Randoms is the user's choice for selecting whether only favorite excerpts or all excerpts will show in the RandomCompositionView. If the user has not chosen, it will default to 0 (All excerpts).
     <p>
     Note: Data will be saved and read directly from memory on read and write of this variable.
     */
    @Published var selectedRandoms: Int = UserDefaults.standard.integer(forKey: "Randoms") {
        didSet {
            objectWillChange.send()
            UserDefaults.standard.set(self.selectedRandoms, forKey: "Randoms")
        }
    }
}

