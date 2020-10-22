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
    ["", ""]
])

let bachMassB = Composition(id: 1, composer: "Johann Sebastian Bach", composerLast: "Bach", name: "Mass in B minor", date: "1749", era: "Baroque", genre: "Mass", excerpts: [
    Excerpt(id: 7, description: "Excerpt 1", measures: "Mov. X, mm. 1 - 15", pictures: [["D Horn", "1012"]])
], mutes: "", videos: [
    ["", ""]
])

let beethovenFidelio = Composition(id: 2, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Fidelio", date: "1805", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 8, description: "Excerpt 1", measures: "Overture, mm. 1 - 16", pictures: [["E Horn 1", "1013"], ["E Horn 2", "1014"], ["E Horn 3", "1015"], ["E Horn 4", "1016"]]),
    Excerpt(id: 9, description: "Excerpt 2", measures: "Overture, mm. 45 - 55", pictures: [["E Horn 1", "1017"], ["E Horn 2", "1018"], ["E Horn 3", "1019"], ["E Horn 4", "1020"]]),
    Excerpt(id: 10, description: "Excerpt 3", measures: "Overture, mm. 136 - 151", pictures: [["E Horn 1", "1021"], ["E Horn 2", "1022"]])
], mutes: "", videos: [
    ["", ""]
])

let beethoven2 = Composition(id: 3, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 2", date: "1802", era: "Classical", genre: "Symphony", excerpts: [
    Excerpt(id: 11, description: "Excerpt 1", measures: "Mov. II, mm. 85 - 96", pictures: [["E Horn 1", "1023"], ["E Horn 2", "1024"]]),
    Excerpt(id: 12, description: "Excerpt 2", measures: "Mov. II, mm. 249 - 260", pictures: [["E Horn 1", "1025"], ["E Horn 2", "1026"]]),
], mutes: "", videos: [
    ["", ""]
])

let beethoven3 = Composition(id: 4, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 3", date: "1803", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 13, description: "Excerpt 1", measures: "Mov. I, 4 mm. before [M] - 19 mm. after [M]", pictures: [["E♭ Horn 1", "1027"], ["E♭ Horn 2", "1028"], ["E♭ Horn 3", "1029"]]),
    Excerpt(id: 14, description: "Excerpt 2", measures: "Mov. I, 16 mm. before [U] – 9 mm. after [V]", pictures: [["E♭ Horn 1", "1030"], ["E♭ Horn 2", "1031"], ["E♭ Horn 3", "1032"]]),
    Excerpt(id: 15, description: "Excerpt 3", measures: "Mov. III, mm. 169 - 205", pictures: [["E♭ Horn 1", "1033"], ["E♭ Horn 2", "1034"], ["E♭ Horn 3", "1035"]]),
    Excerpt(id: 16, description: "Excerpt 4", measures: "Mov. IV, 9 mm. before [F] – 7 mm. after [G]", pictures: [["E♭ Horn 1", "1036"], ["E♭ Horn 2", "1037"], ["E♭ Horn 3", "1038"]]),
    Excerpt(id: 17, description: "Excerpt 5", measures: "Mov. IV, mm. 433 - End", pictures: [["E♭ Horn 1", "1039"], ["E♭ Horn 2", "1040"], ["E♭ Horn 3", "1041"]])
], mutes: "", videos: [
    ["", ""]
])

let beethoven6 = Composition(id: 5, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 6", date: "1808", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 18, description: "Excerpt 1", measures: "Mov. III, 49 mm. after [A] - 78 mm. after [A] ", pictures: [["F Horn 1", "1042"], ["F Horn 2", "1043"]]),
    Excerpt(id: 19, description: "Excerpt 2", measures: "Mov. V, mm. 1 - 10", pictures: [["F Horn 1", "1044"]])
], mutes: "", videos: [
    ["", ""]
])

let beethoven7 = Composition(id: 6, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 7", date: "1812", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 20, description: "Excerpt 1", measures: "Mov. I, 25 mm. before [C] - [C]", pictures: [["A Horn 1", "1045"], ["A Horn 2", "1046"]]),
    Excerpt(id: 21, description: "Excerpt 2", measures: "Mov. I, 23 mm. after [N] – End", pictures: [["A Horn 1", "1047"], ["A Horn 2", "1048"]]),
    Excerpt(id: 22, description: "Excerpt 3", measures: "Mov. III, mm. 153-239", pictures: [["D Horn 1", "1049"], ["D Horn 2", "1050"]]),
    Excerpt(id: 23, description: "Excerpt 4", measures: "Mov. IV, K – End", pictures: [["A Horn 1", "1051"], ["A Horn 2", "1052"]])
], mutes: "", videos: [
    ["", ""]
])

let beethoven8 = Composition(id: 7, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 8", date: "1812", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 24, description: "Excerpt 1", measures: "Mov. III, mm. 45 - 78", pictures: [["F Horn 1", "1053"], ["F Horn 2", "1054"]])
], mutes: "", videos: [
    ["", ""]
])

