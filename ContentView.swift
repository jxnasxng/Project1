//
//  ContentView.swift
//  Spotify UI
//
//  Created by Jina Song on 2/12/26.
//

import SwiftUI

struct ContentView: View {
    @State private var playbackProgress: Double = 0.3
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.up")
                    .foregroundStyle(.white)
                Spacer()
                Text("pixies autumn")
                    .foregroundStyle(.white)
                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "ellipsis")
                    .foregroundStyle(.white)
            }
            Spacer()
            
            Image("doolittle")
                .resizable()
                .scaledToFit()
            Spacer()

            HStack {
                VStack(alignment: .leading){
                    Text("Monkey Gone To Heaven")
                        .font(.system(size: 25))
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    Text("Pixies")
                        .font(.system(size: 15))
                        .foregroundStyle(.white)
                        .opacity(0.7)
                }
                Spacer()
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .foregroundStyle(.green)
                    .frame(width: 30, height: 30)
            }
            Slider(value: $playbackProgress, in: 0.0...1.0)
                        .accentColor(.white)
            HStack{
                Text("0:54")
                    .foregroundStyle(.white)
                    .font(.system(size: 12))
                    .opacity(0.8)
                Spacer()
                Text("2:55")
                    .foregroundStyle(.white)
                    .font(.system(size: 12))
                    .opacity(0.8)
            }
            Spacer()
            HStack{
                Image(systemName: "shuffle")
                    .resizable()
                    .frame(width: 25, height: 23)
                    .foregroundStyle(.green)
                Spacer()
                Image(systemName: "backward.end.fill")
                    .resizable()
                    .frame(width: 27, height: 25)
                    .foregroundStyle(.white)
                Spacer()
                Image(systemName: "pause.circle.fill")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundStyle(.white)
                Spacer()
                Image(systemName: "forward.end.fill")
                    .resizable()
                    .frame(width: 27, height: 25)
                    .foregroundStyle(.white)
                Spacer()
                Image(systemName: "repeat")
                    .resizable()
                    .frame(width: 23, height: 25)
                    .foregroundStyle(.white)
            }
            Spacer()
            HStack{
                Image(systemName: "hifispeaker.2.badge.minus")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundStyle(.green)
                Text("Wired Connection")
                    .foregroundStyle(.green)
                    .font(.system(size: 15))
                Spacer()
                Image(systemName: "square.and.arrow.up")
                    .foregroundStyle(.white)
                Image(systemName: "text.line.first.and.arrowtriangle.forward")
                    .foregroundStyle(.white)
            }
            
         }
        .padding()
        .background(Color(red: 52/255.0, green: 54/255.0, blue: 22/255.0))
    }
}

#Preview {
    ContentView()
}
