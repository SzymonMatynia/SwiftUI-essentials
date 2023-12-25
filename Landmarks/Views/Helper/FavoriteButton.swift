import SwiftUI


struct FavoriteButton: View {
    @Binding var isSet: Bool

    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
        .animation(.bouncy, value: isSet)
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