let beethoven9 = Composition(id: 8, composer: "Ludwig van Beethoven", composerLast: "Beethoven", name: "Symphony No. 9", date: "1824", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 25, description: "Excerpt 1", measures: "Mov. I, [Q] – 10 mm. after [Q]", pictures: [["D Horn 1", "1055"], ["D Horn 2", "1056"], ["B♭ basso Horn 3", "1057"], ["B♭ basso Horn 4", "1058"]]),
    Excerpt(id: 26, description: "Excerpt 2", measures: "Mov. II, [L] - 8 mm. after [L]", pictures: [["D Horn 1", "1059"], ["D Horn 2", "1060"]]),
    Excerpt(id: 27, description: "Excerpt 3", measures: "Mov. III, mm. 83 - 121", pictures: [["B Horn 1", "1061"], ["B Horn 2", "1062"], ["E♭ Horn 3", "1063"], ["E♭ Horn 4", "1064"]])
], mutes: "", videos: [
    ["", ""]
])

let berliozRomeoEtJuliet = Composition(id: 9, composer: "Hector Berlioz", composerLast: "Berlioz", name: "Roméo et Juliette", date: "1839", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 28, description: "Excerpt 1", measures: "Mov. III, 9 mm. after 57 – 4 mm. after 62", pictures: [["F Horn 1", "1065"], ["C Horn 2", "1066"], ["B♭ Alto Horn 3", "1067"], ["E♭ Horn 4", "1068"]])
], mutes: "", videos: [
    ["", ""]
])

let brahmsAcademic = Composition(id: 10, composer: "Johannes Brahms", composerLast: "Brahms", name: "Academic Festival Overture", date: "1880", era: "Romantic", genre: "Overture", excerpts: [
    Excerpt(id: 29, description: "Excerpt 1", measures: "Beginning - [A]", pictures: [["C Horn 1", "1069"], ["C Horn 2", "1070"]]),
    Excerpt(id: 30, description: "Excerpt 2", measures: "10 mm. after [F] – [G]", pictures: [["C Horn 1", "1071"], ["C Horn 2", "1072"], ["E Horn 3", "1073"], ["E Horn 4", "1074"]])
], mutes: "", videos: [
    ["", ""]
])

let brahmsPiano1 = Composition(id: 11, composer: "Johannes Brahms", composerLast: "Brahms", name: "Piano Concerto No. 1", date: "1859", era: "Romantic", genre: "Piano Concerto", excerpts: [
    Excerpt(id: 31, description: "Excerpt 1", measures: "Mov. I, mm. 191 - 219", pictures: [["D Horn 1", "1075"], ["D Horn 2", "1076"], ["F Horn 3", "1077"], ["F Horn 4", "1078"]]),
    Excerpt(id: 32, description: "Excerpt 2", measures: "Mov. I, mm. 423 - 443", pictures: [["D Horn 1", "1079"], ["D Horn 2", "1080"]]),
    Excerpt(id: 33, description: "Excerpt 3", measures: "Mov. III, 19 mm. before [E] to [E]", pictures: [["D Horn 1", "1081"], ["D Horn 2", "1082"], ["B♭ Basso Horn 3", "1083"], ["B♭ Basso Horn 4", "1084"]]),
    Excerpt(id: 34, description: "Excerpt 4", measures: "Mov. III, [H] - 25 mm. after [H]", pictures: [["D Horn 1", "1085"], ["D Horn 2", "1086"]])
], mutes: "", videos: [
    ["", ""]
])

let brahmsPiano2 = Composition(id: 12, composer: "Johannes Brahms", composerLast: "Brahms", name: "Piano Concerto No. 2", date: "1881", era: "Romantic", genre: "Piano Concerto", excerpts: [
    Excerpt(id: 35, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 5", pictures: [["B♭ Basso Horn 1", "1087"]]),
    Excerpt(id: 36, description: "Excerpt 2", measures: "Mov. I, [D] - 5 mm. after [D]", pictures: [["B♭ Basso Horn 1", "1088"], ["B♭ Basso Horn 2", "1089"], ["F Horn 3", "1090"], ["F Horn 4", "1091"]]),
    Excerpt(id: 37, description: "Excerpt 3", measures: "Mov. I, [F] - 7 mm. before [G]", pictures: [["B♭ Basso Horn 1", "1092"], ["B♭ Basso Horn 2", "1093"], ["F Horn 3", "1094"], ["F Horn 4", "1095"]]),
    Excerpt(id: 38, description: "Excerpt 4", measures: "Mov. II, mm. 159 - 215", pictures: [["B♭ Basso Horn 1", "1096"], ["B♭ Basso Horn 2", "1097"], ["D Horn 3", "1098"], ["D Horn 4", "1099"]])
], mutes: "", videos: [
    ["", ""]
])

let brahms1 = Composition(id: 13, composer: "Johannes Brahms", composerLast: "Brahms", name: "Symphony No. 1", date: "1876", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 39, description: "Excerpt 1", measures: "Mov. I, [E] - 1 mm. after [F]", pictures: [["E Horn 1", "1100"], ["E Horn 2", "1101"]]),
    Excerpt(id: 40, description: "Excerpt 2", measures: "Mov. IV, [B] - 3 mm. before [C]", pictures: [["C Horn 1", "1102"], ["C Horn 2", "1103"], ["E Horn 3", "1104"]]),
], mutes: "", videos: [
    ["", ""]
])

