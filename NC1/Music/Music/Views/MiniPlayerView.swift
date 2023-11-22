import SwiftUI

struct MiniPlayerView: View {
    var song : Song
    var body: some View {
        HStack {

            HStack {
                // Immagine dell'artista
                Image(systemName: song.imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)

                // Informazioni sulla canzone e controlli di riproduzione
                VStack(alignment: .leading) {
                    //Titolo della canzone
                    
                }

                Spacer()

                // Controlli di riproduzione
                Image(systemName: "play.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .onTapGesture {
                        // Aggiungi azioni per gestire la riproduzione/pausa
                    }
            }
            .padding()
        }
        .background(Color.gray.opacity(0.8))
        .cornerRadius(20)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


#Preview {
    MiniPlayerView(song: Song(imageName: "trapsoul", title: "", artist: ""))
}
