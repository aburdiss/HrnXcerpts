//
//  RandomCompositionView.swift
//  HrnXcerpts
//
//  Created by Alexander Burdiss on 9/14/20.
//  Copyright © 2020 Alexander Burdiss. All rights reserved.
//

import SwiftUI

struct RandomCompositionView: View {
    @EnvironmentObject var settings: Settings
    @EnvironmentObject var favorites: Favorites
    
    let allCompositions = HornContentModel().excerpts
    @State var favoriteCompositions: [Composition] = []
    
    @State var randomComposition: Composition = bachBrandenburgConcerto
    @State var randomExcerpt: Int = 0
    @State var randomPart: Int = 0
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                HStack {
                    Spacer()
                }
                Text(
                    randomComposition.name
                )
                    .font(.largeTitle)
                    .fixedSize(horizontal: false, vertical: true)
                Text(
                    randomComposition.composer
                )
                    .font(.headline)
                    .italic()
                    .padding(.bottom)
                Text(
                    randomComposition.date
                )
                Group {
                    HStack {
                        Text("Era:")
                            .font(.headline)
                        Text(randomComposition.era)
                    }

                    HStack {
                        Text("Genre:")
                            .font(.headline)
                        Text(randomComposition.genre)
                    }

                    Divider()
                        .background(Color.green)
                        .padding(.horizontal)
                }
                
                Text(
                    randomComposition
                        .excerpts[randomExcerpt]
                        .description
                )
                .font(.title)
                Text(
                    randomComposition
                        .excerpts[randomExcerpt]
                        .measures
                )
                Text(
                    randomComposition
                        .excerpts[randomExcerpt]
                        .pictures[randomPart][0]
                )
            }
            .padding()
           
            Image(
                randomComposition
                    .excerpts[randomExcerpt]
                    .pictures[randomPart][1]
            )
                .resizable()
                .scaledToFit()
            
            Spacer()
           
        }
        .onAppear() {
            self.populateFavorites()
            self.generateExcerpt()
        }
        .navigationBarTitle("Random Excerpt", displayMode: .inline)
        .navigationBarItems(trailing: Button(action: {
            self.generateExcerpt()
        }) {
            Text("Randomize")
        })
    }
    
    func populateFavorites() {
        var favoritesArray: [Composition] = []
        
        for composition in allCompositions {
            if (favorites.contains(String(composition.id))) {
                favoritesArray.append(composition)
            }
        }
        self.favoriteCompositions = favoritesArray
    }
    
    
    func generateExcerpt() {
        var tempRandomComposition: Composition
        if settings.selectedRandoms == 1 && favoriteCompositions.count > 0 {
            repeat {
                tempRandomComposition = favoriteCompositions.randomElement()!
            } while (tempRandomComposition.id == randomComposition.id && favoriteCompositions.count > 1)
        } else {
            repeat {
                tempRandomComposition = allCompositions.randomElement()!
            } while (tempRandomComposition.id == randomComposition.id )
        }
        randomComposition = tempRandomComposition
            
        randomExcerpt = Int.random(in: 0 ..< randomComposition.excerpts.count)
        
        randomPart = Int.random(in: 0 ..< randomComposition.excerpts[randomExcerpt].pictures.count)
    }
}

struct RandomCompositionView_Previews: PreviewProvider {
    static var previews: some View {
        RandomCompositionView()
    }
}
