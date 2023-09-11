
import SwiftUI

struct UserView: View {
    let user: CachedUser
    
    var body: some View {
        List {
            Section {
                Text(user.wrappedAbout)
                    .padding(.vertical)
            } header: {
                Text("About")
            }
            
            Section {
                Text(user.wrappedAddress)
                Text(user.wrappedCompany)
                Text(user.wrappedEmail)
            } header: {
                Text("Contact details")
            }
            
            Section {
                ForEach(user.friendsArray) { friend in
                    Text(friend.wrappedName)
                }
            } header: {
                Text("Friends")
            }
        }
        .listStyle(.grouped)
        .navigationTitle(user.wrappedName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//struct UserView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserView(user: User.example)
//    }
//}
