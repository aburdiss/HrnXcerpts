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

let pictures1 = [["A Horn 1", ""], ["A Horn 2", ""]]
let pictures2 = [["D Horn 1", ""], ["D Horn 2", ""], ["B♭ basso Horn 3", ""], ["B♭ basso Horn 4", ""]]
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
 Berlioz – Roméo et Juliette
 Brahms – Academic Festival Overture
 Brahms – Piano Concerto No. 1
 Brahms – Piano Concerto No. 2
 Brahms – Symphony No. 1
 Brahms – Symphony No. 2
 Brahms – Symphony No. 3
 Brahms – Symphony No. 4
 Brahms – Variations on a Theme by Haydn
 Bruckner – Symphony No. 4
 Bruckner – Symphony No. 7
 Dvořák – Cello Concerto
 Dvořák – Symphony No. 9
 Franck – Symphony in D minor
 Haydn – Symphony No. 31
 Liszt – Les préludes
 Mahler – Symphony No. 1
 Mahler – Symphony No. 3
 Mahler – Symphony No. 5
 Mahler – Symphony No. 9
 Mendelssohn – A Midsummer Night’s Dream
 Mendelssohn – Symphony No. 3
 Mozart – Symphony No. 29
 Mozart – Symphony No. 40
 Rimsky-Korsakov – Scheherazade
 Rossini – Semiramide
 Saint-Saëns – Symphony No. 3
 Schubert – Symphony No. 9
 Schumann – Symphony No. 3
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
])

let brahms = Composer(id: 3, name: "Johannes Brahms", ipa: "joˈhanəs ˈbʁaːms", image: 2003, country: "Germany", dates: "1833-1897", bio: "Johannes Brahms was one of the most famous composers of all time. He is most famous for his four symphonies, but he wrote for many diverse ensembles. Brahms was a perfectionist in all that he did, and was known to occaisionally destroy some of his work to prevent it from being seen by the outside world.", excerpts: [
])

let bruckner = Composer(id: 4, name: "Anton Bruckner", ipa: " 'antɔn ˈbʁʊknɐ", image: 2004, country: "Austria", dates: "1824-1896", bio: "Anton Bruckner was an Austrian organist, music theorist, and composer of the romantic era. He is best known for his symphonies and religious music. Bruckner was unlike other composers of his time, in that he was very a very humble man.", excerpts: [
])

let dvorak = Composer(id: 5, name: "Antonín Dvořák", ipa: "ˈɑn tɔ nyin ˈdvɔr ʒɑk", image: 2005, country: "Austrian Empire", dates: "1841-1904", bio: "Dvořák was one of the first Czech composers to recieve worldwide recognition. Dvořák was an admirer of Richard Wagner, and took influence from him especially in his Operas. He frequently included folk music in his compositions, and his music often had nationalistic themes.", excerpts: [
])

let franck = Composer(id: 6, name: "César Franck", ipa: "seɪˈzar frɑŋk", image: 2006, country: "United Kingdom of the Netherlands (Now Belgium)", dates: "1822 - 1890", bio: "Franck studied music in Paris at a young age. After his studies, he returned to Belgium and gained a terrible reputation for his oratorio \"Ruth\", and moved to Paris where he became an organist and teacher. Later in life, he became the organist for the Basilica of Saint Clotilde, where he remained for the rest of his life, composing in his free time pieces that are now considered standard repetoire.", excerpts: [
])

let haydn = Composer(id: 7, name: "Franz Joseph Haydn", ipa: "ˈfʁants ˈjoːzɛf ˈhaɪdn̩", image: 2007, country: "Austria", dates: "1732-1809", bio: "Haydn was a classical composer who is commonly known as \"The father of the Symphony\". He spent most of his life as a court musician for the Esterházy family. He was isolated in this role, with little to no contact with the rest of the music community, and was forced to create his own style because of this. Haydn was a prolific composer, producing 104 numbered symphonies and an immense amount of chamber music.", excerpts: [
])

let liszt = Composer(id: 8, name: "Franz Liszt", ipa: "ˈfɛrɛnt͡s ˈlist", image: 2008, country: "Hungary", dates: "1811-1886", bio: "Franz Liszt is regarded as one of the greatest pianists to ever live. A well known and travelled musician in his time, he invented what we now know as the recital, and set the precedent for memorizing solo compositions. Liszt also pioneered new paths in musical form and harmony, inventing the Symphonic Poem and made radical innovations in harmony.", excerpts: [
])

