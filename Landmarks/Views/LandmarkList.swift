import SwiftUI


struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Label("I am not doing anything :D", systemImage: "plus")
                })
                ForEach(landmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
                
                
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
            
        }
    }
}


#Preview {
    LandmarkList()
}
