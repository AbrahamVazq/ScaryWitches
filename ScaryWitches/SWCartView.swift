//  SWCartView.swift
//  ScaryWitches
//  Created by Abraham Vazquez on 17/06/25.

import SwiftUI

struct SWCartView: View {
    
    @EnvironmentObject private var swCart: SWCart
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                if swCart.items.isEmpty {
                    
                    VStack(spacing: 20 ) {
                        
                        Image(systemName: "cart.fill")
                            .font(.largeTitle)
                            .scaleEffect(2.0)
                            .foregroundStyle(.secondary)
                        
                        Text("Tu Carrito está vacío")
                            .font(.headline)
                        
                    }
                    
                } else {
                    
                    List {
                        
                        ForEach(swCart.items) { product in
                            
                            HStack {
                                
                                Text(product.name)
                                Spacer()
                                Text(String(format: "%.2f", product.price))
                                
                            }
                            
                        }
                        .onDelete(perform: swCart.remove )
                        
                    }
                    
                }
                
                Section {
                    
                    HStack {
                        
                        Text("Total -> ")
                            .font(.headline)
                        
                        Spacer()
                        
                        Text(String(format: "$%.2f", swCart.totalPrice))
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        
                    }
                    .padding()
                    
                    Button("Proceder al Pago") {
                        // La lógica de pago iría aquí. Por ahora, un simple print.
                        print("Iniciando proceso de pago...")
                    }
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    
                }
                
                
            }
            .navigationTitle("Mi Carrito")
            
        }
        
        
    }
}

#Preview {
    //    SWCartView()
    
    // Preparamos una vista previa con un carrito que ya tiene items.
    let sampleCart = SWCart()
    sampleCart.add(SWProduct.sampleData[0])
    sampleCart.add(SWProduct.sampleData[2])
    
    return SWCartView()
        .environmentObject(sampleCart)
    
}