let brahms2 = Composition(id: 14, composer: "Johannes Brahms", composerLast: "Brahms", name: "Symphony No. 2", date: "1877", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 41, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 13", pictures: [["D Horn 1", "1105"], ["D Horn 2", "1106"], ["E Horn 3", "1107"], ["E Horn 4", "1108"]]),
    Excerpt(id: 42, description: "Excerpt 2", measures: "Mov. I, mm. 438 - 477", pictures: [["D Horn 1", "1109"], ["D Horn 2", "1110"], ["E Horn 3", "1111"], ["E Horn 4", "1112"]]),
    Excerpt(id: 43, description: "Excerpt 3", measures: "Mov. II, [A] - [B]", pictures: [["B Basso Horn 1", "1113"], ["B Basso Horn 2", "1114"]])
], mutes: "", videos: [
    ["", ""]
])

let brahms3 = Composition(id: 15, composer: "Johannes Brahms", composerLast: "Brahms", name: "Symphony No. 3", date: "1883", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 44, description: "Excerpt 1", measures: "Mov. I, [G] - [H]", pictures: [["C Horn 1", "1115"], ["C Horn 2", "1116"]]),
    Excerpt(id: 45, description: "Excerpt 2", measures: "Mov. III, [F] - 12 mm. after [F]", pictures: [["C Horn 1", "1117"], ["C Horn 2", "1118"]]),
], mutes: "", videos: [
    ["", ""]
])

let brahms4 = Composition(id: 16, composer: "Johannes Brahms", composerLast: "Brahms", name: "Symphony No. 4", date: "1885", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 46, description: "Excerpt 1", measures: "12 mm. before [B] - 4 mm. after [E]", pictures: [["E Horn 1", "1119"], ["E Horn 2", "1120"], ["C Horn 3", "1121"], ["C Horn 4", "1122"]]),
    Excerpt(id: 47, description: "Excerpt 2", measures: "Mov. I, 2 mm. after [F] - 218", pictures: [["E Horn 1", "1123"], ["E Horn 2", "1124"], ["C Horn 3", "1125"], ["C Horn 4", "1126"]]),
    Excerpt(id: 48, description: "Excerpt 3", measures: "Mov. II, Beginning - [A]", pictures: [["E Horn 1", "1127"], ["E Horn 2", "1128"], ["C Horn 3", "1129"], ["C Horn 4", "1130"]]),
    Excerpt(id: 49, description: "Excerpt 4", measures: "Mov. II, mm. 113 - End", pictures: [["E Horn 1", "1131"], ["E Horn 2", "1132"], ["C Horn 3", "1133"], ["C Horn 4", "1134"]])
], mutes: "", videos: [
    ["", ""]
])

let brahmsVariations = Composition(id: 17, composer: "Johannes Brahms", composerLast: "Brahms", name: "Variations on a Theme by Haydn", date: "1873", era: "Romantic", genre: "Variations", excerpts: [
    Excerpt(id: 50, description: "Excerpt 1", measures: "Variation VI", pictures: [["B♭ Basso Horn 1", "1135"], ["B♭ Basso Horn 2", "1136"], ["F Horn 3", "1137"], ["F Horn 4", "1138"]]),
    Excerpt(id: 51, description: "Excerpt 2", measures: "Finale, 5 mm. after [O] - End", pictures: [["B♭ Basso Horn 1", "1139"], ["B♭ Basso Horn 2", "1140"], ["F Horn 3", "1141"], ["F Horn 4", "1142"]])
], mutes: "", videos: [
    ["", ""]
])

let bruckner4 = Composition(id: 18, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 4", date: "1888", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 52, description: "Excerpt 1", measures: "Mov. I, Beginning - [A]", pictures: [["F Horn 1", "1143"], ["F Horn 2", "1144"]]),
    Excerpt(id: 53, description: "Excerpt 2", measures: "Mov. I, [H] - [I]", pictures: [["F Horn 1", "1145"], ["F Horn 2", "1146"], ["F Horn 3", "1147"], ["F Horn 4", "1148"]]),
    Excerpt(id: 54, description: "Excerpt 3", measures: "Mov. II, 5 mm. after [D] - 9 mm. before [E]", pictures: [["F Horn 1", "1149"], ["F Horn 3", "1150"]]),
    Excerpt(id: 55, description: "Excerpt 4", measures: "Mov. III, Beginning - [D]", pictures: [["F Horn 1", "1151"], ["F Horn 2", "1152"], ["F Horn 3", "1153"], ["F Horn 4", "1154"]]),
    Excerpt(id: 56, description: "Excerpt 5", measures: "Mov. IV, [F] - [K]", pictures: [["F Horn 1", "1155"], ["F Horn 2", "1156"], ["F Horn 3", "1157"], ["F Horn 4", "1158"]])
], mutes: "", videos: [
    ["", ""]
])

