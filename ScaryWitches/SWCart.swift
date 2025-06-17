//  SWCart.swift
//  ScaryWitches
//  Created by Abraham Vazquez on 17/06/25.

import SwiftUI

class SWCart: ObservableObject {
    
    // 2. Usamos @Published. Este es el "ingrediente mágico".
    // Cada vez que este array 'items' cambie (se añada o quite un producto),
    // @Published notificará a todas las vistas que estén observando este objeto.
    @Published var items: [SWProduct] = []
    
    // 3. Una propiedad computada para calcular el total fácilmente.
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    // 4. Un método para añadir productos al carrito.
    func add(_ product: SWProduct) {
        items.append(product)
        print("\n\n  items count:  ---->>>> \(items.count) \n\n")
    }
    
    // 5. Un método para eliminar productos (será útil para la vista del carrito).
    func remove(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
