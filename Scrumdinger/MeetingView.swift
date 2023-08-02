//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Nelsin Martin-Burnett on 2023-08-02.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 10, total: 15)
            HStack {
                //What is leading alignment? What is trailing alignment?
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed").font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                    //Where does the hourglass come from?
                }
                Spacer()
                VStack (alignment: .trailing) {
                    Text("Seconds Remaining").font(.caption).bold()
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                    //Where does the hourglass come from?
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutesw")
            Circle().strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }.padding()
        
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
