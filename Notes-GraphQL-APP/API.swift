// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct NewNote: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - title
  ///   - date
  ///   - note
  public init(title: Swift.Optional<String?> = nil, date: Swift.Optional<String?> = nil, note: Swift.Optional<String?> = nil) {
    graphQLMap = ["title": title, "date": date, "note": note]
  }

  public var title: Swift.Optional<String?> {
    get {
      return graphQLMap["title"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var date: Swift.Optional<String?> {
    get {
      return graphQLMap["date"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "date")
    }
  }

  public var note: Swift.Optional<String?> {
    get {
      return graphQLMap["note"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "note")
    }
  }
}

public final class CreateNewNoteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation createNewNote($newNote: NewNote) {
      createNote(note: $newNote) {
        __typename
        id
        title
        date
        note
      }
    }
    """

  public let operationName: String = "createNewNote"

  public var newNote: NewNote?

  public init(newNote: NewNote? = nil) {
    self.newNote = newNote
  }

  public var variables: GraphQLMap? {
    return ["newNote": newNote]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("createNote", arguments: ["note": GraphQLVariable("newNote")], type: .object(CreateNote.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createNote: CreateNote? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "createNote": createNote.flatMap { (value: CreateNote) -> ResultMap in value.resultMap }])
    }

    public var createNote: CreateNote? {
      get {
        return (resultMap["createNote"] as? ResultMap).flatMap { CreateNote(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createNote")
      }
    }

    public struct CreateNote: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Note"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("date", type: .scalar(String.self)),
          GraphQLField("note", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, title: String? = nil, date: String? = nil, note: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Note", "id": id, "title": title, "date": date, "note": note])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return resultMap["title"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var date: String? {
        get {
          return resultMap["date"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "date")
        }
      }

      public var note: String? {
        get {
          return resultMap["note"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "note")
        }
      }
    }
  }
}

public final class UpdateNoteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation updateNote($id: ID, $note: NewNote) {
      updateNote(id: $id, note: $note) {
        __typename
        id
        title
        date
        note
      }
    }
    """

  public let operationName: String = "updateNote"

  public var id: GraphQLID?
  public var note: NewNote?

  public init(id: GraphQLID? = nil, note: NewNote? = nil) {
    self.id = id
    self.note = note
  }

  public var variables: GraphQLMap? {
    return ["id": id, "note": note]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("updateNote", arguments: ["id": GraphQLVariable("id"), "note": GraphQLVariable("note")], type: .object(UpdateNote.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateNote: UpdateNote? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateNote": updateNote.flatMap { (value: UpdateNote) -> ResultMap in value.resultMap }])
    }

    public var updateNote: UpdateNote? {
      get {
        return (resultMap["updateNote"] as? ResultMap).flatMap { UpdateNote(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "updateNote")
      }
    }

    public struct UpdateNote: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Note"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("date", type: .scalar(String.self)),
          GraphQLField("note", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, title: String? = nil, date: String? = nil, note: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Note", "id": id, "title": title, "date": date, "note": note])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return resultMap["title"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var date: String? {
        get {
          return resultMap["date"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "date")
        }
      }

      public var note: String? {
        get {
          return resultMap["note"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "note")
        }
      }
    }
  }
}

public final class DeleteNoteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation deleteNote($id: ID) {
      deleteNote(id: $id) {
        __typename
        id
        title
        date
        note
      }
    }
    """

  public let operationName: String = "deleteNote"

  public var id: GraphQLID?

  public init(id: GraphQLID? = nil) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("deleteNote", arguments: ["id": GraphQLVariable("id")], type: .object(DeleteNote.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteNote: DeleteNote? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteNote": deleteNote.flatMap { (value: DeleteNote) -> ResultMap in value.resultMap }])
    }

    public var deleteNote: DeleteNote? {
      get {
        return (resultMap["deleteNote"] as? ResultMap).flatMap { DeleteNote(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "deleteNote")
      }
    }

    public struct DeleteNote: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Note"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("date", type: .scalar(String.self)),
          GraphQLField("note", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, title: String? = nil, date: String? = nil, note: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Note", "id": id, "title": title, "date": date, "note": note])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String? {
        get {
          return resultMap["title"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var date: String? {
        get {
          return resultMap["date"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "date")
        }
      }

      public var note: String? {
        get {
          return resultMap["note"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "note")
        }
      }
    }
  }
}

public final class FetchAllNotesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query FetchAllNotes {
      getAllNotes {
        __typename
        elements {
          __typename
          id
          title
          note
          date
        }
      }
    }
    """

  public let operationName: String = "FetchAllNotes"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getAllNotes", type: .object(GetAllNote.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getAllNotes: GetAllNote? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getAllNotes": getAllNotes.flatMap { (value: GetAllNote) -> ResultMap in value.resultMap }])
    }

    public var getAllNotes: GetAllNote? {
      get {
        return (resultMap["getAllNotes"] as? ResultMap).flatMap { GetAllNote(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "getAllNotes")
      }
    }

    public struct GetAllNote: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Notes"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("elements", type: .list(.object(Element.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(elements: [Element?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Notes", "elements": elements.flatMap { (value: [Element?]) -> [ResultMap?] in value.map { (value: Element?) -> ResultMap? in value.flatMap { (value: Element) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var elements: [Element?]? {
        get {
          return (resultMap["elements"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Element?] in value.map { (value: ResultMap?) -> Element? in value.flatMap { (value: ResultMap) -> Element in Element(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Element?]) -> [ResultMap?] in value.map { (value: Element?) -> ResultMap? in value.flatMap { (value: Element) -> ResultMap in value.resultMap } } }, forKey: "elements")
        }
      }

      public struct Element: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Note"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .scalar(GraphQLID.self)),
            GraphQLField("title", type: .scalar(String.self)),
            GraphQLField("note", type: .scalar(String.self)),
            GraphQLField("date", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID? = nil, title: String? = nil, note: String? = nil, date: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Note", "id": id, "title": title, "note": note, "date": date])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID? {
          get {
            return resultMap["id"] as? GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var note: String? {
          get {
            return resultMap["note"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "note")
          }
        }

        public var date: String? {
          get {
            return resultMap["date"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "date")
          }
        }
      }
    }
  }
}
