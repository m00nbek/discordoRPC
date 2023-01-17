//
//  ContentView.swift
//  DiscordoRPC
//
//  Created by m00nbek Melikulov on 1/16/23.
//

import SwiftUI
import CoreData
import SwordRPC

struct ContentView: View {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.endTime, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    var body: some View {
        NavigationView {
            Text("Hello World")
            List {
                ForEach(items) { item in
                    NavigationLink {
                        //                        Text("Item at \(item.startTime, formatter: itemFormatter)")
                    } label: {
                        //                        Text(item.startTime!, formatter: itemFormatter)
                    }
                }
            }
            
        }
    }
}


private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
