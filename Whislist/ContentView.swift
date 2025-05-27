//
//  ContentView.swift
//  Whislist
//
//  Created by Ansh Hardaha on 27/05/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var wishes: [Wish]
    @State private var isAlterting: Bool = false
    @State private var title: String = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(wishes) { wish in
                    Text(wish.title)
                        .font(.title.weight(.light))
                        .padding(.vertical, 2)
                        .swipeActions {
                            Button("Delete", role: .destructive) {
                                modelContext.delete(wish)
                            }
                        }
                }
            }
            .navigationTitle("WishList")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isAlterting.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .imageScale(.large)
                    }
                }
                if wishes.isEmpty != true {
                    ToolbarItem(placement: .bottomBar) {
                        Text(" \(wishes.count) wish\(wishes.count == 1 ? "" : "es")" )
                    }
                }
            }
            .alert("Create a wish", isPresented: $isAlterting){
                TextField("Enter a wish", text: $title)
                
                
                Button {
                    modelContext.insert(Wish(title: title))
                    title = ""
                }label: {
                    Text("Save")
                }
            }
            .overlay {
                if wishes.isEmpty {
                    ContentUnavailableView("My Wishlist", systemImage: "heart.circle", description: Text("No wishes yet. Add one to get Started"))
                }
            }
        }
    }
}

#Preview("List With Sample data") {
    let container = try! ModelContainer(for: Wish.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
    
    container.mainContext.insert(Wish(title: "Master SwiftData"))
    container.mainContext.insert(Wish(title: "Buy a new iPhone"))
    container.mainContext.insert(Wish(title: "Practice Latin dances"))
    container.mainContext.insert(Wish(title: "Travel to Europe"))
    container.mainContext.insert(Wish(title: "Make a postive Impact"))
    
    return ContentView()
        .modelContainer(container)
    
}

#Preview("Empty List") {
    ContentView()
        .modelContainer(for: Wish.self, inMemory: true)
}