let bruckner7 = Composition(id: 19, composer: "Anton Bruckner", composerLast: "Bruckner", name: "Symphony No. 7", date: "1885", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 57, description: "Excerpt 1", measures: "Mov. II, [S] - 3 mm. after [S]", pictures: [["B♭ Tenor Wagner Tuba 1", "1163"], ["B♭ Tenor Wagner Tuba 2", "1169"], ["F Bass Wagner Tuba 1", "1165"], ["F Bass Wagner Tuba 2", "1167"]]),
    Excerpt(id: 58, description: "Excerpt 2", measures: "Mov. IV, [P] - [S]", pictures: [["F Horn 1", "1159"], ["F Horn 2", "1160"], ["F Horn 3", "1161"], ["F Horn 4", "1162"], ["B♭ Tenor Wagner Tuba 1", "1164"], ["B♭ Tenor Wagner Tuba 2", "1170"], ["F Bass Wagner Tuba 1", "1166"], ["F Bass Wagner Tuba 2", "1168"]])
], mutes: "", videos: [
    ["", ""]
])

let dvorakCello = Composition(id: 20, composer: "Antonín Dvořák", composerLast: "Dvořák", name: "Cello Concerto", date: "1895", era: "Romantic", genre: "Cello Concerto", excerpts: [
    Excerpt(id: 59, description: "Excerpt 1", measures: "Mov. I, 11 mm. after [2] - 10 mm. before [3]", pictures: [["E Horn 1", "1171"]]),
    Excerpt(id: 60, description: "Excerpt 2", measures: "Mov. I, 6 mm. before [7] - 6 mm. before [8]", pictures: [["E Horn 1", "1172"], ["E Horn 2", "1173"], ["D Horn 3", "1174"]]),
    Excerpt(id: 61, description: "Excerpt 3", measures: "Mov. I, [8] - [9]", pictures: [["E Horn 1", "1175"], ["E Horn 2", "1176"], ["D Horn 3", "1177"]]),
    Excerpt(id: 62, description: "Excerpt 4", measures: "Mov. II, [6] - 13 mm. after [6]", pictures: [["F Horn 1", "1178"], ["F Horn 2", "1179"], ["C Horn 3", "1180"]])
], mutes: "", videos: [
    ["", ""]
])

let dvorak9 = Composition(id: 21, composer: "Antonín Dvořák", composerLast: "Dvořák", name: "Symphony No. 9", date: "1893", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 63, description: "Excerpt 1", measures: "Mov. I, mm. 16 - 27", pictures: [["E Horn 1", "1181"], ["E Horn 2", "1182"], ["C Horn 3", "1183"], ["C Horn 4", "1184"]]),
    Excerpt(id: 64, description: "Excerpt 2", measures: "Mov. I, 13 mm. after [6] - 6 mm. before [8]", pictures: [["E Horn 1", "1185"], ["E Horn 2", "1186"], ["C Horn 3", "1187"], ["C Horn 4", "1188"]]),
    Excerpt(id: 65, description: "Excerpt 3", measures: "Mov. II, 7 mm. before [2] - [2]", pictures: [["E Horn 1", "1189"], ["E Horn 2", "1190"]]),
    Excerpt(id: 66, description: "Excerpt 4", measures: "Mov. III, 6 mm. before [3] - 4 mm. before [4]", pictures: [["E Horn 1", "1191"], ["E Horn 2", "1192"], ["E Horn 3", "1193"], ["E Horn 4", "1194"]]),
    Excerpt(id: 67, description: "Excerpt 5", measures: "Mov. IV, mm. 1 - 25", pictures: [["E Horn 1", "1195"], ["E Horn 2", "1196"], ["E Horn 3", "1197"], ["E Horn 4", "1198"]]),
    Excerpt(id: 68, description: "Excerpt 6", measures: "Mov. IV, 8 mm. before [11] - [11]", pictures: [["E Horn 1", "1199"], ["E Horn 2", "1200"], ["E Horn 3", "1201"], ["E Horn 4", "1202"]])
], mutes: "Straight", videos: [
    ["", ""]
])

let franckD = Composition(id: 22, composer: "César Franck", composerLast: "Franck", name: "Symphony in D Minor", date: "1888", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 69, description: "Excerpt 1", measures: "Mov. II, 7 mm. before [B] - [C]", pictures: [["F Horn 1", "1203"]])
], mutes: "", videos: [
    ["", ""]
])