let mahler = Composer(id: 9, name: "Gustav Mahler", ipa: "ˈgʊs tɑf ˈmɑ lər", image: 2009, country: "Austrian Empire", dates: "1860-1911", bio: "Mahler is one of the most popular composers of all time. In 2016, a BBC Music survey ranked three of his symphonies among the top ten symphonies of all time. His music continues to be among the top recorded and perfomed in all of classical music. During his day, he was also among one of the top conductors of his era, and was the first conductor of the New York Philharmonic Orchestra.", excerpts: [
])

let mendellsohn = Composer(id: 10, name: "Felix Mendelssohn", ipa: "'fi lɪks 'mɛn dl sən", image: 2010, country: "Germany", dates: "1809-1947", bio: "Mendelssohn was born into a Jewish family, but was baptised Reformed Christian at the age of seven. He was known as a child prodigy, but his parents did not seek to capitalize on his talents. Well known as a composer, conductor, and organist, Mendelssohn helped to bring fame to the music of Bach.", excerpts: [
])

let mozart = Composer(id: 11, name: "Wolfgang Amadeus Mozart", ipa: "ˈwʊlf gæŋ ˌæm əˈdeɪ əs ˈmoʊt sɑrt", image: 2011, country: "Germany", dates: "1756-1791", bio: "Mozart gained popularity as a pianist and composer at an early age. He gained employment as a court musician at the Salzburg court, but quickly lost interest and began traveling looking for other employment. In Vienna, he found great fame, but worked his whole life trying to achieve financial stability: a goal he was never able to achieve. Mozart's death is also very mysterious and controvercial.", excerpts: [
])

let rimskyKorsakov = Composer(id: 12, name: "Nikolai Rimsky-Korsakov", ipa: "nʲɪkəˈlaj ˈrʲimskʲɪj ˈkorsəkəf", image: 2012, country: "Russia", dates: "1844-1908", bio: "Nikolai Rimsky-Korsakov was one of the most famous Russian composers. He was a master orchestrator, publishing a textbook on the subject using musical examples solely from his own compositions, and his most famous compositions are his orchestral works. Rimsky-Korsakov also spent a large portion of his musical life in association with the Russian military.", excerpts: [
])

let rossini = Composer(id: 13, name: "Gioachino Rossini", ipa: "dʒɔ ɑkˈki nɔ roʊˈsi ni", image: 2013, country: "Italy", dates: "1792-1868", bio: "Rossini was an Italian composer from the romantic era. His 39 operas gained him great success early in life, but he unexplainably gave up music almost entirely for the last 40 years of his life.", excerpts: [
])

let saintSaens = Composer(id: 14, name: "Camille Saint-Saëns", ipa: "kamij sɛ̃ sɑ̃(s)", image: 2014, country: "France", dates: "1835-1921", bio: "Saint-Saëns was a French composer, conductor, organist, and pianist during the romantic era. Revered as a genius, he lived a mostly conventional carreer as a church organist. His most notable student was Gabriel Fauré.", excerpts: [
])

let schubert = Composer(id: 15, name: "Franz Schubert", ipa: "ˈfʁant͡s ˈʃuːbɐt", image: 2015, country: "Austria", dates: "1797-1828", bio: "Schubert was a prolific Austrian composer during the late Classical and early Romantic eras. During his short lifetime he composed over 1500 works. During his lifetime, he recieved little fame and success. It was only after his lifetime when musicians such as Schumann, Mendelssohn, Liszt, and Brahms discovered and praised his music that it became well known and widely recieved.", excerpts: [
])

let schumann = Composer(id: 16, name: "Robert Schumann", ipa: "ˈrɒb ərt ˈʃu mɑn", image: 2016, country: "Germany", dates: "1810-1856", bio: "Schumann was one of the most popular composers of the romantic era. He gave up the study of law to become a concert pianist, but his dreams were crushed by a hand injury. He subsequently pursued a career in composition, and married his teacher's daughter, Clara Wieck. Schumann mainly composed for piano, but later in live began to compose lieder, orchestral works, and one opera.", excerpts: [
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
        bachBrandenburgConcerto, bachMassB, beethovenFidelio, beethoven2, beethoven3, beethoven6, beethoven7, beethoven8, beethoven9
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

