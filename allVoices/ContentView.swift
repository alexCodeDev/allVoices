//
//  ContentView.swift
//  allVoices
//
//  Created by Aleksandr on 08/09/22.
//
import SwiftUI

struct ContentView: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    
    var body: some View {
        NavigationView {
            VStack {
                RecordingsList(audioRecorder: audioRecorder)
                if audioRecorder.recording == false {
                    Button(action: {print(self.audioRecorder.startRecording())}) {
                        Image(systemName: "record.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 70, height: 70)
                            .clipped()
                            .foregroundColor(.red)
                            .padding(.bottom, 0)
                    }
                } else {
                    HStack{
                        Text("Voice recording")
                        Image(systemName: "tortoise")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            
                            .foregroundColor(.green)
                    }
                    HStack {
                        Button(action: {self.audioRecorder.stopRecording()} ) {
                            Image(systemName: "stop.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 70, height: 70)
                                .clipped()
                                .foregroundColor(.red)
                                .padding(.bottom, 0)
                        }
                    }
                    
                    
                }
            }
                .navigationBarTitle("Recordings")
                .navigationBarItems(trailing: EditButton())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(audioRecorder: AudioRecorder())
    }
}