let haydn31 = Composition(id: 23, composer: "Franz Joseph Haydn", composerLast: "Haydn", name: "Symphony No. 31", date: "1765", era: "Classical", genre: "Symphony", excerpts: [
    Excerpt(id: 70, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 16", pictures: [["D Horn 1", "1204"], ["D Horn 2", "1205"], ["D Horn 3", "1206"], ["D Horn 4", "1207"]]),
    Excerpt(id: 71, description: "Excerpt 2", measures: "Mov. II, mm. 1 - 16", pictures: [["D Horn 1", "1208"], ["D Horn 2", "1209"], ["G Horn 3", "1210"], ["G Horn 4", "1211"]]),
    Excerpt(id: 72, description: "Excerpt 3", measures: "Mov. II, mm. 36 - 41", pictures: [["D Horn 1", "1212"], ["D Horn 2", "1213"], ["G Horn 3", "1214"], ["G Horn 4", "1215"]]),
    Excerpt(id: 73, description: "Excerpt 4", measures: "Mov. III, Trio", pictures: [["D Horn 1", "1216"], ["D Horn 2", "1217"], ["D Horn 3", "1218"], ["D Horn 4", "1219"]]),
    Excerpt(id: 74, description: "Excerpt 5", measures: "Mov. IV, Variation IV", pictures: [["D Horn 1", "1220"], ["D Horn 2", "1221"], ["D Horn 3", "1222"], ["D Horn 4", "1223"]])
], mutes: "", videos: [
    ["", ""]
])

let lisztLesPreludes = Composition(id: 24, composer: "Franz Liszt", composerLast: "Liszt", name: "Les préludes", date: "1855", era: "Romantic", genre: "Symphonic Poem", excerpts: [
    Excerpt(id: 75, description: "Excerpt 1", measures: "mm. 55 - 62", pictures: [["E Horn 1", "1224"]]),
    Excerpt(id: 76, description: "Excerpt 2", measures: "mm. 69 - 86", pictures: [["E Horn 1", "1225"], ["E Horn 2", "1226"], ["E Horn 3", "1227"], ["E Horn 4", "1228"]])
], mutes: "", videos: [
    ["", ""]
])

let mahler1 = Composition(id: 25, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 1", date: "1888", era: "Late Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 77, description: "Excerpt 1", measures: "Mov. I, 4 mm. before [2] - [3]", pictures: [["F Horn 1", "1229"], ["F Horn 2", "1230"], ["F Horn 4", "1231"]]),
    Excerpt(id: 78, description: "Excerpt 2", measures: "Mov. I, 4 mm. before [15] - 12 mm. after [15]", pictures: [["F Horn 1", "1232"], ["F Horn 2", "1233"], ["F Horn 3", "1234"], ["F Horn 4", "1235"]]),
    Excerpt(id: 79, description: "Excerpt 3", measures: "Mov. I, [25] - End", pictures: [["F Horn 1", "1236"], ["F Horn 2", "1237"], ["F Horn 3", "1238"], ["F Horn 4", "1239"]]),
    Excerpt(id: 80, description: "Excerpt 4", measures: "Mov. II, [13] - 4 mm. after [16]", pictures: [["F Horn 1", "1240"], ["F Horn 2", "1241"], ["F Horn 3", "1242"], ["F Horn 4", "1243"]]),
    Excerpt(id: 81, description: "Excerpt 5", measures: "Mov. III, [13] - [15]", pictures: [["F Horn 1", "1244"], ["F Horn 2", "1245"], ["F Horn 3", "1246"], ["F Horn 4", "1247"]]),
    Excerpt(id: 82, description: "Excerpt 6", measures: "Mov. IV, 8 mm. before [52] - End", pictures: [["F Horn 1", "1248"], ["F Horn 2", "1249"], ["F Horn 3", "1250"], ["F Horn 4", "1251"], ["F Horn 5", "1252"], ["F Horn 6", "1253"], ["F Horn 7", "1254"]])
], mutes: "", videos: [
    ["", ""]
])

