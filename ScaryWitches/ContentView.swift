//  ContentView.swift
//  ScaryWitches
//  Created by Abraham Vazquez on 05/06/25.


import SwiftUI

struct ContentView: View {
    
    @State private var products: [SWProduct] = SWProduct.sampleData
    
    private var groupedProducts: [String: [SWProduct]] {
        Dictionary(grouping: products, by: { $0.category })
    }
    
    private var categories: [String] {
        groupedProducts.keys.sorted()
    }
    
    var body: some View {
        
        NavigationStack {
            
            List {
                
                ForEach (categories, id: \.self) { category in
                    
                    Section(header: Text(category).font(.headline)) {
                        
                        ForEach (self.groupedProducts[category]!) { product in
                            NavigationLink(destination: SWProductDetailView(product: product)) {
                                SWProductRow(swProduct: product)
                            }
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Nuestro Menú")
            
        }
    }
}


#Preview {
    ContentView()
}
