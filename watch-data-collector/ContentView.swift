//
//  ContentView.swift
//  watch-data-collector
//
//  Created by Josh Knauer on 2023-11-12.
//

import SwiftUI

struct WatchMotionRecording : Identifiable{
    let id = UUID()
    let description: String
    let dateTime: Date
    let duration: TimeInterval
}

struct ContentView: View {
   @State var recordings = [
        WatchMotionRecording(description: "one", dateTime: Date(), duration: 1000),
        WatchMotionRecording(description: "two", dateTime: Date(), duration: 1000),
        WatchMotionRecording(description: "three", dateTime: Date(), duration: 1000),
        WatchMotionRecording(description: "four", dateTime: Date(), duration: 1000),
        WatchMotionRecording(description: "five", dateTime: Date(), duration: 1000),
        WatchMotionRecording(description: "six", dateTime: Date(), duration: 1000)
    ]
    var body: some View {
        NavigationStack{
            
                List(recordings) { recording in
                    Text(recording.description)
                }
                .navigationTitle("Watch Data Collector")
                .toolbar {
                    Button(action: {
                        let recording = WatchMotionRecording(description: "watch", dateTime: Date(), duration: 1000)
                        recordings.append(recording)
                    }) {
                        Image(systemName: "plus.circle")
                    }
                }
        }
        
    }
}

#Preview {
    ContentView()
}
