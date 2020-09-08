// 99日目 API表示
// 98日目の正解は「１５個」でした
// 参考URL: https://qiita.com/maoyama/items/fd9e82cd91abd3256631

// 問題: APIを取得したLIST表示したときに、一番上に何が出てくるでしょうか？

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
            RepositoryRow(repository: repository)
        }
    }
}

struct RepositoryRow: View {
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




