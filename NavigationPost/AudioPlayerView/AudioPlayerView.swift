//
//  AudioPlayerView.swift
//  NavigationPost
//
//  Created by Aysel on 16.03.2024.
//

import SwiftUI
import SwiftData
import AVFoundation

struct AudioFile: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let fileName: String
}

struct AudioPlayerView: View {
    
    @State private var isPlaying = false

    private let audioPlayer = AVPlayer()
    
    private let audioFiles = [
        AudioFile(name: "Awesome music", fileName: "melody"),
        AudioFile(name: "Flute and whole drum ensemble", fileName: "melody-2"),
        AudioFile(name: "Background drums", fileName: "melody-3"),
    ]
    @State private var selectedAudio: AudioFile?
    
    var body: some View {
        VStack(spacing: 10) {
            List(audioFiles) { file in
                Button(
                    action: {
                        selectedAudio = file
                        playAudio(for: file)
                    },
                    label: {
                        HStack {
                            Text(file.name)
                            Spacer()
                            if file == selectedAudio {
                                Image(systemName: "checkmark.seal")
                            }
                        }
                        
                    }
                )
            }
            .navigationTitle("Music")
            .listStyle(.plain)
            
            Button(action: {
                guard selectedAudio != nil else { return }
                
                if isPlaying {
                    audioPlayer.pause()
                } else {
                    audioPlayer.play()
                }
        
                isPlaying.toggle()
            }, label: {
                Text(
                    (isPlaying && selectedAudio != nil) ? "Pause 🛑" : "Play 🎶"
                ).font(.largeTitle)
            })
            .foregroundStyle(.black)
        }
    }
    
    private func playAudio(for audioFile: AudioFile) {
        guard let url = Bundle.main.url(
            forResource: audioFile.fileName,
            withExtension: "mp3"
        ) else {
            return
        }

        let musicItem = AVPlayerItem(url: url)
        audioPlayer.replaceCurrentItem(with: musicItem)
    }
}

#Preview {
    AudioPlayerView()
}
