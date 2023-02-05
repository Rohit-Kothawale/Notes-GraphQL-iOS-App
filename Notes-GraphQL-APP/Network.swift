//
//  Network.swift
//  Notes-GraphQL-APP
//
//  Created by Rohit Kothawale on 04/02/23.
//

import Apollo

struct Network {
    static var shared = Network()

    private(set) lazy var apollo: ApolloClient = {
        let url = URL(string: "http://localhost:4000/graphql")!
        return ApolloClient(url: url)
    }()
}
