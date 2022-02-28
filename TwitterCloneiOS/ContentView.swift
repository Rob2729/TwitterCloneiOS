import SwiftUI

let primary = Color(red: 0.082, green: 0.128, blue: 0.168)
let secondary = Color(red: 0.511, green: 0.568, blue: 0.614)


struct ContentView: View {
    var body: some View {
        ZStack {
            primary
                .edgesIgnoringSafeArea(.all)
            VStack {
                Header()
                ScrollView {
                    Posts()
                }
                
                bottomNav()
            }
            fab()
        }
    }
}

struct Header : View {
    var body : some View {
        HStack {
            Image("profilePhoto")
                .resizable()
                .frame(width:30, height: 30)
                .clipShape(Circle())
                .font(.system(size: 18))
            Spacer()
            Image("TwitterLogo")
                .resizable()
                .frame(width: 45, height: 45)
            Spacer()
            Image(systemName: "star")
                .padding(6)
                .font(.system(size: 18))
                .foregroundColor(.white)
        }
        .padding(.init(top: 5, leading: 15, bottom: 0, trailing: 15))
    }
}

struct Post : View {
    var body: some View {
        HStack (alignment: .top, spacing: 12) {
            Image("userProfileImage")
                .resizable()
                .frame(width:30, height: 30)
                .background(Color.white)
                .clipShape(Circle())
            
            VStack (alignment: .leading, spacing: 4) {
                HStack {
                    Text("Test User")
                        .font(.subheadline.bold())
                        .foregroundColor(.white)
                    Text("@TestUser")
                        .foregroundColor(secondary)
                        .font(.caption)
                    Circle()
                        .foregroundColor(secondary)
                        .frame(width:2, height: 2)
                        .font(.caption)
                    Text("12h")
                        .foregroundColor(secondary)
                        .font(.caption)
                        
                    
                    Spacer()
                    
                    Image(systemName: "ellipsis")
                        .foregroundColor(secondary)
                }
                
                Text("When you have a dream, you’ve got to grab it and never let go.")
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                
                HStack {
                    Button {
                        //action here
                    } label : {
                        Image(systemName: "bubble.left")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Text("24")
                            .font(.system(size: 12))
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Text("302")
                            .font(.system(size: 12))
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Text("150")
                            .font(.system(size: 12))
                            .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.init(top: 10, leading: 0, bottom: 0, trailing: 20))
            }
            
        }
        .padding(.init(top: 10, leading: 10, bottom: 0, trailing: 7))
        
        Divider()
    }
}

struct Posts : View {
    var body: some View {
        ForEach(0..<7) { i in
            Post()
            
        }
    }
}

struct bottomNav : View {
    var body: some View {
        Divider()
            //.padding(.init(top: -8, leading: 0, bottom: 15, trailing: 0))
        
        HStack{
            VStack {
                Image(systemName: "house.fill")
                Text("")
            }
            Spacer()
            VStack {
                Image(systemName: "magnifyingglass")
                Text("")
            }
            Spacer()
            VStack {
                Image(systemName: "circle.grid.cross")
                Text("")
            }
            Spacer()
            VStack {
                Image(systemName: "bell")
                Text("")
            }
            Spacer()
            VStack {
                Image(systemName: "envelope")
                Text("")
            }
        }
        .foregroundColor(.white)
        .padding(.horizontal)
    }
    
}

struct fab : View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                Button() {
                    
                } label : {
                    Image(systemName: "plus")
                        .font(.title)
                        .frame(width:60, height: 60)
                        .background(Color.blue)
                        .clipShape(Circle())
                        .foregroundColor(.white)
                }
            }
            .padding(.init(top: 10, leading: 10, bottom: 65, trailing: 10))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
