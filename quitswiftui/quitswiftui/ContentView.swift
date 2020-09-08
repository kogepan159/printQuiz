// 98日目 API取得
// 97日目の正解は「戻る」でした
// 参考URL: https://qiita.com/maoyama/items/fd9e82cd91abd3256631

// 問題: APIで取得できるリポジトリの数は？？

import SwiftUI
import Foundation
import Combine

class FollowingUserStore: ObservableObject {
    @Published var repositories: [Repository] = []

    init() {
        load()
    }

    func load() {
        let url = URL(string: "https://api.github.com/users/kogepan159/repos")!
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                self.repositories = try! JSONDecoder().decode([Repository].self, from: data!)
                print(self.repositories.count)
            }
        }.resume()
    }
}

struct Repository: Decodable, Identifiable {
    var id: Int
    var name: String
}

struct ContentView: View {
    @ObservedObject var store = FollowingUserStore()

    var body: some View {
        List(store.repositories) { (repository) in
            UserRow(repository: repository)
        }
    }
}

struct UserRow: View {
    var repository: Repository

    var body: some View {
        VStack {
            Text(repository.name)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().colorScheme(.light)
    }
}