let mahler3 = Composition(id: 26, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 3", date: "1896", era: "Late Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 83, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 11", pictures: [["F Horn 1", "1255"], ["F Horn 2", "1256"], ["F Horn 3", "1257"], ["F Horn 4", "1258"], ["F Horn 5", "1259"], ["F Horn 6", "1260"], ["F Horn 7", "1261"], ["F Horn 8", "1262"]]),
    Excerpt(id: 84, description: "Excerpt 2", measures: "Mov. I, [29] - 2 mm. before [33] ", pictures: [["F Horn 1", "1263"], ["F Horn 2", "1264"], ["F Horn 3", "1265"], ["F Horn 4", "1266"], ["F Horn 5", "1267"], ["F Horn 6", "1268"], ["F Horn 7", "1269"], ["F Horn 8", "1270"]]),
    Excerpt(id: 85, description: "Excerpt 3", measures: "Mov. I, [39] - [40]", pictures: [["F Horn 1", "1271"], ["F Horn 2", "1272"]]),
    Excerpt(id: 86, description: "Excerpt 4", measures: "Mov. I, [51] - 3 mm. before [54]", pictures: [["F Horn 1", "1273"], ["F Horn 2", "1274"], ["F Horn 3", "1275"], ["F Horn 4", "1276"], ["F Horn 5", "1277"], ["F Horn 6", "1278"], ["F Horn 7", "1279"], ["F Horn 8", "1280"]]),
    Excerpt(id: 87, description: "Excerpt 5", measures: "Mov. I, [55] - 4 mm. before [57]", pictures: [["F Horn 1", "1281"], ["F Horn 2", "1282"], ["F Horn 3", "1283"], ["F Horn 4", "1284"], ["F Horn 5", "1285"], ["F Horn 6", "1286"], ["F Horn 7", "1287"], ["F Horn 8", "1288"]])
], mutes: "", videos: [
    ["", ""]
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
    ["", ""]
])

let mahler9 = Composition(id: 28, composer: "Gustav Mahler", composerLast: "Mahler", name: "Symphony No. 9", date: "1910", era: "Late Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 95, description: "Excerpt 1", measures: "Mov. I, mm. 4 - 6 mm. after [2]", pictures: [["F Horn 2", "1328"], ["F Horn 4", "1329"]]),
    Excerpt(id: 96, description: "Excerpt 2", measures: "Mov. I, offen after [16] - Nicht merh so langsam", pictures: [["F Horn 1", "1330"]])
], mutes: "", videos: [
    ["", ""]
])

let mendelssohnMidsummer = Composition(id: 29, composer: "Felix Mendelssohn", composerLast: "Mendelssohn", name: "A Midsummer Night's Dream", date: "1842", era: "Romantic", genre: "Incidental Music", excerpts: [
    Excerpt(id: 97, description: "Excerpt 1", measures: "No. 7, Beginning - 4 mm. before [A]", pictures: [["E Horn 1", "1331"], ["E Horn 2", "1332"]]),
    Excerpt(id: 98, description: "Excerpt 2", measures: "No. 7, [C] - End", pictures: [["E Horn 1", "1333"], ["E Horn 2", "1334"]])
], mutes: "", videos: [
    ["", ""]
])

let mendelssohn3 = Composition(id: 30, composer: "Felix Mendelssohn", composerLast: "Mendelssohn", name: "Symphony No. 3", date: "1842", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 99, description: "Excerpt 1", measures: "Mov. II, 16 mm. after [A] - [B]", pictures: [["C Horn 1", "1335"], ["C Horn 2", "1336"], ["F Horn 3", "1337"], ["F Horn 4", "1338"]]),
    Excerpt(id: 100, description: "Excerpt 2", measures: "Mov. II, 10 mm. before [F] - 3 mm. after [G]", pictures: [["C Horn 1", "1339"], ["C Horn 2", "1340"], ["F Horn 3", "1341"], ["F Horn 4", "1342"]]),
    Excerpt(id: 101, description: "Excerpt 3", measures: "Mov. III, 5 mm. after [D] - 4 mm. before [E]", pictures: [["C Horn 1", "1343"], ["C Horn 2", "1344"], ["D Horn 3", "1345"], ["D Horn 4", "1346"]]),
    Excerpt(id: 102, description: "Excerpt 4", measures: "Mov. IV, mm. 396 - End", pictures: [["A Horn 1", "1347"], ["A Horn 2", "1348"], ["D Horn 3", "1349"], ["D Horn 4", "1350"]])
], mutes: "", videos: [
    ["", ""]
])

let mozart29 = Composition(id: 31, composer: "Wolfgang Amadeus Mozart", composerLast: "Mozart", name: "Symphony No. 29", date: "1774", era: "Classical", genre: "Symphony", excerpts: [
    Excerpt(id: 103, description: "Excerpt 1", measures: "Mov. IV, mm. 155 - End", pictures: [["A Horn 1", "1351"], ["A Horn 2", "1352"]])
], mutes: "", videos: [
    ["", ""]
])

let mozart40 = Composition(id: 32, composer: "Wolfgang Amadeus Mozart", composerLast: "Mozart", name: "Symphony No. 40", date: "1788", era: "Classical", genre: "Symphony", excerpts: [
    Excerpt(id: 104, description: "Excerpt 1", measures: "Mov. III, Trio", pictures: [["G Horn 1", "1353"], ["G Horn 2", "1354"]])
], mutes: "", videos: [
    ["", ""]
])

