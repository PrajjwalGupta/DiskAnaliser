//
//  ContentView.swift
//  DiskAnaliser
//
//  Created by Prajjwal on 08/09/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var fetcher = DiskInfoFetcher()
    var body: some View {
        VStack {
//            Button("Fetch") {
//                let output = try? fetcher.execute("df -k")
//                print(output ?? "none")
//            }
            Text("fetched \(fetcher.diskInfos.count)")
        }
        .padding()
        .task {
            do {
                fetcher.diskInfos = try await fetcher.getDiskInfo()
            } catch {
                fetcher.error = error
                }
        }
    }
}

#Preview {
    ContentView()
}
