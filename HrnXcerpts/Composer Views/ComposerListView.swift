//
//  ComposerListView.swift
//  HrnXcerpts
//
//  Created by Alexander Burdiss on 9/14/20.
//  Copyright © 2020 Alexander Burdiss. All rights reserved.
//

import SwiftUI

struct ComposerListView: View {
    
    var model = HornContentModel().composers
    
    var body: some View {
        NavigationView {
            List {
                ForEach(model) { item in
                    NavigationLink(destination: ComposerDetailView(composer: item)) {
                        Text(item.name)
                    }
                }
            }
        .navigationBarTitle("Composers")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ComposerListView_Previews: PreviewProvider {
    static var previews: some View {
        ComposerListView()
    }
}
