//
//  ContentView.swift
//  GildedRose
//
//  Created by Milan Anusjak on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model: ContentViewModel

    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(model.items) { item in
                        HStack {
                            Text(item.name)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("\(item.sellIn)")
                            Text("\(item.quality)")
                        }
                    }
                } header: {
                    HStack {
                        Text("NAME")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("SEL")
                        Text("QUA")
                    }
                }
            }
            .navigationTitle(Text("Gilded Rose"))
            .toolbar {
                Button("Test Update") {
                    print("---------- UPDATE ----------")
                    model.updateQuality()
                }
            }
        }
    }
}