let rimskyKorsakovScheherazade = Composition(id: 33, composer: "Nikolay Rimsky-Korsakov", composerLast: "Rimsky-Korsakov", name: "Scheherazade", date: "1888", era: "Romantic", genre: "Suite", excerpts: [
    Excerpt(id: 105, description: "Excerpt 1", measures: "Mov. II, [K] - [L]", pictures: [["F Horn 1", "1355"], ["F Horn 2", "1356"], ["F Horn 3", "1357"], ["F Horn 4", "1358"]]),
    Excerpt(id: 106, description: "Excerpt 2", measures: "Mov. II, 21 mm. after [Q] - End", pictures: [["F Horn 1", "1359"], ["F Horn 2", "1360"], ["F Horn 3", "1361"], ["F Horn 4", "1362"]]),
    Excerpt(id: 107, description: "Excerpt 3", measures: "Mov. IV, [U] - [V]", pictures: [["F Horn 1", "1363"], ["F Horn 2", "1364"], ["F Horn 3", "1365"], ["F Horn 4", "1366"]])
], mutes: "", videos: [
    ["", ""]
])

let rossiniSemiramide = Composition(id: 34, composer: "Gioacchino Rossini", composerLast: "Rossini", name: "Semiramide", date: "1823", era: "Romantic", genre: "Opera", excerpts: [
    Excerpt(id: 108, description: "Excerpt 1", measures: "Overture, [B] - [C]", pictures: [["D Horn 1", "1367"], ["D Horn 2", "1368"], ["D Horn 3", "1369"], ["D Horn 4", "1370"]])
], mutes: "", videos: [
    ["", ""]
])

let saintSaens3 = Composition(id: 35, composer: "Camille Saint-Saëns", composerLast: "Saint-Saëns", name: "Symphony No. 3", date: "1886", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 109, description: "Excerpt 1", measures: "Mov. I, 4 mm. before [N] - 16 mm. after [N]", pictures: [["F Horn 3", "1371"], ["F Horn 4", "1372"]]),
    Excerpt(id: 110, description: "Excerpt 2", measures: "Mov. I, [Q] - [S]", pictures: [["F Horn 3", "1373"]]),
    Excerpt(id: 111, description: "Excerpt 3", measures: "Mov. II, 13 mm. after [BB] - [CC]", pictures: [["F Horn 3", "1374"], ["F Horn 4", "1375"]])
], mutes: "", videos: [
    ["", ""]
])

let schubert9 = Composition(id: 36, composer: "Franz Schubert", composerLast: "Schubert", name: "Symphony No. 9", date: "1828", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 112, description: "Excerpt 1", measures: "Mov. I, mm. 1 - 8", pictures: [["C Horn 1", "1376"], ["C Horn 2", "1377"]])
], mutes: "", videos: [
    ["", ""]
])

let schumann3 = Composition(id: 37, composer: "Robert Schumann", composerLast: "Schumann", name: "Symphony No. 3", date: "1850", era: "Romantic", genre: "Symphony", excerpts: [
    Excerpt(id: 113, description: "Excerpt 1", measures: "Mov. I, 6 mm. before [A] - 17 mm. after [A]", pictures: [["E♭ Horn 1", "1378"], ["E♭ Horn 2", "1379"], ["E♭ Horn 3", "1380"], ["E♭ Horn 4", "1381"]]),
    Excerpt(id: 114, description: "Excerpt 2", measures: "Mov. I, 4 mm. before [L] - 8 mm. before [M]", pictures: [["E♭ Horn 1", "1382"], ["E♭ Horn 2", "1383"]]),
    Excerpt(id: 115, description: "Excerpt 3", measures: "Mov. II, mm. 25 - 48", pictures: [["F Horn 1", "1384"], ["F Horn 2", "1385"], ["C Horn 3", "1386"], ["C Horn 4", "1387"]]),
    Excerpt(id: 116, description: "Excerpt 4", measures: "Mov. IV, mm. 1 - 8", pictures: [["E♭ Horn 1", "1388"], ["E♭ Horn 2", "1389"], ["E♭ Horn 3", "1390"], ["E♭ Horn 4", "1391"]])
], mutes: "", videos: [
    ["", ""]
])

let pictures1 = [["C Horn 1", ""], ["C Horn 2", ""]]
let pictures2 = [["F Horn 1", ""], ["F Horn 2", ""], ["C Horn 3", ""], ["C Horn 4", ""]]
let flat = "♭"

