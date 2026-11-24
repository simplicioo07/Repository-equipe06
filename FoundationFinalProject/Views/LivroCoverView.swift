import SwiftUI

struct LivroCoverView: View {
    
    let cover: URL?
    
    var body: some View {
        AsyncImage(url: cover) { image in
            image
                .resizable()
                .frame(width: 140, height: 210)
        } placeholder: {
            ProgressView()
                .frame(width: 140, height: 210)
        }
    }
}