/*
x Bach – Brandenburg Concerto No. 1
x Bach – Mass in B minor
x Beethoven – Fidelio Overture
x Beethoven – Symphony No. 2
x Beethoven – Symphony No. 3
x Beethoven – Symphony No. 6
x Beethoven – Symphony No. 7
x Beethoven – Symphony No. 8
x Beethoven – Symphony No. 9
x Berlioz – Roméo et Juliette
x Brahms – Academic Festival Overture
x Brahms – Piano Concerto No. 1
x Brahms – Piano Concerto No. 2
x Brahms – Symphony No. 1
x Brahms – Symphony No. 2
x Brahms – Symphony No. 3
x Brahms – Symphony No. 4
x Brahms – Variations on a Theme by Haydn
x Bruckner – Symphony No. 4
x Bruckner – Symphony No. 7
x Dvořák – Cello Concerto
x Dvořák – Symphony No. 9
x Franck – Symphony in D minor
x Haydn – Symphony No. 31
x Liszt – Les préludes
x Mahler – Symphony No. 1
x Mahler – Symphony No. 3
x Mahler – Symphony No. 5
x Mahler – Symphony No. 9
x Mendelssohn – A Midsummer Night’s Dream
x Mendelssohn – Symphony No. 3
x Mozart – Symphony No. 29
x Mozart – Symphony No. 40
x Rimsky-Korsakov – Scheherazade
x Rossini – Semiramide
x Saint-Saëns – Symphony No. 3
x Schubert – Symphony No. 9
x Schumann – Symphony No. 3
 Strauss – Don Juan
 Strauss – Don Quixote
 Strauss – Ein Heldenleben
 Strauss – Symphonia Domestica
 Strauss – Till Eulenspiegels lustige Streiche
 Stravinsky – The Firebird (1919)
 Tchaikovsky – Symphony No. 4
 Tchaikovsky – Symphony No. 5
 Wagner Die Walkure
 Wagner – Das Rheingold
 Wagner – Götterdämmerung
 Wagner – Lohengrin
 Wagner – Siegfried
 Weber – Der Freischütz
 Weber – Oberon
 */

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
])

let stravinsky = Composer(id: 18, name: "Igor Stravinsky", ipa: "ˈi gɔr strəˈvɪn ski", image: 2018, country: "Russia", dates: "1882-1971", bio: "Igor Stravinsky was one of the most influential composers of the twentieth century. Stravinsky's music is very unique from that of other composers, and often contains russian folk melodies. Throughout his life, the kinds of compositions that he composed also changed dramatically, from symphonies, to chamber music, to ballets.", excerpts: [
])

let tchaikovsky = Composer(id: 19, name: "Pyotr Ilyich Tchaikovsky", ipa: "ˈpyɔtr iˈlyitʃ tʃaɪˈkɒfski", image: 2019, country: "Russia", dates: "1840-1893", bio: "Tchaikovsky was the first Russian composer to gain international fame. Tchaikovsky recieved a western European style music education, which seemed to counter the traditional Russian music practices. This dichotomy posed a great challenge for Tchaikovsky, one that affected his self confidence a lot. Although Tchaikovsky's music gained popular support, his life was deeply affected by depression and personal crises.", excerpts: [
])

let wagner = Composer(id: 20, name: "Richard Wagner", ipa: "ˈʁɪçaʁt ˈvaːɡnɐ", image: 2020, country: "Germany", dates: "1813-1883", bio: "Wagner is one of the most well known composers of all time. His music frequently appears in television shows and movies. He was most well known in his era for his operas, which usually run about four hours. Wagner was unusual as an opera composer because he himself wrote the liberetto for the operas he composed. Wagner had his own opera house constructed, which still stands to this day.", excerpts: [
])

let weber = Composer(id: 21, name: "Carl Maria von Weber", ipa: "kɑrl məˈriə fən ˈvābər", image: 2021, country: "Germany", dates: "1786-1826", bio: "Carl Maria von Weber was a German composer, conductor, pianist, guitarist, and music critic. He is widely regarded as one of the first significant composers of the romantic school. His contributions to the field of Opera greatly influenced the development of Romantische Oper in Germany, and he was a major influence to Marschner, Meyerbeer and Wagner.", excerpts: [
])

/**
 An Organized model of all of the Compositions and Composers in alphabetical order.
 */
class HornContentModel: ObservableObject {
    /**
     An alphabetical list of all of the compositions in the app.
     */
    var excerpts: [Composition] = [
        bachBrandenburgConcerto, bachMassB, beethovenFidelio, beethoven2, beethoven3, beethoven6, beethoven7, beethoven8, beethoven9, berliozRomeoEtJuliet, brahmsAcademic, brahmsPiano1, brahmsPiano2, brahms1, brahms2, brahms3, brahms4, brahmsVariations, bruckner4, bruckner7, dvorakCello, dvorak9, franckD, haydn31, lisztLesPreludes, mahler1, mahler3, mahler5, mahler9, mendelssohnMidsummer, mendelssohn3, mozart29, mozart40, rimskyKorsakovScheherazade, rossiniSemiramide, saintSaens3, schubert9, schumann3
    ]
    
    /**
     An alphabetical list of all of the composers in the app.
     */
    var composers: [Composer] = [
        bach, beethoven, berlioz, brahms, bruckner, dvorak, franck, haydn, liszt, mahler, mendellsohn, mozart, rimskyKorsakov, rossini, saintSaens, schubert, schumann, rStrauss, stravinsky, tchaikovsky, wagner, weber
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

