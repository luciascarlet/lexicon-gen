import ATProtoCore
import ATProtoMacro
import ATProtoXRPC
import Foundation
import AnyCodable
public enum App {
}
public extension App {
    enum Bsky {
    }
}
public extension App.Bsky {
    enum Actor {
    }
}
public extension App.Bsky.Actor {
    enum Defs {
    }
}
public extension App.Bsky {
    enum Embed {
    }
}
public extension App.Bsky {
    enum Feed {
    }
}
public extension App.Bsky.Feed {
    enum Defs {
    }
}
public extension App.Bsky {
    enum Graph {
    }
}
public extension App.Bsky.Graph {
    enum Defs {
    }
}
public extension App.Bsky {
    enum Labeler {
    }
}
public extension App.Bsky.Labeler {
    enum Defs {
    }
}
public extension App.Bsky {
    enum Notification {
    }
}
public extension App.Bsky {
    enum Richtext {
    }
}
public extension App.Bsky {
    enum Unspecced {
    }
}
public extension App.Bsky.Unspecced {
    enum Defs {
    }
}
public enum Com {
}
public extension Com {
    enum Atproto {
    }
}
public extension Com.Atproto {
    enum Admin {
    }
}
public extension Com.Atproto.Admin {
    enum Defs {
    }
}
public extension Com.Atproto {
    enum Identity {
    }
}
public extension Com.Atproto {
    enum Label {
    }
}
public extension Com.Atproto.Label {
    enum Defs {
    }
}
public extension Com.Atproto {
    enum Moderation {
    }
}
public extension Com.Atproto.Moderation {
    enum Defs {
    }
}
public extension Com.Atproto {
    enum Repo {
    }
}
public extension Com.Atproto {
    enum Server {
    }
}
public extension Com.Atproto.Server {
    enum Defs {
    }
}
public extension Com.Atproto {
    enum Sync {
    }
}
public extension Com.Atproto {
    enum Temp {
    }
}
public extension App.Bsky.Actor.Defs {
    struct AdultContentPref: UnionCodable, Hashable {
        @Indirect
        public var enabled: Bool
        public init(
            enabled: Bool
        ) {
            self._enabled = .wrapped(enabled)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#adultContentPref")
    }
}
public extension App.Bsky.Actor.Defs {
    struct ContentLabelPref: UnionCodable, Hashable {
        @Indirect
        public var label: String
        @Indirect
        public var labelerDid: String?
        @Indirect
        public var visibility: String
        public init(
            label: String,
            labelerDid: String? = nil,
            visibility: String
        ) {
            self._label = .wrapped(label)
            self._labelerDid = .wrapped(labelerDid)
            self._visibility = .wrapped(visibility)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#contentLabelPref")
    }
}
public extension App.Bsky.Actor.Defs {
    struct FeedViewPref: UnionCodable, Hashable {
        @Indirect
        public var feed: String
        @Indirect
        public var hideQuotePosts: Bool?
        @Indirect
        public var hideReplies: Bool?
        @Indirect
        public var hideRepliesByLikeCount: Int?
        @Indirect
        public var hideRepliesByUnfollowed: Bool?
        @Indirect
        public var hideReposts: Bool?
        public init(
            feed: String,
            hideQuotePosts: Bool? = nil,
            hideReplies: Bool? = nil,
            hideRepliesByLikeCount: Int? = nil,
            hideRepliesByUnfollowed: Bool? = nil,
            hideReposts: Bool? = nil
        ) {
            self._feed = .wrapped(feed)
            self._hideQuotePosts = .wrapped(hideQuotePosts)
            self._hideReplies = .wrapped(hideReplies)
            self._hideRepliesByLikeCount = .wrapped(hideRepliesByLikeCount)
            self._hideRepliesByUnfollowed = .wrapped(hideRepliesByUnfollowed)
            self._hideReposts = .wrapped(hideReposts)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#feedViewPref")
    }
}
public extension App.Bsky.Actor.Defs {
    struct HiddenPostsPref: UnionCodable, Hashable {
        @Indirect
        public var items: [ATURI]
        public init(
            items: [ATURI]
        ) {
            self._items = .wrapped(items)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#hiddenPostsPref")
    }
}
public extension App.Bsky.Actor.Defs {
    struct InterestsPref: UnionCodable, Hashable {
        @Indirect
        public var tags: [String]
        public init(
            tags: [String]
        ) {
            self._tags = .wrapped(tags)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#interestsPref")
    }
}
public extension App.Bsky.Actor.Defs {
    struct ModPrefItem: UnionCodable, Hashable {
        @Indirect
        public var did: String
        public init(
            did: String
        ) {
            self._did = .wrapped(did)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#modPrefItem")
    }
}
public extension App.Bsky.Actor.Defs {
    struct ModsPref: UnionCodable, Hashable {
        @Indirect
        public var mods: [App.Bsky.Actor.Defs.ModPrefItem]
        public init(
            mods: [App.Bsky.Actor.Defs.ModPrefItem]
        ) {
            self._mods = .wrapped(mods)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#modsPref")
    }
}
public extension App.Bsky.Actor.Defs {
    struct MutedWord: UnionCodable, Hashable {
        @Indirect
        public var targets: [App.Bsky.Actor.Defs.MutedWordTarget]
        @Indirect
        public var value: String
        public init(
            targets: [App.Bsky.Actor.Defs.MutedWordTarget],
            value: String
        ) {
            self._targets = .wrapped(targets)
            self._value = .wrapped(value)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#mutedWord")
    }
}
public extension App.Bsky.Actor.Defs {
    typealias MutedWordTarget = String
}
public extension App.Bsky.Actor.Defs {
    struct MutedWordsPref: UnionCodable, Hashable {
        @Indirect
        public var items: [App.Bsky.Actor.Defs.MutedWord]
        public init(
            items: [App.Bsky.Actor.Defs.MutedWord]
        ) {
            self._items = .wrapped(items)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#mutedWordsPref")
    }
}
public extension App.Bsky.Actor.Defs {
    struct PersonalDetailsPref: UnionCodable, Hashable {
        @Indirect
        public var birthDate: Date?
        public init(
            birthDate: Date? = nil
        ) {
            self._birthDate = .wrapped(birthDate)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#personalDetailsPref")
    }
}
public extension App.Bsky.Actor.Defs {
    typealias Preferences = [Union9<App.Bsky.Actor.Defs.AdultContentPref, App.Bsky.Actor.Defs.ContentLabelPref, App.Bsky.Actor.Defs.SavedFeedsPref, App.Bsky.Actor.Defs.PersonalDetailsPref, App.Bsky.Actor.Defs.FeedViewPref, App.Bsky.Actor.Defs.ThreadViewPref, App.Bsky.Actor.Defs.InterestsPref, App.Bsky.Actor.Defs.MutedWordsPref, App.Bsky.Actor.Defs.HiddenPostsPref>]
}
public extension App.Bsky.Actor.Defs {
    struct ProfileAssociated: UnionCodable, Hashable {
        @Indirect
        public var feedgens: Int?
        @Indirect
        public var labeler: Bool?
        @Indirect
        public var lists: Int?
        public init(
            feedgens: Int? = nil,
            labeler: Bool? = nil,
            lists: Int? = nil
        ) {
            self._feedgens = .wrapped(feedgens)
            self._labeler = .wrapped(labeler)
            self._lists = .wrapped(lists)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#profileAssociated")
    }
}
public extension App.Bsky.Actor.Defs {
    struct ProfileView: UnionCodable, Hashable {
        @Indirect
        public var avatar: String?
        @Indirect
        public var description: String?
        @Indirect
        public var did: String
        @Indirect
        public var displayName: String?
        @Indirect
        public var handle: String
        @Indirect
        public var indexedAt: Date?
        @Indirect
        public var labels: [Com.Atproto.Label.Defs.Label]?
        @Indirect
        public var viewer: App.Bsky.Actor.Defs.ViewerState?
        public init(
            avatar: String? = nil,
            description: String? = nil,
            did: String,
            displayName: String? = nil,
            handle: String,
            indexedAt: Date? = nil,
            labels: [Com.Atproto.Label.Defs.Label]? = nil,
            viewer: App.Bsky.Actor.Defs.ViewerState? = nil
        ) {
            self._avatar = .wrapped(avatar)
            self._description = .wrapped(description)
            self._did = .wrapped(did)
            self._displayName = .wrapped(displayName)
            self._handle = .wrapped(handle)
            self._indexedAt = .wrapped(indexedAt)
            self._labels = .wrapped(labels)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#profileView")
    }
}
public extension App.Bsky.Actor.Defs {
    struct ProfileViewBasic: UnionCodable, Hashable {
        @Indirect
        public var avatar: String?
        @Indirect
        public var did: String
        @Indirect
        public var displayName: String?
        @Indirect
        public var handle: String
        @Indirect
        public var labels: [Com.Atproto.Label.Defs.Label]?
        @Indirect
        public var viewer: App.Bsky.Actor.Defs.ViewerState?
        public init(
            avatar: String? = nil,
            did: String,
            displayName: String? = nil,
            handle: String,
            labels: [Com.Atproto.Label.Defs.Label]? = nil,
            viewer: App.Bsky.Actor.Defs.ViewerState? = nil
        ) {
            self._avatar = .wrapped(avatar)
            self._did = .wrapped(did)
            self._displayName = .wrapped(displayName)
            self._handle = .wrapped(handle)
            self._labels = .wrapped(labels)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#profileViewBasic")
    }
}
public extension App.Bsky.Actor.Defs {
    struct ProfileViewDetailed: UnionCodable, Hashable {
        @Indirect
        public var associated: App.Bsky.Actor.Defs.ProfileAssociated?
        @Indirect
        public var avatar: String?
        @Indirect
        public var banner: String?
        @Indirect
        public var description: String?
        @Indirect
        public var did: String
        @Indirect
        public var displayName: String?
        @Indirect
        public var followersCount: Int?
        @Indirect
        public var followsCount: Int?
        @Indirect
        public var handle: String
        @Indirect
        public var indexedAt: Date?
        @Indirect
        public var labels: [Com.Atproto.Label.Defs.Label]?
        @Indirect
        public var postsCount: Int?
        @Indirect
        public var viewer: App.Bsky.Actor.Defs.ViewerState?
        public init(
            associated: App.Bsky.Actor.Defs.ProfileAssociated? = nil,
            avatar: String? = nil,
            banner: String? = nil,
            description: String? = nil,
            did: String,
            displayName: String? = nil,
            followersCount: Int? = nil,
            followsCount: Int? = nil,
            handle: String,
            indexedAt: Date? = nil,
            labels: [Com.Atproto.Label.Defs.Label]? = nil,
            postsCount: Int? = nil,
            viewer: App.Bsky.Actor.Defs.ViewerState? = nil
        ) {
            self._associated = .wrapped(associated)
            self._avatar = .wrapped(avatar)
            self._banner = .wrapped(banner)
            self._description = .wrapped(description)
            self._did = .wrapped(did)
            self._displayName = .wrapped(displayName)
            self._followersCount = .wrapped(followersCount)
            self._followsCount = .wrapped(followsCount)
            self._handle = .wrapped(handle)
            self._indexedAt = .wrapped(indexedAt)
            self._labels = .wrapped(labels)
            self._postsCount = .wrapped(postsCount)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#profileViewDetailed")
    }
}
public extension App.Bsky.Actor.Defs {
    struct SavedFeedsPref: UnionCodable, Hashable {
        @Indirect
        public var pinned: [ATURI]
        @Indirect
        public var saved: [ATURI]
        @Indirect
        public var timelineIndex: Int?
        public init(
            pinned: [ATURI],
            saved: [ATURI],
            timelineIndex: Int? = nil
        ) {
            self._pinned = .wrapped(pinned)
            self._saved = .wrapped(saved)
            self._timelineIndex = .wrapped(timelineIndex)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#savedFeedsPref")
    }
}
public extension App.Bsky.Actor.Defs {
    struct ThreadViewPref: UnionCodable, Hashable {
        @Indirect
        public var prioritizeFollowedUsers: Bool?
        @Indirect
        public var sort: String?
        public init(
            prioritizeFollowedUsers: Bool? = nil,
            sort: String? = nil
        ) {
            self._prioritizeFollowedUsers = .wrapped(prioritizeFollowedUsers)
            self._sort = .wrapped(sort)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#threadViewPref")
    }
}
public extension App.Bsky.Actor.Defs {
    struct ViewerState: UnionCodable, Hashable {
        @Indirect
        public var blockedBy: Bool?
        @Indirect
        public var blocking: ATURI?
        @Indirect
        public var blockingByList: App.Bsky.Graph.Defs.ListViewBasic?
        @Indirect
        public var followedBy: ATURI?
        @Indirect
        public var following: ATURI?
        @Indirect
        public var muted: Bool?
        @Indirect
        public var mutedByList: App.Bsky.Graph.Defs.ListViewBasic?
        public init(
            blockedBy: Bool? = nil,
            blocking: ATURI? = nil,
            blockingByList: App.Bsky.Graph.Defs.ListViewBasic? = nil,
            followedBy: ATURI? = nil,
            following: ATURI? = nil,
            muted: Bool? = nil,
            mutedByList: App.Bsky.Graph.Defs.ListViewBasic? = nil
        ) {
            self._blockedBy = .wrapped(blockedBy)
            self._blocking = .wrapped(blocking)
            self._blockingByList = .wrapped(blockingByList)
            self._followedBy = .wrapped(followedBy)
            self._following = .wrapped(following)
            self._muted = .wrapped(muted)
            self._mutedByList = .wrapped(mutedByList)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.defs#viewerState")
    }
}
public extension App.Bsky.Actor {
    struct GetPreferences: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            public init(

            ) {

            }
            public let queryItems: [URLQueryItem] = []
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var preferences: App.Bsky.Actor.Defs.Preferences
            public init(
                preferences: App.Bsky.Actor.Defs.Preferences
            ) {
                self._preferences = .wrapped(preferences)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.actor.getPreferences"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Actor {
    struct GetProfile: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            public init(
                actor: String
            ) {
                self._actor = .wrapped(actor)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))

                return parameters
            }
        }
        public typealias Output = App.Bsky.Actor.Defs.ProfileViewDetailed
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.actor.getProfile"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Actor {
    struct GetProfiles: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actors: [String]
            public init(
                actors: [String]
            ) {
                self._actors = .wrapped(actors)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: actors.toQueryItems(name: "actors"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var profiles: [App.Bsky.Actor.Defs.ProfileViewDetailed]
            public init(
                profiles: [App.Bsky.Actor.Defs.ProfileViewDetailed]
            ) {
                self._profiles = .wrapped(profiles)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.actor.getProfiles"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Actor {
    struct GetSuggestions: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            public init(
                cursor: String? = nil,
                limit: Int? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var actors: [App.Bsky.Actor.Defs.ProfileView]
            @Indirect
            public var cursor: String?
            public init(
                actors: [App.Bsky.Actor.Defs.ProfileView],
                cursor: String? = nil
            ) {
                self._actors = .wrapped(actors)
                self._cursor = .wrapped(cursor)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.actor.getSuggestions"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Actor {
    struct Profile: UnionCodable, Hashable {
        @Indirect
        public var description: String?
        @Indirect
        public var displayName: String?
        @Indirect
        public var labels: Union1<Com.Atproto.Label.Defs.SelfLabels>?
        public init(
            description: String? = nil,
            displayName: String? = nil,
            labels: Union1<Com.Atproto.Label.Defs.SelfLabels>? = nil
        ) {
            self._description = .wrapped(description)
            self._displayName = .wrapped(displayName)
            self._labels = .wrapped(labels)
        }
        public static let typeValue = #LexiconDefID("app.bsky.actor.profile")
    }
}
public extension App.Bsky.Actor {
    struct PutPreferences: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var preferences: App.Bsky.Actor.Defs.Preferences
            public init(
                preferences: App.Bsky.Actor.Defs.Preferences
            ) {
                self._preferences = .wrapped(preferences)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.actor.putPreferences"
        public let input: Input?
    }
}
public extension App.Bsky.Actor {
    struct SearchActors: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var q: String?
            @Indirect
            public var term: String?
            public init(
                cursor: String? = nil,
                limit: Int? = nil,
                q: String? = nil,
                term: String? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._q = .wrapped(q)
                self._term = .wrapped(term)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: q.toQueryItems(name: "q"))
                parameters.append(contentsOf: term.toQueryItems(name: "term"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var actors: [App.Bsky.Actor.Defs.ProfileView]
            @Indirect
            public var cursor: String?
            public init(
                actors: [App.Bsky.Actor.Defs.ProfileView],
                cursor: String? = nil
            ) {
                self._actors = .wrapped(actors)
                self._cursor = .wrapped(cursor)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.actor.searchActors"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Actor {
    struct SearchActorsTypeahead: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var limit: Int?
            @Indirect
            public var q: String?
            @Indirect
            public var term: String?
            public init(
                limit: Int? = nil,
                q: String? = nil,
                term: String? = nil
            ) {
                self._limit = .wrapped(limit)
                self._q = .wrapped(q)
                self._term = .wrapped(term)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: q.toQueryItems(name: "q"))
                parameters.append(contentsOf: term.toQueryItems(name: "term"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var actors: [App.Bsky.Actor.Defs.ProfileViewBasic]
            public init(
                actors: [App.Bsky.Actor.Defs.ProfileViewBasic]
            ) {
                self._actors = .wrapped(actors)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.actor.searchActorsTypeahead"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Embed.External {
    struct External: UnionCodable, Hashable {
        @Indirect
        public var description: String
        @Indirect
        public var title: String
        @Indirect
        public var uri: SafeURL
        public init(
            description: String,
            title: String,
            uri: SafeURL
        ) {
            self._description = .wrapped(description)
            self._title = .wrapped(title)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.external#external")
    }
}
public extension App.Bsky.Embed {
    struct External: UnionCodable, Hashable {
        @Indirect
        public var external: App.Bsky.Embed.External.External
        public init(
            external: App.Bsky.Embed.External.External
        ) {
            self._external = .wrapped(external)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.external")
    }
}
public extension App.Bsky.Embed.External {
    struct View: UnionCodable, Hashable {
        @Indirect
        public var external: App.Bsky.Embed.External.ViewExternal
        public init(
            external: App.Bsky.Embed.External.ViewExternal
        ) {
            self._external = .wrapped(external)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.external#view")
    }
}
public extension App.Bsky.Embed.External {
    struct ViewExternal: UnionCodable, Hashable {
        @Indirect
        public var description: String
        @Indirect
        public var thumb: String?
        @Indirect
        public var title: String
        @Indirect
        public var uri: SafeURL
        public init(
            description: String,
            thumb: String? = nil,
            title: String,
            uri: SafeURL
        ) {
            self._description = .wrapped(description)
            self._thumb = .wrapped(thumb)
            self._title = .wrapped(title)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.external#viewExternal")
    }
}
public extension App.Bsky.Embed.Images {
    struct AspectRatio: UnionCodable, Hashable {
        @Indirect
        public var height: Int
        @Indirect
        public var width: Int
        public init(
            height: Int,
            width: Int
        ) {
            self._height = .wrapped(height)
            self._width = .wrapped(width)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.images#aspectRatio")
    }
}
public extension App.Bsky.Embed.Images {
    struct Image: UnionCodable, Hashable {
        @Indirect
        public var alt: String
        @Indirect
        public var aspectRatio: App.Bsky.Embed.Images.AspectRatio?
        public init(
            alt: String,
            aspectRatio: App.Bsky.Embed.Images.AspectRatio? = nil
        ) {
            self._alt = .wrapped(alt)
            self._aspectRatio = .wrapped(aspectRatio)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.images#image")
    }
}
public extension App.Bsky.Embed {
    struct Images: UnionCodable, Hashable {
        @Indirect
        public var images: [App.Bsky.Embed.Images.Image]
        public init(
            images: [App.Bsky.Embed.Images.Image]
        ) {
            self._images = .wrapped(images)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.images")
    }
}
public extension App.Bsky.Embed.Images {
    struct View: UnionCodable, Hashable {
        @Indirect
        public var images: [App.Bsky.Embed.Images.ViewImage]
        public init(
            images: [App.Bsky.Embed.Images.ViewImage]
        ) {
            self._images = .wrapped(images)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.images#view")
    }
}
public extension App.Bsky.Embed.Images {
    struct ViewImage: UnionCodable, Hashable {
        @Indirect
        public var alt: String
        @Indirect
        public var aspectRatio: App.Bsky.Embed.Images.AspectRatio?
        @Indirect
        public var fullsize: String
        @Indirect
        public var thumb: String
        public init(
            alt: String,
            aspectRatio: App.Bsky.Embed.Images.AspectRatio? = nil,
            fullsize: String,
            thumb: String
        ) {
            self._alt = .wrapped(alt)
            self._aspectRatio = .wrapped(aspectRatio)
            self._fullsize = .wrapped(fullsize)
            self._thumb = .wrapped(thumb)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.images#viewImage")
    }
}
public extension App.Bsky.Embed {
    struct Record: UnionCodable, Hashable {
        @Indirect
        public var record: Com.Atproto.Repo.StrongRef
        public init(
            record: Com.Atproto.Repo.StrongRef
        ) {
            self._record = .wrapped(record)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.record")
    }
}
public extension App.Bsky.Embed.Record {
    struct View: UnionCodable, Hashable {
        @Indirect
        public var record: Union6<App.Bsky.Embed.Record.ViewRecord, App.Bsky.Embed.Record.ViewNotFound, App.Bsky.Embed.Record.ViewBlocked, App.Bsky.Feed.Defs.GeneratorView, App.Bsky.Graph.Defs.ListView, App.Bsky.Labeler.Defs.LabelerView>
        public init(
            record: Union6<App.Bsky.Embed.Record.ViewRecord, App.Bsky.Embed.Record.ViewNotFound, App.Bsky.Embed.Record.ViewBlocked, App.Bsky.Feed.Defs.GeneratorView, App.Bsky.Graph.Defs.ListView, App.Bsky.Labeler.Defs.LabelerView>
        ) {
            self._record = .wrapped(record)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.record#view")
    }
}
public extension App.Bsky.Embed.Record {
    struct ViewBlocked: UnionCodable, Hashable {
        @Indirect
        public var author: App.Bsky.Feed.Defs.BlockedAuthor
        @Indirect
        public var blocked: Bool
        @Indirect
        public var uri: ATURI
        public init(
            author: App.Bsky.Feed.Defs.BlockedAuthor,
            blocked: Bool,
            uri: ATURI
        ) {
            self._author = .wrapped(author)
            self._blocked = .wrapped(blocked)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.record#viewBlocked")
    }
}
public extension App.Bsky.Embed.Record {
    struct ViewNotFound: UnionCodable, Hashable {
        @Indirect
        public var notFound: Bool
        @Indirect
        public var uri: ATURI
        public init(
            notFound: Bool,
            uri: ATURI
        ) {
            self._notFound = .wrapped(notFound)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.record#viewNotFound")
    }
}
public extension App.Bsky.Embed.Record {
    struct ViewRecord: UnionCodable, Hashable {
        @Indirect
        public var author: App.Bsky.Actor.Defs.ProfileViewBasic
        @Indirect
        public var cid: String
        @Indirect
        public var embeds: [Union4<App.Bsky.Embed.Images.View, App.Bsky.Embed.External.View, App.Bsky.Embed.Record.View, App.Bsky.Embed.RecordWithMedia.View>]?
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var labels: [Com.Atproto.Label.Defs.Label]?
        @Indirect
        public var uri: ATURI
        @Indirect
        public var value: [String: AnyCodable]
        public init(
            author: App.Bsky.Actor.Defs.ProfileViewBasic,
            cid: String,
            embeds: [Union4<App.Bsky.Embed.Images.View, App.Bsky.Embed.External.View, App.Bsky.Embed.Record.View, App.Bsky.Embed.RecordWithMedia.View>]? = nil,
            indexedAt: Date,
            labels: [Com.Atproto.Label.Defs.Label]? = nil,
            uri: ATURI,
            value: [String: AnyCodable]
        ) {
            self._author = .wrapped(author)
            self._cid = .wrapped(cid)
            self._embeds = .wrapped(embeds)
            self._indexedAt = .wrapped(indexedAt)
            self._labels = .wrapped(labels)
            self._uri = .wrapped(uri)
            self._value = .wrapped(value)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.record#viewRecord")
    }
}
public extension App.Bsky.Embed {
    struct RecordWithMedia: UnionCodable, Hashable {
        @Indirect
        public var media: Union2<App.Bsky.Embed.Images, App.Bsky.Embed.External>
        @Indirect
        public var record: App.Bsky.Embed.Record
        public init(
            media: Union2<App.Bsky.Embed.Images, App.Bsky.Embed.External>,
            record: App.Bsky.Embed.Record
        ) {
            self._media = .wrapped(media)
            self._record = .wrapped(record)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.recordWithMedia")
    }
}
public extension App.Bsky.Embed.RecordWithMedia {
    struct View: UnionCodable, Hashable {
        @Indirect
        public var media: Union2<App.Bsky.Embed.Images.View, App.Bsky.Embed.External.View>
        @Indirect
        public var record: App.Bsky.Embed.Record.View
        public init(
            media: Union2<App.Bsky.Embed.Images.View, App.Bsky.Embed.External.View>,
            record: App.Bsky.Embed.Record.View
        ) {
            self._media = .wrapped(media)
            self._record = .wrapped(record)
        }
        public static let typeValue = #LexiconDefID("app.bsky.embed.recordWithMedia#view")
    }
}
public extension App.Bsky.Feed.Defs {
    struct BlockedAuthor: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var viewer: App.Bsky.Actor.Defs.ViewerState?
        public init(
            did: String,
            viewer: App.Bsky.Actor.Defs.ViewerState? = nil
        ) {
            self._did = .wrapped(did)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.defs#blockedAuthor")
    }
}
public extension App.Bsky.Feed.Defs {
    struct BlockedPost: UnionCodable, Hashable {
        @Indirect
        public var author: App.Bsky.Feed.Defs.BlockedAuthor
        @Indirect
        public var blocked: Bool
        @Indirect
        public var uri: ATURI
        public init(
            author: App.Bsky.Feed.Defs.BlockedAuthor,
            blocked: Bool,
            uri: ATURI
        ) {
            self._author = .wrapped(author)
            self._blocked = .wrapped(blocked)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.defs#blockedPost")
    }
}
public extension App.Bsky.Feed.Defs {
    struct FeedViewPost: UnionCodable, Hashable {
        @Indirect
        public var post: App.Bsky.Feed.Defs.PostView
        @Indirect
        public var reason: Union1<App.Bsky.Feed.Defs.ReasonRepost>?
        @Indirect
        public var reply: App.Bsky.Feed.Defs.ReplyRef?
        public init(
            post: App.Bsky.Feed.Defs.PostView,
            reason: Union1<App.Bsky.Feed.Defs.ReasonRepost>? = nil,
            reply: App.Bsky.Feed.Defs.ReplyRef? = nil
        ) {
            self._post = .wrapped(post)
            self._reason = .wrapped(reason)
            self._reply = .wrapped(reply)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.defs#feedViewPost")
    }
}
public extension App.Bsky.Feed.Defs {
    struct GeneratorView: UnionCodable, Hashable {
        @Indirect
        public var avatar: String?
        @Indirect
        public var cid: String
        @Indirect
        public var creator: App.Bsky.Actor.Defs.ProfileView
        @Indirect
        public var description: String?
        @Indirect
        public var descriptionFacets: [App.Bsky.Richtext.Facet]?
        @Indirect
        public var did: String
        @Indirect
        public var displayName: String
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var likeCount: Int?
        @Indirect
        public var uri: ATURI
        @Indirect
        public var viewer: App.Bsky.Feed.Defs.GeneratorViewerState?
        public init(
            avatar: String? = nil,
            cid: String,
            creator: App.Bsky.Actor.Defs.ProfileView,
            description: String? = nil,
            descriptionFacets: [App.Bsky.Richtext.Facet]? = nil,
            did: String,
            displayName: String,
            indexedAt: Date,
            likeCount: Int? = nil,
            uri: ATURI,
            viewer: App.Bsky.Feed.Defs.GeneratorViewerState? = nil
        ) {
            self._avatar = .wrapped(avatar)
            self._cid = .wrapped(cid)
            self._creator = .wrapped(creator)
            self._description = .wrapped(description)
            self._descriptionFacets = .wrapped(descriptionFacets)
            self._did = .wrapped(did)
            self._displayName = .wrapped(displayName)
            self._indexedAt = .wrapped(indexedAt)
            self._likeCount = .wrapped(likeCount)
            self._uri = .wrapped(uri)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.defs#generatorView")
    }
}
public extension App.Bsky.Feed.Defs {
    struct GeneratorViewerState: UnionCodable, Hashable {
        @Indirect
        public var like: ATURI?
        public init(
            like: ATURI? = nil
        ) {
            self._like = .wrapped(like)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.defs#generatorViewerState")
    }
}
public extension App.Bsky.Feed.Defs {
    struct NotFoundPost: UnionCodable, Hashable {
        @Indirect
        public var notFound: Bool
        @Indirect
        public var uri: ATURI
        public init(
            notFound: Bool,
            uri: ATURI
        ) {
            self._notFound = .wrapped(notFound)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.defs#notFoundPost")
    }
}
public extension App.Bsky.Feed.Defs {
    struct PostView: UnionCodable, Hashable {
        @Indirect
        public var author: App.Bsky.Actor.Defs.ProfileViewBasic
        @Indirect
        public var cid: String
        @Indirect
        public var embed: Union4<App.Bsky.Embed.Images.View, App.Bsky.Embed.External.View, App.Bsky.Embed.Record.View, App.Bsky.Embed.RecordWithMedia.View>?
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var labels: [Com.Atproto.Label.Defs.Label]?
        @Indirect
        public var likeCount: Int?
        @Indirect
        public var record: [String: AnyCodable]
        @Indirect
        public var replyCount: Int?
        @Indirect
        public var repostCount: Int?
        @Indirect
        public var threadgate: App.Bsky.Feed.Defs.ThreadgateView?
        @Indirect
        public var uri: ATURI
        @Indirect
        public var viewer: App.Bsky.Feed.Defs.ViewerState?
        public init(
            author: App.Bsky.Actor.Defs.ProfileViewBasic,
            cid: String,
            embed: Union4<App.Bsky.Embed.Images.View, App.Bsky.Embed.External.View, App.Bsky.Embed.Record.View, App.Bsky.Embed.RecordWithMedia.View>? = nil,
            indexedAt: Date,
            labels: [Com.Atproto.Label.Defs.Label]? = nil,
            likeCount: Int? = nil,
            record: [String: AnyCodable],
            replyCount: Int? = nil,
            repostCount: Int? = nil,
            threadgate: App.Bsky.Feed.Defs.ThreadgateView? = nil,
            uri: ATURI,
            viewer: App.Bsky.Feed.Defs.ViewerState? = nil
        ) {
            self._author = .wrapped(author)
            self._cid = .wrapped(cid)
            self._embed = .wrapped(embed)
            self._indexedAt = .wrapped(indexedAt)
            self._labels = .wrapped(labels)
            self._likeCount = .wrapped(likeCount)
            self._record = .wrapped(record)
            self._replyCount = .wrapped(replyCount)
            self._repostCount = .wrapped(repostCount)
            self._threadgate = .wrapped(threadgate)
            self._uri = .wrapped(uri)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.defs#postView")
    }
}
public extension App.Bsky.Feed.Defs {
    struct ReasonRepost: UnionCodable, Hashable {
        @Indirect
        public var by: App.Bsky.Actor.Defs.ProfileViewBasic
        @Indirect
        public var indexedAt: Date
        public init(
            by: App.Bsky.Actor.Defs.ProfileViewBasic,
            indexedAt: Date
        ) {
            self._by = .wrapped(by)
            self._indexedAt = .wrapped(indexedAt)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.defs#reasonRepost")
    }
}
public extension App.Bsky.Feed.Defs {
    struct ReplyRef: UnionCodable, Hashable {
        @Indirect
        public var parent: Union3<App.Bsky.Feed.Defs.PostView, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost>
        @Indirect
        public var root: Union3<App.Bsky.Feed.Defs.PostView, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost>
        public init(
            parent: Union3<App.Bsky.Feed.Defs.PostView, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost>,
            root: Union3<App.Bsky.Feed.Defs.PostView, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost>
        ) {
            self._parent = .wrapped(parent)
            self._root = .wrapped(root)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.defs#replyRef")
    }
}
public extension App.Bsky.Feed.Defs {
    struct SkeletonFeedPost: UnionCodable, Hashable {
        @Indirect
        public var post: ATURI
        @Indirect
        public var reason: Union1<App.Bsky.Feed.Defs.SkeletonReasonRepost>?
        public init(
            post: ATURI,
            reason: Union1<App.Bsky.Feed.Defs.SkeletonReasonRepost>? = nil
        ) {
            self._post = .wrapped(post)
            self._reason = .wrapped(reason)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.defs#skeletonFeedPost")
    }
}
public extension App.Bsky.Feed.Defs {
    struct SkeletonReasonRepost: UnionCodable, Hashable {
        @Indirect
        public var repost: ATURI
        public init(
            repost: ATURI
        ) {
            self._repost = .wrapped(repost)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.defs#skeletonReasonRepost")
    }
}
public extension App.Bsky.Feed.Defs {
    struct ThreadViewPost: UnionCodable, Hashable {
        @Indirect
        public var parent: Union3<App.Bsky.Feed.Defs.ThreadViewPost, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost>?
        @Indirect
        public var post: App.Bsky.Feed.Defs.PostView
        @Indirect
        public var replies: [Union3<App.Bsky.Feed.Defs.ThreadViewPost, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost>]?
        public init(
            parent: Union3<App.Bsky.Feed.Defs.ThreadViewPost, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost>? = nil,
            post: App.Bsky.Feed.Defs.PostView,
            replies: [Union3<App.Bsky.Feed.Defs.ThreadViewPost, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost>]? = nil
        ) {
            self._parent = .wrapped(parent)
            self._post = .wrapped(post)
            self._replies = .wrapped(replies)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.defs#threadViewPost")
    }
}
public extension App.Bsky.Feed.Defs {
    struct ThreadgateView: UnionCodable, Hashable {
        @Indirect
        public var cid: String?
        @Indirect
        public var lists: [App.Bsky.Graph.Defs.ListViewBasic]?
        @Indirect
        public var record: [String: AnyCodable]?
        @Indirect
        public var uri: ATURI?
        public init(
            cid: String? = nil,
            lists: [App.Bsky.Graph.Defs.ListViewBasic]? = nil,
            record: [String: AnyCodable]? = nil,
            uri: ATURI? = nil
        ) {
            self._cid = .wrapped(cid)
            self._lists = .wrapped(lists)
            self._record = .wrapped(record)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.defs#threadgateView")
    }
}
public extension App.Bsky.Feed.Defs {
    struct ViewerState: UnionCodable, Hashable {
        @Indirect
        public var like: ATURI?
        @Indirect
        public var replyDisabled: Bool?
        @Indirect
        public var repost: ATURI?
        public init(
            like: ATURI? = nil,
            replyDisabled: Bool? = nil,
            repost: ATURI? = nil
        ) {
            self._like = .wrapped(like)
            self._replyDisabled = .wrapped(replyDisabled)
            self._repost = .wrapped(repost)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.defs#viewerState")
    }
}
public extension App.Bsky.Feed.DescribeFeedGenerator {
    struct Feed: UnionCodable, Hashable {
        @Indirect
        public var uri: ATURI
        public init(
            uri: ATURI
        ) {
            self._uri = .wrapped(uri)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.describeFeedGenerator#feed")
    }
}
public extension App.Bsky.Feed.DescribeFeedGenerator {
    struct Links: UnionCodable, Hashable {
        @Indirect
        public var privacyPolicy: String?
        @Indirect
        public var termsOfService: String?
        public init(
            privacyPolicy: String? = nil,
            termsOfService: String? = nil
        ) {
            self._privacyPolicy = .wrapped(privacyPolicy)
            self._termsOfService = .wrapped(termsOfService)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.describeFeedGenerator#links")
    }
}
public extension App.Bsky.Feed {
    struct DescribeFeedGenerator: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var did: String
            @Indirect
            public var feeds: [App.Bsky.Feed.DescribeFeedGenerator.Feed]
            @Indirect
            public var links: App.Bsky.Feed.DescribeFeedGenerator.Links?
            public init(
                did: String,
                feeds: [App.Bsky.Feed.DescribeFeedGenerator.Feed],
                links: App.Bsky.Feed.DescribeFeedGenerator.Links? = nil
            ) {
                self._did = .wrapped(did)
                self._feeds = .wrapped(feeds)
                self._links = .wrapped(links)
            }
        }
        public init(

        ) {

        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.describeFeedGenerator"
    }
}
public extension App.Bsky.Feed {
    struct Generator: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var description: String?
        @Indirect
        public var descriptionFacets: [App.Bsky.Richtext.Facet]?
        @Indirect
        public var did: String
        @Indirect
        public var displayName: String
        @Indirect
        public var labels: Union1<Com.Atproto.Label.Defs.SelfLabels>?
        public init(
            createdAt: Date,
            description: String? = nil,
            descriptionFacets: [App.Bsky.Richtext.Facet]? = nil,
            did: String,
            displayName: String,
            labels: Union1<Com.Atproto.Label.Defs.SelfLabels>? = nil
        ) {
            self._createdAt = .wrapped(createdAt)
            self._description = .wrapped(description)
            self._descriptionFacets = .wrapped(descriptionFacets)
            self._did = .wrapped(did)
            self._displayName = .wrapped(displayName)
            self._labels = .wrapped(labels)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.generator")
    }
}
public extension App.Bsky.Feed {
    struct GetActorFeeds: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            public init(
                actor: String,
                cursor: String? = nil,
                limit: Int? = nil
            ) {
                self._actor = .wrapped(actor)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var feeds: [App.Bsky.Feed.Defs.GeneratorView]
            public init(
                cursor: String? = nil,
                feeds: [App.Bsky.Feed.Defs.GeneratorView]
            ) {
                self._cursor = .wrapped(cursor)
                self._feeds = .wrapped(feeds)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getActorFeeds"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetActorLikes: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            public init(
                actor: String,
                cursor: String? = nil,
                limit: Int? = nil
            ) {
                self._actor = .wrapped(actor)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var feed: [App.Bsky.Feed.Defs.FeedViewPost]
            public init(
                cursor: String? = nil,
                feed: [App.Bsky.Feed.Defs.FeedViewPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getActorLikes"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetAuthorFeed: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            @Indirect
            public var cursor: String?
            @Indirect
            public var filter: String?
            @Indirect
            public var limit: Int?
            public init(
                actor: String,
                cursor: String? = nil,
                filter: String? = nil,
                limit: Int? = nil
            ) {
                self._actor = .wrapped(actor)
                self._cursor = .wrapped(cursor)
                self._filter = .wrapped(filter)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: filter.toQueryItems(name: "filter"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var feed: [App.Bsky.Feed.Defs.FeedViewPost]
            public init(
                cursor: String? = nil,
                feed: [App.Bsky.Feed.Defs.FeedViewPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getAuthorFeed"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetFeed: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var feed: ATURI
            @Indirect
            public var limit: Int?
            public init(
                cursor: String? = nil,
                feed: ATURI,
                limit: Int? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: feed.toQueryItems(name: "feed"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var feed: [App.Bsky.Feed.Defs.FeedViewPost]
            public init(
                cursor: String? = nil,
                feed: [App.Bsky.Feed.Defs.FeedViewPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getFeed"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetFeedGenerator: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var feed: ATURI
            public init(
                feed: ATURI
            ) {
                self._feed = .wrapped(feed)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: feed.toQueryItems(name: "feed"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var isOnline: Bool
            @Indirect
            public var isValid: Bool
            @Indirect
            public var view: App.Bsky.Feed.Defs.GeneratorView
            public init(
                isOnline: Bool,
                isValid: Bool,
                view: App.Bsky.Feed.Defs.GeneratorView
            ) {
                self._isOnline = .wrapped(isOnline)
                self._isValid = .wrapped(isValid)
                self._view = .wrapped(view)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getFeedGenerator"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetFeedGenerators: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var feeds: [ATURI]
            public init(
                feeds: [ATURI]
            ) {
                self._feeds = .wrapped(feeds)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: feeds.toQueryItems(name: "feeds"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var feeds: [App.Bsky.Feed.Defs.GeneratorView]
            public init(
                feeds: [App.Bsky.Feed.Defs.GeneratorView]
            ) {
                self._feeds = .wrapped(feeds)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getFeedGenerators"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetFeedSkeleton: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var feed: ATURI
            @Indirect
            public var limit: Int?
            public init(
                cursor: String? = nil,
                feed: ATURI,
                limit: Int? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: feed.toQueryItems(name: "feed"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var feed: [App.Bsky.Feed.Defs.SkeletonFeedPost]
            public init(
                cursor: String? = nil,
                feed: [App.Bsky.Feed.Defs.SkeletonFeedPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getFeedSkeleton"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed.GetLikes {
    struct Like: UnionCodable, Hashable {
        @Indirect
        public var actor: App.Bsky.Actor.Defs.ProfileView
        @Indirect
        public var createdAt: Date
        @Indirect
        public var indexedAt: Date
        public init(
            actor: App.Bsky.Actor.Defs.ProfileView,
            createdAt: Date,
            indexedAt: Date
        ) {
            self._actor = .wrapped(actor)
            self._createdAt = .wrapped(createdAt)
            self._indexedAt = .wrapped(indexedAt)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.getLikes#like")
    }
}
public extension App.Bsky.Feed {
    struct GetLikes: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cid: String?
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var uri: ATURI
            public init(
                cid: String? = nil,
                cursor: String? = nil,
                limit: Int? = nil,
                uri: ATURI
            ) {
                self._cid = .wrapped(cid)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._uri = .wrapped(uri)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cid.toQueryItems(name: "cid"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: uri.toQueryItems(name: "uri"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cid: String?
            @Indirect
            public var cursor: String?
            @Indirect
            public var likes: [App.Bsky.Feed.GetLikes.Like]
            @Indirect
            public var uri: ATURI
            public init(
                cid: String? = nil,
                cursor: String? = nil,
                likes: [App.Bsky.Feed.GetLikes.Like],
                uri: ATURI
            ) {
                self._cid = .wrapped(cid)
                self._cursor = .wrapped(cursor)
                self._likes = .wrapped(likes)
                self._uri = .wrapped(uri)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getLikes"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetListFeed: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var list: ATURI
            public init(
                cursor: String? = nil,
                limit: Int? = nil,
                list: ATURI
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._list = .wrapped(list)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: list.toQueryItems(name: "list"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var feed: [App.Bsky.Feed.Defs.FeedViewPost]
            public init(
                cursor: String? = nil,
                feed: [App.Bsky.Feed.Defs.FeedViewPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getListFeed"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetPostThread: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var depth: Int?
            @Indirect
            public var parentHeight: Int?
            @Indirect
            public var uri: ATURI
            public init(
                depth: Int? = nil,
                parentHeight: Int? = nil,
                uri: ATURI
            ) {
                self._depth = .wrapped(depth)
                self._parentHeight = .wrapped(parentHeight)
                self._uri = .wrapped(uri)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: depth.toQueryItems(name: "depth"))
                parameters.append(contentsOf: parentHeight.toQueryItems(name: "parentHeight"))
                parameters.append(contentsOf: uri.toQueryItems(name: "uri"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var thread: Union3<App.Bsky.Feed.Defs.ThreadViewPost, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost>
            public init(
                thread: Union3<App.Bsky.Feed.Defs.ThreadViewPost, App.Bsky.Feed.Defs.NotFoundPost, App.Bsky.Feed.Defs.BlockedPost>
            ) {
                self._thread = .wrapped(thread)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getPostThread"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetPosts: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var uris: [ATURI]
            public init(
                uris: [ATURI]
            ) {
                self._uris = .wrapped(uris)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: uris.toQueryItems(name: "uris"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var posts: [App.Bsky.Feed.Defs.PostView]
            public init(
                posts: [App.Bsky.Feed.Defs.PostView]
            ) {
                self._posts = .wrapped(posts)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getPosts"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetRepostedBy: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cid: String?
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var uri: ATURI
            public init(
                cid: String? = nil,
                cursor: String? = nil,
                limit: Int? = nil,
                uri: ATURI
            ) {
                self._cid = .wrapped(cid)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._uri = .wrapped(uri)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cid.toQueryItems(name: "cid"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: uri.toQueryItems(name: "uri"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cid: String?
            @Indirect
            public var cursor: String?
            @Indirect
            public var repostedBy: [App.Bsky.Actor.Defs.ProfileView]
            @Indirect
            public var uri: ATURI
            public init(
                cid: String? = nil,
                cursor: String? = nil,
                repostedBy: [App.Bsky.Actor.Defs.ProfileView],
                uri: ATURI
            ) {
                self._cid = .wrapped(cid)
                self._cursor = .wrapped(cursor)
                self._repostedBy = .wrapped(repostedBy)
                self._uri = .wrapped(uri)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getRepostedBy"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetSuggestedFeeds: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            public init(
                cursor: String? = nil,
                limit: Int? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var feeds: [App.Bsky.Feed.Defs.GeneratorView]
            public init(
                cursor: String? = nil,
                feeds: [App.Bsky.Feed.Defs.GeneratorView]
            ) {
                self._cursor = .wrapped(cursor)
                self._feeds = .wrapped(feeds)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getSuggestedFeeds"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct GetTimeline: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var algorithm: String?
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            public init(
                algorithm: String? = nil,
                cursor: String? = nil,
                limit: Int? = nil
            ) {
                self._algorithm = .wrapped(algorithm)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: algorithm.toQueryItems(name: "algorithm"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var feed: [App.Bsky.Feed.Defs.FeedViewPost]
            public init(
                cursor: String? = nil,
                feed: [App.Bsky.Feed.Defs.FeedViewPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._feed = .wrapped(feed)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.getTimeline"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed {
    struct Like: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var subject: Com.Atproto.Repo.StrongRef
        public init(
            createdAt: Date,
            subject: Com.Atproto.Repo.StrongRef
        ) {
            self._createdAt = .wrapped(createdAt)
            self._subject = .wrapped(subject)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.like")
    }
}
public extension App.Bsky.Feed.Post {
    struct Entity: UnionCodable, Hashable {
        @Indirect
        public var index: App.Bsky.Feed.Post.TextSlice
        @Indirect
        public var type: String
        @Indirect
        public var value: String
        public init(
            index: App.Bsky.Feed.Post.TextSlice,
            type: String,
            value: String
        ) {
            self._index = .wrapped(index)
            self._type = .wrapped(type)
            self._value = .wrapped(value)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.post#entity")
    }
}
public extension App.Bsky.Feed {
    struct Post: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var embed: Union4<App.Bsky.Embed.Images, App.Bsky.Embed.External, App.Bsky.Embed.Record, App.Bsky.Embed.RecordWithMedia>?
        @Indirect
        public var entities: [App.Bsky.Feed.Post.Entity]?
        @Indirect
        public var facets: [App.Bsky.Richtext.Facet]?
        @Indirect
        public var labels: Union1<Com.Atproto.Label.Defs.SelfLabels>?
        @Indirect
        public var langs: [String]?
        @Indirect
        public var reply: App.Bsky.Feed.Post.ReplyRef?
        @Indirect
        public var tags: [String]?
        @Indirect
        public var text: String
        public init(
            createdAt: Date,
            embed: Union4<App.Bsky.Embed.Images, App.Bsky.Embed.External, App.Bsky.Embed.Record, App.Bsky.Embed.RecordWithMedia>? = nil,
            entities: [App.Bsky.Feed.Post.Entity]? = nil,
            facets: [App.Bsky.Richtext.Facet]? = nil,
            labels: Union1<Com.Atproto.Label.Defs.SelfLabels>? = nil,
            langs: [String]? = nil,
            reply: App.Bsky.Feed.Post.ReplyRef? = nil,
            tags: [String]? = nil,
            text: String
        ) {
            self._createdAt = .wrapped(createdAt)
            self._embed = .wrapped(embed)
            self._entities = .wrapped(entities)
            self._facets = .wrapped(facets)
            self._labels = .wrapped(labels)
            self._langs = .wrapped(langs)
            self._reply = .wrapped(reply)
            self._tags = .wrapped(tags)
            self._text = .wrapped(text)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.post")
    }
}
public extension App.Bsky.Feed.Post {
    struct ReplyRef: UnionCodable, Hashable {
        @Indirect
        public var parent: Com.Atproto.Repo.StrongRef
        @Indirect
        public var root: Com.Atproto.Repo.StrongRef
        public init(
            parent: Com.Atproto.Repo.StrongRef,
            root: Com.Atproto.Repo.StrongRef
        ) {
            self._parent = .wrapped(parent)
            self._root = .wrapped(root)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.post#replyRef")
    }
}
public extension App.Bsky.Feed.Post {
    struct TextSlice: UnionCodable, Hashable {
        @Indirect
        public var end: Int
        @Indirect
        public var start: Int
        public init(
            end: Int,
            start: Int
        ) {
            self._end = .wrapped(end)
            self._start = .wrapped(start)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.post#textSlice")
    }
}
public extension App.Bsky.Feed {
    struct Repost: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var subject: Com.Atproto.Repo.StrongRef
        public init(
            createdAt: Date,
            subject: Com.Atproto.Repo.StrongRef
        ) {
            self._createdAt = .wrapped(createdAt)
            self._subject = .wrapped(subject)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.repost")
    }
}
public extension App.Bsky.Feed {
    struct SearchPosts: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var q: String
            public init(
                cursor: String? = nil,
                limit: Int? = nil,
                q: String
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._q = .wrapped(q)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: q.toQueryItems(name: "q"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var hitsTotal: Int?
            @Indirect
            public var posts: [App.Bsky.Feed.Defs.PostView]
            public init(
                cursor: String? = nil,
                hitsTotal: Int? = nil,
                posts: [App.Bsky.Feed.Defs.PostView]
            ) {
                self._cursor = .wrapped(cursor)
                self._hitsTotal = .wrapped(hitsTotal)
                self._posts = .wrapped(posts)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.feed.searchPosts"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Feed.Threadgate {
    struct FollowingRule: UnionCodable, Hashable {
        public init(

        ) {

        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.threadgate#followingRule")
    }
}
public extension App.Bsky.Feed.Threadgate {
    struct ListRule: UnionCodable, Hashable {
        @Indirect
        public var list: ATURI
        public init(
            list: ATURI
        ) {
            self._list = .wrapped(list)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.threadgate#listRule")
    }
}
public extension App.Bsky.Feed {
    struct Threadgate: UnionCodable, Hashable {
        @Indirect
        public var allow: [Union3<App.Bsky.Feed.Threadgate.MentionRule, App.Bsky.Feed.Threadgate.FollowingRule, App.Bsky.Feed.Threadgate.ListRule>]?
        @Indirect
        public var createdAt: Date
        @Indirect
        public var post: ATURI
        public init(
            allow: [Union3<App.Bsky.Feed.Threadgate.MentionRule, App.Bsky.Feed.Threadgate.FollowingRule, App.Bsky.Feed.Threadgate.ListRule>]? = nil,
            createdAt: Date,
            post: ATURI
        ) {
            self._allow = .wrapped(allow)
            self._createdAt = .wrapped(createdAt)
            self._post = .wrapped(post)
        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.threadgate")
    }
}
public extension App.Bsky.Feed.Threadgate {
    struct MentionRule: UnionCodable, Hashable {
        public init(

        ) {

        }
        public static let typeValue = #LexiconDefID("app.bsky.feed.threadgate#mentionRule")
    }
}
public extension App.Bsky.Graph {
    struct Block: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var subject: String
        public init(
            createdAt: Date,
            subject: String
        ) {
            self._createdAt = .wrapped(createdAt)
            self._subject = .wrapped(subject)
        }
        public static let typeValue = #LexiconDefID("app.bsky.graph.block")
    }
}
public extension App.Bsky.Graph.Defs {
}
public extension App.Bsky.Graph.Defs {
    struct ListItemView: UnionCodable, Hashable {
        @Indirect
        public var subject: App.Bsky.Actor.Defs.ProfileView
        @Indirect
        public var uri: ATURI
        public init(
            subject: App.Bsky.Actor.Defs.ProfileView,
            uri: ATURI
        ) {
            self._subject = .wrapped(subject)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = #LexiconDefID("app.bsky.graph.defs#listItemView")
    }
}
public extension App.Bsky.Graph.Defs {
    typealias ListPurpose = String
}
public extension App.Bsky.Graph.Defs {
    struct ListView: UnionCodable, Hashable {
        @Indirect
        public var avatar: String?
        @Indirect
        public var cid: String
        @Indirect
        public var creator: App.Bsky.Actor.Defs.ProfileView
        @Indirect
        public var description: String?
        @Indirect
        public var descriptionFacets: [App.Bsky.Richtext.Facet]?
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var name: String
        @Indirect
        public var purpose: App.Bsky.Graph.Defs.ListPurpose
        @Indirect
        public var uri: ATURI
        @Indirect
        public var viewer: App.Bsky.Graph.Defs.ListViewerState?
        public init(
            avatar: String? = nil,
            cid: String,
            creator: App.Bsky.Actor.Defs.ProfileView,
            description: String? = nil,
            descriptionFacets: [App.Bsky.Richtext.Facet]? = nil,
            indexedAt: Date,
            name: String,
            purpose: App.Bsky.Graph.Defs.ListPurpose,
            uri: ATURI,
            viewer: App.Bsky.Graph.Defs.ListViewerState? = nil
        ) {
            self._avatar = .wrapped(avatar)
            self._cid = .wrapped(cid)
            self._creator = .wrapped(creator)
            self._description = .wrapped(description)
            self._descriptionFacets = .wrapped(descriptionFacets)
            self._indexedAt = .wrapped(indexedAt)
            self._name = .wrapped(name)
            self._purpose = .wrapped(purpose)
            self._uri = .wrapped(uri)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = #LexiconDefID("app.bsky.graph.defs#listView")
    }
}
public extension App.Bsky.Graph.Defs {
    struct ListViewBasic: UnionCodable, Hashable {
        @Indirect
        public var avatar: String?
        @Indirect
        public var cid: String
        @Indirect
        public var indexedAt: Date?
        @Indirect
        public var name: String
        @Indirect
        public var purpose: App.Bsky.Graph.Defs.ListPurpose
        @Indirect
        public var uri: ATURI
        @Indirect
        public var viewer: App.Bsky.Graph.Defs.ListViewerState?
        public init(
            avatar: String? = nil,
            cid: String,
            indexedAt: Date? = nil,
            name: String,
            purpose: App.Bsky.Graph.Defs.ListPurpose,
            uri: ATURI,
            viewer: App.Bsky.Graph.Defs.ListViewerState? = nil
        ) {
            self._avatar = .wrapped(avatar)
            self._cid = .wrapped(cid)
            self._indexedAt = .wrapped(indexedAt)
            self._name = .wrapped(name)
            self._purpose = .wrapped(purpose)
            self._uri = .wrapped(uri)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = #LexiconDefID("app.bsky.graph.defs#listViewBasic")
    }
}
public extension App.Bsky.Graph.Defs {
    struct ListViewerState: UnionCodable, Hashable {
        @Indirect
        public var blocked: ATURI?
        @Indirect
        public var muted: Bool?
        public init(
            blocked: ATURI? = nil,
            muted: Bool? = nil
        ) {
            self._blocked = .wrapped(blocked)
            self._muted = .wrapped(muted)
        }
        public static let typeValue = #LexiconDefID("app.bsky.graph.defs#listViewerState")
    }
}
public extension App.Bsky.Graph.Defs {
}
public extension App.Bsky.Graph.Defs {
    struct NotFoundActor: UnionCodable, Hashable {
        @Indirect
        public var actor: String
        @Indirect
        public var notFound: Bool
        public init(
            actor: String,
            notFound: Bool
        ) {
            self._actor = .wrapped(actor)
            self._notFound = .wrapped(notFound)
        }
        public static let typeValue = #LexiconDefID("app.bsky.graph.defs#notFoundActor")
    }
}
public extension App.Bsky.Graph.Defs {
    struct Relationship: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var followedBy: ATURI?
        @Indirect
        public var following: ATURI?
        public init(
            did: String,
            followedBy: ATURI? = nil,
            following: ATURI? = nil
        ) {
            self._did = .wrapped(did)
            self._followedBy = .wrapped(followedBy)
            self._following = .wrapped(following)
        }
        public static let typeValue = #LexiconDefID("app.bsky.graph.defs#relationship")
    }
}
public extension App.Bsky.Graph {
    struct Follow: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var subject: String
        public init(
            createdAt: Date,
            subject: String
        ) {
            self._createdAt = .wrapped(createdAt)
            self._subject = .wrapped(subject)
        }
        public static let typeValue = #LexiconDefID("app.bsky.graph.follow")
    }
}
public extension App.Bsky.Graph {
    struct GetBlocks: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            public init(
                cursor: String? = nil,
                limit: Int? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var blocks: [App.Bsky.Actor.Defs.ProfileView]
            @Indirect
            public var cursor: String?
            public init(
                blocks: [App.Bsky.Actor.Defs.ProfileView],
                cursor: String? = nil
            ) {
                self._blocks = .wrapped(blocks)
                self._cursor = .wrapped(cursor)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getBlocks"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetFollowers: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            public init(
                actor: String,
                cursor: String? = nil,
                limit: Int? = nil
            ) {
                self._actor = .wrapped(actor)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var followers: [App.Bsky.Actor.Defs.ProfileView]
            @Indirect
            public var subject: App.Bsky.Actor.Defs.ProfileView
            public init(
                cursor: String? = nil,
                followers: [App.Bsky.Actor.Defs.ProfileView],
                subject: App.Bsky.Actor.Defs.ProfileView
            ) {
                self._cursor = .wrapped(cursor)
                self._followers = .wrapped(followers)
                self._subject = .wrapped(subject)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getFollowers"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetFollows: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            public init(
                actor: String,
                cursor: String? = nil,
                limit: Int? = nil
            ) {
                self._actor = .wrapped(actor)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var follows: [App.Bsky.Actor.Defs.ProfileView]
            @Indirect
            public var subject: App.Bsky.Actor.Defs.ProfileView
            public init(
                cursor: String? = nil,
                follows: [App.Bsky.Actor.Defs.ProfileView],
                subject: App.Bsky.Actor.Defs.ProfileView
            ) {
                self._cursor = .wrapped(cursor)
                self._follows = .wrapped(follows)
                self._subject = .wrapped(subject)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getFollows"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetList: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var list: ATURI
            public init(
                cursor: String? = nil,
                limit: Int? = nil,
                list: ATURI
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._list = .wrapped(list)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: list.toQueryItems(name: "list"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var items: [App.Bsky.Graph.Defs.ListItemView]
            @Indirect
            public var list: App.Bsky.Graph.Defs.ListView
            public init(
                cursor: String? = nil,
                items: [App.Bsky.Graph.Defs.ListItemView],
                list: App.Bsky.Graph.Defs.ListView
            ) {
                self._cursor = .wrapped(cursor)
                self._items = .wrapped(items)
                self._list = .wrapped(list)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getList"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetListBlocks: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            public init(
                cursor: String? = nil,
                limit: Int? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var lists: [App.Bsky.Graph.Defs.ListView]
            public init(
                cursor: String? = nil,
                lists: [App.Bsky.Graph.Defs.ListView]
            ) {
                self._cursor = .wrapped(cursor)
                self._lists = .wrapped(lists)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getListBlocks"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetListMutes: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            public init(
                cursor: String? = nil,
                limit: Int? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var lists: [App.Bsky.Graph.Defs.ListView]
            public init(
                cursor: String? = nil,
                lists: [App.Bsky.Graph.Defs.ListView]
            ) {
                self._cursor = .wrapped(cursor)
                self._lists = .wrapped(lists)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getListMutes"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetLists: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            public init(
                actor: String,
                cursor: String? = nil,
                limit: Int? = nil
            ) {
                self._actor = .wrapped(actor)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var lists: [App.Bsky.Graph.Defs.ListView]
            public init(
                cursor: String? = nil,
                lists: [App.Bsky.Graph.Defs.ListView]
            ) {
                self._cursor = .wrapped(cursor)
                self._lists = .wrapped(lists)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getLists"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetMutes: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            public init(
                cursor: String? = nil,
                limit: Int? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var mutes: [App.Bsky.Actor.Defs.ProfileView]
            public init(
                cursor: String? = nil,
                mutes: [App.Bsky.Actor.Defs.ProfileView]
            ) {
                self._cursor = .wrapped(cursor)
                self._mutes = .wrapped(mutes)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getMutes"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetRelationships: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            @Indirect
            public var others: [String]?
            public init(
                actor: String,
                others: [String]? = nil
            ) {
                self._actor = .wrapped(actor)
                self._others = .wrapped(others)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))
                parameters.append(contentsOf: others.toQueryItems(name: "others"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var actor: String?
            @Indirect
            public var relationships: [Union2<App.Bsky.Graph.Defs.Relationship, App.Bsky.Graph.Defs.NotFoundActor>]
            public init(
                actor: String? = nil,
                relationships: [Union2<App.Bsky.Graph.Defs.Relationship, App.Bsky.Graph.Defs.NotFoundActor>]
            ) {
                self._actor = .wrapped(actor)
                self._relationships = .wrapped(relationships)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getRelationships"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct GetSuggestedFollowsByActor: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var actor: String
            public init(
                actor: String
            ) {
                self._actor = .wrapped(actor)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: actor.toQueryItems(name: "actor"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var suggestions: [App.Bsky.Actor.Defs.ProfileView]
            public init(
                suggestions: [App.Bsky.Actor.Defs.ProfileView]
            ) {
                self._suggestions = .wrapped(suggestions)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.graph.getSuggestedFollowsByActor"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Graph {
    struct List: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var description: String?
        @Indirect
        public var descriptionFacets: [App.Bsky.Richtext.Facet]?
        @Indirect
        public var labels: Union1<Com.Atproto.Label.Defs.SelfLabels>?
        @Indirect
        public var name: String
        @Indirect
        public var purpose: App.Bsky.Graph.Defs.ListPurpose
        public init(
            createdAt: Date,
            description: String? = nil,
            descriptionFacets: [App.Bsky.Richtext.Facet]? = nil,
            labels: Union1<Com.Atproto.Label.Defs.SelfLabels>? = nil,
            name: String,
            purpose: App.Bsky.Graph.Defs.ListPurpose
        ) {
            self._createdAt = .wrapped(createdAt)
            self._description = .wrapped(description)
            self._descriptionFacets = .wrapped(descriptionFacets)
            self._labels = .wrapped(labels)
            self._name = .wrapped(name)
            self._purpose = .wrapped(purpose)
        }
        public static let typeValue = #LexiconDefID("app.bsky.graph.list")
    }
}
public extension App.Bsky.Graph {
    struct Listblock: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var subject: ATURI
        public init(
            createdAt: Date,
            subject: ATURI
        ) {
            self._createdAt = .wrapped(createdAt)
            self._subject = .wrapped(subject)
        }
        public static let typeValue = #LexiconDefID("app.bsky.graph.listblock")
    }
}
public extension App.Bsky.Graph {
    struct Listitem: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var list: ATURI
        @Indirect
        public var subject: String
        public init(
            createdAt: Date,
            list: ATURI,
            subject: String
        ) {
            self._createdAt = .wrapped(createdAt)
            self._list = .wrapped(list)
            self._subject = .wrapped(subject)
        }
        public static let typeValue = #LexiconDefID("app.bsky.graph.listitem")
    }
}
public extension App.Bsky.Graph {
    struct MuteActor: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var actor: String
            public init(
                actor: String
            ) {
                self._actor = .wrapped(actor)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.graph.muteActor"
        public let input: Input?
    }
}
public extension App.Bsky.Graph {
    struct MuteActorList: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var list: ATURI
            public init(
                list: ATURI
            ) {
                self._list = .wrapped(list)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.graph.muteActorList"
        public let input: Input?
    }
}
public extension App.Bsky.Graph {
    struct UnmuteActor: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var actor: String
            public init(
                actor: String
            ) {
                self._actor = .wrapped(actor)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.graph.unmuteActor"
        public let input: Input?
    }
}
public extension App.Bsky.Graph {
    struct UnmuteActorList: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var list: ATURI
            public init(
                list: ATURI
            ) {
                self._list = .wrapped(list)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.graph.unmuteActorList"
        public let input: Input?
    }
}
public extension App.Bsky.Labeler.Defs {
    struct LabelerPolicies: UnionCodable, Hashable {
        @Indirect
        public var labelValueDefinitions: [Com.Atproto.Label.Defs.LabelValueDefinition]?
        @Indirect
        public var labelValues: [Com.Atproto.Label.Defs.LabelValue]
        public init(
            labelValueDefinitions: [Com.Atproto.Label.Defs.LabelValueDefinition]? = nil,
            labelValues: [Com.Atproto.Label.Defs.LabelValue]
        ) {
            self._labelValueDefinitions = .wrapped(labelValueDefinitions)
            self._labelValues = .wrapped(labelValues)
        }
        public static let typeValue = #LexiconDefID("app.bsky.labeler.defs#labelerPolicies")
    }
}
public extension App.Bsky.Labeler.Defs {
    struct LabelerView: UnionCodable, Hashable {
        @Indirect
        public var cid: String
        @Indirect
        public var creator: App.Bsky.Actor.Defs.ProfileView
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var labels: [Com.Atproto.Label.Defs.Label]?
        @Indirect
        public var likeCount: Int?
        @Indirect
        public var uri: ATURI
        @Indirect
        public var viewer: App.Bsky.Labeler.Defs.LabelerViewerState?
        public init(
            cid: String,
            creator: App.Bsky.Actor.Defs.ProfileView,
            indexedAt: Date,
            labels: [Com.Atproto.Label.Defs.Label]? = nil,
            likeCount: Int? = nil,
            uri: ATURI,
            viewer: App.Bsky.Labeler.Defs.LabelerViewerState? = nil
        ) {
            self._cid = .wrapped(cid)
            self._creator = .wrapped(creator)
            self._indexedAt = .wrapped(indexedAt)
            self._labels = .wrapped(labels)
            self._likeCount = .wrapped(likeCount)
            self._uri = .wrapped(uri)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = #LexiconDefID("app.bsky.labeler.defs#labelerView")
    }
}
public extension App.Bsky.Labeler.Defs {
    struct LabelerViewDetailed: UnionCodable, Hashable {
        @Indirect
        public var cid: String
        @Indirect
        public var creator: App.Bsky.Actor.Defs.ProfileView
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var labels: [Com.Atproto.Label.Defs.Label]?
        @Indirect
        public var likeCount: Int?
        @Indirect
        public var policies: App.Bsky.Labeler.Defs.LabelerPolicies
        @Indirect
        public var uri: ATURI
        @Indirect
        public var viewer: App.Bsky.Labeler.Defs.LabelerViewerState?
        public init(
            cid: String,
            creator: App.Bsky.Actor.Defs.ProfileView,
            indexedAt: Date,
            labels: [Com.Atproto.Label.Defs.Label]? = nil,
            likeCount: Int? = nil,
            policies: App.Bsky.Labeler.Defs.LabelerPolicies,
            uri: ATURI,
            viewer: App.Bsky.Labeler.Defs.LabelerViewerState? = nil
        ) {
            self._cid = .wrapped(cid)
            self._creator = .wrapped(creator)
            self._indexedAt = .wrapped(indexedAt)
            self._labels = .wrapped(labels)
            self._likeCount = .wrapped(likeCount)
            self._policies = .wrapped(policies)
            self._uri = .wrapped(uri)
            self._viewer = .wrapped(viewer)
        }
        public static let typeValue = #LexiconDefID("app.bsky.labeler.defs#labelerViewDetailed")
    }
}
public extension App.Bsky.Labeler.Defs {
    struct LabelerViewerState: UnionCodable, Hashable {
        @Indirect
        public var like: ATURI?
        public init(
            like: ATURI? = nil
        ) {
            self._like = .wrapped(like)
        }
        public static let typeValue = #LexiconDefID("app.bsky.labeler.defs#labelerViewerState")
    }
}
public extension App.Bsky.Labeler {
    struct GetServices: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var detailed: Bool?
            @Indirect
            public var dids: [String]
            public init(
                detailed: Bool? = nil,
                dids: [String]
            ) {
                self._detailed = .wrapped(detailed)
                self._dids = .wrapped(dids)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: detailed.toQueryItems(name: "detailed"))
                parameters.append(contentsOf: dids.toQueryItems(name: "dids"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var views: [Union2<App.Bsky.Labeler.Defs.LabelerView, App.Bsky.Labeler.Defs.LabelerViewDetailed>]
            public init(
                views: [Union2<App.Bsky.Labeler.Defs.LabelerView, App.Bsky.Labeler.Defs.LabelerViewDetailed>]
            ) {
                self._views = .wrapped(views)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.labeler.getServices"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Labeler {
    struct Service: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var labels: Union1<Com.Atproto.Label.Defs.SelfLabels>?
        @Indirect
        public var policies: App.Bsky.Labeler.Defs.LabelerPolicies
        public init(
            createdAt: Date,
            labels: Union1<Com.Atproto.Label.Defs.SelfLabels>? = nil,
            policies: App.Bsky.Labeler.Defs.LabelerPolicies
        ) {
            self._createdAt = .wrapped(createdAt)
            self._labels = .wrapped(labels)
            self._policies = .wrapped(policies)
        }
        public static let typeValue = #LexiconDefID("app.bsky.labeler.service")
    }
}
public extension App.Bsky.Notification {
    struct GetUnreadCount: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var seenAt: Date?
            public init(
                seenAt: Date? = nil
            ) {
                self._seenAt = .wrapped(seenAt)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: seenAt.toQueryItems(name: "seenAt"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var count: Int
            public init(
                count: Int
            ) {
                self._count = .wrapped(count)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.notification.getUnreadCount"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Notification {
    struct ListNotifications: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var seenAt: Date?
            public init(
                cursor: String? = nil,
                limit: Int? = nil,
                seenAt: Date? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._seenAt = .wrapped(seenAt)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: seenAt.toQueryItems(name: "seenAt"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var notifications: [App.Bsky.Notification.ListNotifications.Notification]
            @Indirect
            public var seenAt: Date?
            public init(
                cursor: String? = nil,
                notifications: [App.Bsky.Notification.ListNotifications.Notification],
                seenAt: Date? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._notifications = .wrapped(notifications)
                self._seenAt = .wrapped(seenAt)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.notification.listNotifications"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Notification.ListNotifications {
    struct Notification: UnionCodable, Hashable {
        @Indirect
        public var author: App.Bsky.Actor.Defs.ProfileView
        @Indirect
        public var cid: String
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var isRead: Bool
        @Indirect
        public var labels: [Com.Atproto.Label.Defs.Label]?
        @Indirect
        public var reason: String
        @Indirect
        public var reasonSubject: ATURI?
        @Indirect
        public var record: [String: AnyCodable]
        @Indirect
        public var uri: ATURI
        public init(
            author: App.Bsky.Actor.Defs.ProfileView,
            cid: String,
            indexedAt: Date,
            isRead: Bool,
            labels: [Com.Atproto.Label.Defs.Label]? = nil,
            reason: String,
            reasonSubject: ATURI? = nil,
            record: [String: AnyCodable],
            uri: ATURI
        ) {
            self._author = .wrapped(author)
            self._cid = .wrapped(cid)
            self._indexedAt = .wrapped(indexedAt)
            self._isRead = .wrapped(isRead)
            self._labels = .wrapped(labels)
            self._reason = .wrapped(reason)
            self._reasonSubject = .wrapped(reasonSubject)
            self._record = .wrapped(record)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = #LexiconDefID("app.bsky.notification.listNotifications#notification")
    }
}
public extension App.Bsky.Notification {
    struct RegisterPush: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var appId: String
            @Indirect
            public var platform: String
            @Indirect
            public var serviceDid: String
            @Indirect
            public var token: String
            public init(
                appId: String,
                platform: String,
                serviceDid: String,
                token: String
            ) {
                self._appId = .wrapped(appId)
                self._platform = .wrapped(platform)
                self._serviceDid = .wrapped(serviceDid)
                self._token = .wrapped(token)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.notification.registerPush"
        public let input: Input?
    }
}
public extension App.Bsky.Notification {
    struct UpdateSeen: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var seenAt: Date
            public init(
                seenAt: Date
            ) {
                self._seenAt = .wrapped(seenAt)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "app.bsky.notification.updateSeen"
        public let input: Input?
    }
}
public extension App.Bsky.Richtext.Facet {
    struct ByteSlice: UnionCodable, Hashable {
        @Indirect
        public var byteEnd: Int
        @Indirect
        public var byteStart: Int
        public init(
            byteEnd: Int,
            byteStart: Int
        ) {
            self._byteEnd = .wrapped(byteEnd)
            self._byteStart = .wrapped(byteStart)
        }
        public static let typeValue = #LexiconDefID("app.bsky.richtext.facet#byteSlice")
    }
}
public extension App.Bsky.Richtext.Facet {
    struct Link: UnionCodable, Hashable {
        @Indirect
        public var uri: SafeURL
        public init(
            uri: SafeURL
        ) {
            self._uri = .wrapped(uri)
        }
        public static let typeValue = #LexiconDefID("app.bsky.richtext.facet#link")
    }
}
public extension App.Bsky.Richtext {
    struct Facet: UnionCodable, Hashable {
        @Indirect
        public var features: [Union3<App.Bsky.Richtext.Facet.Mention, App.Bsky.Richtext.Facet.Link, App.Bsky.Richtext.Facet.Tag>]
        @Indirect
        public var index: App.Bsky.Richtext.Facet.ByteSlice
        public init(
            features: [Union3<App.Bsky.Richtext.Facet.Mention, App.Bsky.Richtext.Facet.Link, App.Bsky.Richtext.Facet.Tag>],
            index: App.Bsky.Richtext.Facet.ByteSlice
        ) {
            self._features = .wrapped(features)
            self._index = .wrapped(index)
        }
        public static let typeValue = #LexiconDefID("app.bsky.richtext.facet")
    }
}
public extension App.Bsky.Richtext.Facet {
    struct Mention: UnionCodable, Hashable {
        @Indirect
        public var did: String
        public init(
            did: String
        ) {
            self._did = .wrapped(did)
        }
        public static let typeValue = #LexiconDefID("app.bsky.richtext.facet#mention")
    }
}
public extension App.Bsky.Richtext.Facet {
    struct Tag: UnionCodable, Hashable {
        @Indirect
        public var tag: String
        public init(
            tag: String
        ) {
            self._tag = .wrapped(tag)
        }
        public static let typeValue = #LexiconDefID("app.bsky.richtext.facet#tag")
    }
}
public extension App.Bsky.Unspecced.Defs {
    struct SkeletonSearchActor: UnionCodable, Hashable {
        @Indirect
        public var did: String
        public init(
            did: String
        ) {
            self._did = .wrapped(did)
        }
        public static let typeValue = #LexiconDefID("app.bsky.unspecced.defs#skeletonSearchActor")
    }
}
public extension App.Bsky.Unspecced.Defs {
    struct SkeletonSearchPost: UnionCodable, Hashable {
        @Indirect
        public var uri: ATURI
        public init(
            uri: ATURI
        ) {
            self._uri = .wrapped(uri)
        }
        public static let typeValue = #LexiconDefID("app.bsky.unspecced.defs#skeletonSearchPost")
    }
}
public extension App.Bsky.Unspecced {
    struct GetPopularFeedGenerators: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var query: String?
            public init(
                cursor: String? = nil,
                limit: Int? = nil,
                query: String? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._query = .wrapped(query)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: query.toQueryItems(name: "query"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var feeds: [App.Bsky.Feed.Defs.GeneratorView]
            public init(
                cursor: String? = nil,
                feeds: [App.Bsky.Feed.Defs.GeneratorView]
            ) {
                self._cursor = .wrapped(cursor)
                self._feeds = .wrapped(feeds)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.unspecced.getPopularFeedGenerators"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Unspecced {
    struct GetTaggedSuggestions: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            public init(

            ) {

            }
            public let queryItems: [URLQueryItem] = []
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var suggestions: [App.Bsky.Unspecced.GetTaggedSuggestions.Suggestion]
            public init(
                suggestions: [App.Bsky.Unspecced.GetTaggedSuggestions.Suggestion]
            ) {
                self._suggestions = .wrapped(suggestions)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.unspecced.getTaggedSuggestions"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Unspecced.GetTaggedSuggestions {
    struct Suggestion: UnionCodable, Hashable {
        @Indirect
        public var subject: SafeURL
        @Indirect
        public var subjectType: String
        @Indirect
        public var tag: String
        public init(
            subject: SafeURL,
            subjectType: String,
            tag: String
        ) {
            self._subject = .wrapped(subject)
            self._subjectType = .wrapped(subjectType)
            self._tag = .wrapped(tag)
        }
        public static let typeValue = #LexiconDefID("app.bsky.unspecced.getTaggedSuggestions#suggestion")
    }
}
public extension App.Bsky.Unspecced {
    struct SearchActorsSkeleton: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var q: String
            @Indirect
            public var typeahead: Bool?
            public init(
                cursor: String? = nil,
                limit: Int? = nil,
                q: String,
                typeahead: Bool? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._q = .wrapped(q)
                self._typeahead = .wrapped(typeahead)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: q.toQueryItems(name: "q"))
                parameters.append(contentsOf: typeahead.toQueryItems(name: "typeahead"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var actors: [App.Bsky.Unspecced.Defs.SkeletonSearchActor]
            @Indirect
            public var cursor: String?
            @Indirect
            public var hitsTotal: Int?
            public init(
                actors: [App.Bsky.Unspecced.Defs.SkeletonSearchActor],
                cursor: String? = nil,
                hitsTotal: Int? = nil
            ) {
                self._actors = .wrapped(actors)
                self._cursor = .wrapped(cursor)
                self._hitsTotal = .wrapped(hitsTotal)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.unspecced.searchActorsSkeleton"
        public let parameters: Parameters
    }
}
public extension App.Bsky.Unspecced {
    struct SearchPostsSkeleton: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var q: String
            public init(
                cursor: String? = nil,
                limit: Int? = nil,
                q: String
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._q = .wrapped(q)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: q.toQueryItems(name: "q"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var hitsTotal: Int?
            @Indirect
            public var posts: [App.Bsky.Unspecced.Defs.SkeletonSearchPost]
            public init(
                cursor: String? = nil,
                hitsTotal: Int? = nil,
                posts: [App.Bsky.Unspecced.Defs.SkeletonSearchPost]
            ) {
                self._cursor = .wrapped(cursor)
                self._hitsTotal = .wrapped(hitsTotal)
                self._posts = .wrapped(posts)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "app.bsky.unspecced.searchPostsSkeleton"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct CreateCommunicationTemplate: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var contentMarkdown: String
            @Indirect
            public var createdBy: String?
            @Indirect
            public var name: String
            @Indirect
            public var subject: String
            public init(
                contentMarkdown: String,
                createdBy: String? = nil,
                name: String,
                subject: String
            ) {
                self._contentMarkdown = .wrapped(contentMarkdown)
                self._createdBy = .wrapped(createdBy)
                self._name = .wrapped(name)
                self._subject = .wrapped(subject)
            }
        }
        public typealias Output = Com.Atproto.Admin.Defs.CommunicationTemplateView
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.createCommunicationTemplate"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin.Defs {
    struct AccountView: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var email: String?
        @Indirect
        public var emailConfirmedAt: Date?
        @Indirect
        public var handle: String
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var inviteNote: String?
        @Indirect
        public var invitedBy: Com.Atproto.Server.Defs.InviteCode?
        @Indirect
        public var invites: [Com.Atproto.Server.Defs.InviteCode]?
        @Indirect
        public var invitesDisabled: Bool?
        @Indirect
        public var relatedRecords: [[String: AnyCodable]]?
        public init(
            did: String,
            email: String? = nil,
            emailConfirmedAt: Date? = nil,
            handle: String,
            indexedAt: Date,
            inviteNote: String? = nil,
            invitedBy: Com.Atproto.Server.Defs.InviteCode? = nil,
            invites: [Com.Atproto.Server.Defs.InviteCode]? = nil,
            invitesDisabled: Bool? = nil,
            relatedRecords: [[String: AnyCodable]]? = nil
        ) {
            self._did = .wrapped(did)
            self._email = .wrapped(email)
            self._emailConfirmedAt = .wrapped(emailConfirmedAt)
            self._handle = .wrapped(handle)
            self._indexedAt = .wrapped(indexedAt)
            self._inviteNote = .wrapped(inviteNote)
            self._invitedBy = .wrapped(invitedBy)
            self._invites = .wrapped(invites)
            self._invitesDisabled = .wrapped(invitesDisabled)
            self._relatedRecords = .wrapped(relatedRecords)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#accountView")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct BlobView: UnionCodable, Hashable {
        @Indirect
        public var cid: String
        @Indirect
        public var createdAt: Date
        @Indirect
        public var details: Union2<Com.Atproto.Admin.Defs.ImageDetails, Com.Atproto.Admin.Defs.VideoDetails>?
        @Indirect
        public var mimeType: String
        @Indirect
        public var moderation: Com.Atproto.Admin.Defs.Moderation?
        @Indirect
        public var size: Int
        public init(
            cid: String,
            createdAt: Date,
            details: Union2<Com.Atproto.Admin.Defs.ImageDetails, Com.Atproto.Admin.Defs.VideoDetails>? = nil,
            mimeType: String,
            moderation: Com.Atproto.Admin.Defs.Moderation? = nil,
            size: Int
        ) {
            self._cid = .wrapped(cid)
            self._createdAt = .wrapped(createdAt)
            self._details = .wrapped(details)
            self._mimeType = .wrapped(mimeType)
            self._moderation = .wrapped(moderation)
            self._size = .wrapped(size)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#blobView")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct CommunicationTemplateView: UnionCodable, Hashable {
        @Indirect
        public var contentMarkdown: String
        @Indirect
        public var createdAt: Date
        @Indirect
        public var disabled: Bool
        @Indirect
        public var id: String
        @Indirect
        public var lastUpdatedBy: String
        @Indirect
        public var name: String
        @Indirect
        public var subject: String?
        @Indirect
        public var updatedAt: Date
        public init(
            contentMarkdown: String,
            createdAt: Date,
            disabled: Bool,
            id: String,
            lastUpdatedBy: String,
            name: String,
            subject: String? = nil,
            updatedAt: Date
        ) {
            self._contentMarkdown = .wrapped(contentMarkdown)
            self._createdAt = .wrapped(createdAt)
            self._disabled = .wrapped(disabled)
            self._id = .wrapped(id)
            self._lastUpdatedBy = .wrapped(lastUpdatedBy)
            self._name = .wrapped(name)
            self._subject = .wrapped(subject)
            self._updatedAt = .wrapped(updatedAt)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#communicationTemplateView")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ImageDetails: UnionCodable, Hashable {
        @Indirect
        public var height: Int
        @Indirect
        public var width: Int
        public init(
            height: Int,
            width: Int
        ) {
            self._height = .wrapped(height)
            self._width = .wrapped(width)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#imageDetails")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModEventAcknowledge: UnionCodable, Hashable {
        @Indirect
        public var comment: String?
        public init(
            comment: String? = nil
        ) {
            self._comment = .wrapped(comment)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#modEventAcknowledge")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModEventComment: UnionCodable, Hashable {
        @Indirect
        public var comment: String
        @Indirect
        public var sticky: Bool?
        public init(
            comment: String,
            sticky: Bool? = nil
        ) {
            self._comment = .wrapped(comment)
            self._sticky = .wrapped(sticky)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#modEventComment")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModEventEmail: UnionCodable, Hashable {
        @Indirect
        public var comment: String?
        @Indirect
        public var content: String?
        @Indirect
        public var subjectLine: String
        public init(
            comment: String? = nil,
            content: String? = nil,
            subjectLine: String
        ) {
            self._comment = .wrapped(comment)
            self._content = .wrapped(content)
            self._subjectLine = .wrapped(subjectLine)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#modEventEmail")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModEventEscalate: UnionCodable, Hashable {
        @Indirect
        public var comment: String?
        public init(
            comment: String? = nil
        ) {
            self._comment = .wrapped(comment)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#modEventEscalate")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModEventLabel: UnionCodable, Hashable {
        @Indirect
        public var comment: String?
        @Indirect
        public var createLabelVals: [String]
        @Indirect
        public var negateLabelVals: [String]
        public init(
            comment: String? = nil,
            createLabelVals: [String],
            negateLabelVals: [String]
        ) {
            self._comment = .wrapped(comment)
            self._createLabelVals = .wrapped(createLabelVals)
            self._negateLabelVals = .wrapped(negateLabelVals)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#modEventLabel")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModEventMute: UnionCodable, Hashable {
        @Indirect
        public var comment: String?
        @Indirect
        public var durationInHours: Int
        public init(
            comment: String? = nil,
            durationInHours: Int
        ) {
            self._comment = .wrapped(comment)
            self._durationInHours = .wrapped(durationInHours)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#modEventMute")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModEventReport: UnionCodable, Hashable {
        @Indirect
        public var comment: String?
        @Indirect
        public var reportType: Com.Atproto.Moderation.Defs.ReasonType
        public init(
            comment: String? = nil,
            reportType: Com.Atproto.Moderation.Defs.ReasonType
        ) {
            self._comment = .wrapped(comment)
            self._reportType = .wrapped(reportType)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#modEventReport")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModEventResolveAppeal: UnionCodable, Hashable {
        @Indirect
        public var comment: String?
        public init(
            comment: String? = nil
        ) {
            self._comment = .wrapped(comment)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#modEventResolveAppeal")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModEventReverseTakedown: UnionCodable, Hashable {
        @Indirect
        public var comment: String?
        public init(
            comment: String? = nil
        ) {
            self._comment = .wrapped(comment)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#modEventReverseTakedown")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModEventTag: UnionCodable, Hashable {
        @Indirect
        public var add: [String]
        @Indirect
        public var comment: String?
        @Indirect
        public var remove: [String]
        public init(
            add: [String],
            comment: String? = nil,
            remove: [String]
        ) {
            self._add = .wrapped(add)
            self._comment = .wrapped(comment)
            self._remove = .wrapped(remove)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#modEventTag")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModEventTakedown: UnionCodable, Hashable {
        @Indirect
        public var comment: String?
        @Indirect
        public var durationInHours: Int?
        public init(
            comment: String? = nil,
            durationInHours: Int? = nil
        ) {
            self._comment = .wrapped(comment)
            self._durationInHours = .wrapped(durationInHours)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#modEventTakedown")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModEventUnmute: UnionCodable, Hashable {
        @Indirect
        public var comment: String?
        public init(
            comment: String? = nil
        ) {
            self._comment = .wrapped(comment)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#modEventUnmute")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModEventView: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var createdBy: String
        @Indirect
        public var creatorHandle: String?
        @Indirect
        public var event: Union10<Com.Atproto.Admin.Defs.ModEventTakedown, Com.Atproto.Admin.Defs.ModEventReverseTakedown, Com.Atproto.Admin.Defs.ModEventComment, Com.Atproto.Admin.Defs.ModEventReport, Com.Atproto.Admin.Defs.ModEventLabel, Com.Atproto.Admin.Defs.ModEventAcknowledge, Com.Atproto.Admin.Defs.ModEventEscalate, Com.Atproto.Admin.Defs.ModEventMute, Com.Atproto.Admin.Defs.ModEventEmail, Com.Atproto.Admin.Defs.ModEventResolveAppeal>
        @Indirect
        public var id: Int
        @Indirect
        public var subject: Union2<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef>
        @Indirect
        public var subjectBlobCids: [String]
        @Indirect
        public var subjectHandle: String?
        public init(
            createdAt: Date,
            createdBy: String,
            creatorHandle: String? = nil,
            event: Union10<Com.Atproto.Admin.Defs.ModEventTakedown, Com.Atproto.Admin.Defs.ModEventReverseTakedown, Com.Atproto.Admin.Defs.ModEventComment, Com.Atproto.Admin.Defs.ModEventReport, Com.Atproto.Admin.Defs.ModEventLabel, Com.Atproto.Admin.Defs.ModEventAcknowledge, Com.Atproto.Admin.Defs.ModEventEscalate, Com.Atproto.Admin.Defs.ModEventMute, Com.Atproto.Admin.Defs.ModEventEmail, Com.Atproto.Admin.Defs.ModEventResolveAppeal>,
            id: Int,
            subject: Union2<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef>,
            subjectBlobCids: [String],
            subjectHandle: String? = nil
        ) {
            self._createdAt = .wrapped(createdAt)
            self._createdBy = .wrapped(createdBy)
            self._creatorHandle = .wrapped(creatorHandle)
            self._event = .wrapped(event)
            self._id = .wrapped(id)
            self._subject = .wrapped(subject)
            self._subjectBlobCids = .wrapped(subjectBlobCids)
            self._subjectHandle = .wrapped(subjectHandle)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#modEventView")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModEventViewDetail: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var createdBy: String
        @Indirect
        public var event: Union10<Com.Atproto.Admin.Defs.ModEventTakedown, Com.Atproto.Admin.Defs.ModEventReverseTakedown, Com.Atproto.Admin.Defs.ModEventComment, Com.Atproto.Admin.Defs.ModEventReport, Com.Atproto.Admin.Defs.ModEventLabel, Com.Atproto.Admin.Defs.ModEventAcknowledge, Com.Atproto.Admin.Defs.ModEventEscalate, Com.Atproto.Admin.Defs.ModEventMute, Com.Atproto.Admin.Defs.ModEventEmail, Com.Atproto.Admin.Defs.ModEventResolveAppeal>
        @Indirect
        public var id: Int
        @Indirect
        public var subject: Union4<Com.Atproto.Admin.Defs.RepoView, Com.Atproto.Admin.Defs.RepoViewNotFound, Com.Atproto.Admin.Defs.RecordView, Com.Atproto.Admin.Defs.RecordViewNotFound>
        @Indirect
        public var subjectBlobs: [Com.Atproto.Admin.Defs.BlobView]
        public init(
            createdAt: Date,
            createdBy: String,
            event: Union10<Com.Atproto.Admin.Defs.ModEventTakedown, Com.Atproto.Admin.Defs.ModEventReverseTakedown, Com.Atproto.Admin.Defs.ModEventComment, Com.Atproto.Admin.Defs.ModEventReport, Com.Atproto.Admin.Defs.ModEventLabel, Com.Atproto.Admin.Defs.ModEventAcknowledge, Com.Atproto.Admin.Defs.ModEventEscalate, Com.Atproto.Admin.Defs.ModEventMute, Com.Atproto.Admin.Defs.ModEventEmail, Com.Atproto.Admin.Defs.ModEventResolveAppeal>,
            id: Int,
            subject: Union4<Com.Atproto.Admin.Defs.RepoView, Com.Atproto.Admin.Defs.RepoViewNotFound, Com.Atproto.Admin.Defs.RecordView, Com.Atproto.Admin.Defs.RecordViewNotFound>,
            subjectBlobs: [Com.Atproto.Admin.Defs.BlobView]
        ) {
            self._createdAt = .wrapped(createdAt)
            self._createdBy = .wrapped(createdBy)
            self._event = .wrapped(event)
            self._id = .wrapped(id)
            self._subject = .wrapped(subject)
            self._subjectBlobs = .wrapped(subjectBlobs)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#modEventViewDetail")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct Moderation: UnionCodable, Hashable {
        @Indirect
        public var subjectStatus: Com.Atproto.Admin.Defs.SubjectStatusView?
        public init(
            subjectStatus: Com.Atproto.Admin.Defs.SubjectStatusView? = nil
        ) {
            self._subjectStatus = .wrapped(subjectStatus)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#moderation")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ModerationDetail: UnionCodable, Hashable {
        @Indirect
        public var subjectStatus: Com.Atproto.Admin.Defs.SubjectStatusView?
        public init(
            subjectStatus: Com.Atproto.Admin.Defs.SubjectStatusView? = nil
        ) {
            self._subjectStatus = .wrapped(subjectStatus)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#moderationDetail")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct RecordView: UnionCodable, Hashable {
        @Indirect
        public var blobCids: [String]
        @Indirect
        public var cid: String
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var moderation: Com.Atproto.Admin.Defs.Moderation
        @Indirect
        public var repo: Com.Atproto.Admin.Defs.RepoView
        @Indirect
        public var uri: ATURI
        @Indirect
        public var value: [String: AnyCodable]
        public init(
            blobCids: [String],
            cid: String,
            indexedAt: Date,
            moderation: Com.Atproto.Admin.Defs.Moderation,
            repo: Com.Atproto.Admin.Defs.RepoView,
            uri: ATURI,
            value: [String: AnyCodable]
        ) {
            self._blobCids = .wrapped(blobCids)
            self._cid = .wrapped(cid)
            self._indexedAt = .wrapped(indexedAt)
            self._moderation = .wrapped(moderation)
            self._repo = .wrapped(repo)
            self._uri = .wrapped(uri)
            self._value = .wrapped(value)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#recordView")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct RecordViewDetail: UnionCodable, Hashable {
        @Indirect
        public var blobs: [Com.Atproto.Admin.Defs.BlobView]
        @Indirect
        public var cid: String
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var labels: [Com.Atproto.Label.Defs.Label]?
        @Indirect
        public var moderation: Com.Atproto.Admin.Defs.ModerationDetail
        @Indirect
        public var repo: Com.Atproto.Admin.Defs.RepoView
        @Indirect
        public var uri: ATURI
        @Indirect
        public var value: [String: AnyCodable]
        public init(
            blobs: [Com.Atproto.Admin.Defs.BlobView],
            cid: String,
            indexedAt: Date,
            labels: [Com.Atproto.Label.Defs.Label]? = nil,
            moderation: Com.Atproto.Admin.Defs.ModerationDetail,
            repo: Com.Atproto.Admin.Defs.RepoView,
            uri: ATURI,
            value: [String: AnyCodable]
        ) {
            self._blobs = .wrapped(blobs)
            self._cid = .wrapped(cid)
            self._indexedAt = .wrapped(indexedAt)
            self._labels = .wrapped(labels)
            self._moderation = .wrapped(moderation)
            self._repo = .wrapped(repo)
            self._uri = .wrapped(uri)
            self._value = .wrapped(value)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#recordViewDetail")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct RecordViewNotFound: UnionCodable, Hashable {
        @Indirect
        public var uri: ATURI
        public init(
            uri: ATURI
        ) {
            self._uri = .wrapped(uri)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#recordViewNotFound")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct RepoBlobRef: UnionCodable, Hashable {
        @Indirect
        public var cid: String
        @Indirect
        public var did: String
        @Indirect
        public var recordUri: ATURI?
        public init(
            cid: String,
            did: String,
            recordUri: ATURI? = nil
        ) {
            self._cid = .wrapped(cid)
            self._did = .wrapped(did)
            self._recordUri = .wrapped(recordUri)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#repoBlobRef")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct RepoRef: UnionCodable, Hashable {
        @Indirect
        public var did: String
        public init(
            did: String
        ) {
            self._did = .wrapped(did)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#repoRef")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct RepoView: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var email: String?
        @Indirect
        public var handle: String
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var inviteNote: String?
        @Indirect
        public var invitedBy: Com.Atproto.Server.Defs.InviteCode?
        @Indirect
        public var invitesDisabled: Bool?
        @Indirect
        public var moderation: Com.Atproto.Admin.Defs.Moderation
        @Indirect
        public var relatedRecords: [[String: AnyCodable]]
        public init(
            did: String,
            email: String? = nil,
            handle: String,
            indexedAt: Date,
            inviteNote: String? = nil,
            invitedBy: Com.Atproto.Server.Defs.InviteCode? = nil,
            invitesDisabled: Bool? = nil,
            moderation: Com.Atproto.Admin.Defs.Moderation,
            relatedRecords: [[String: AnyCodable]]
        ) {
            self._did = .wrapped(did)
            self._email = .wrapped(email)
            self._handle = .wrapped(handle)
            self._indexedAt = .wrapped(indexedAt)
            self._inviteNote = .wrapped(inviteNote)
            self._invitedBy = .wrapped(invitedBy)
            self._invitesDisabled = .wrapped(invitesDisabled)
            self._moderation = .wrapped(moderation)
            self._relatedRecords = .wrapped(relatedRecords)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#repoView")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct RepoViewDetail: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var email: String?
        @Indirect
        public var emailConfirmedAt: Date?
        @Indirect
        public var handle: String
        @Indirect
        public var indexedAt: Date
        @Indirect
        public var inviteNote: String?
        @Indirect
        public var invitedBy: Com.Atproto.Server.Defs.InviteCode?
        @Indirect
        public var invites: [Com.Atproto.Server.Defs.InviteCode]?
        @Indirect
        public var invitesDisabled: Bool?
        @Indirect
        public var labels: [Com.Atproto.Label.Defs.Label]?
        @Indirect
        public var moderation: Com.Atproto.Admin.Defs.ModerationDetail
        @Indirect
        public var relatedRecords: [[String: AnyCodable]]
        public init(
            did: String,
            email: String? = nil,
            emailConfirmedAt: Date? = nil,
            handle: String,
            indexedAt: Date,
            inviteNote: String? = nil,
            invitedBy: Com.Atproto.Server.Defs.InviteCode? = nil,
            invites: [Com.Atproto.Server.Defs.InviteCode]? = nil,
            invitesDisabled: Bool? = nil,
            labels: [Com.Atproto.Label.Defs.Label]? = nil,
            moderation: Com.Atproto.Admin.Defs.ModerationDetail,
            relatedRecords: [[String: AnyCodable]]
        ) {
            self._did = .wrapped(did)
            self._email = .wrapped(email)
            self._emailConfirmedAt = .wrapped(emailConfirmedAt)
            self._handle = .wrapped(handle)
            self._indexedAt = .wrapped(indexedAt)
            self._inviteNote = .wrapped(inviteNote)
            self._invitedBy = .wrapped(invitedBy)
            self._invites = .wrapped(invites)
            self._invitesDisabled = .wrapped(invitesDisabled)
            self._labels = .wrapped(labels)
            self._moderation = .wrapped(moderation)
            self._relatedRecords = .wrapped(relatedRecords)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#repoViewDetail")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct RepoViewNotFound: UnionCodable, Hashable {
        @Indirect
        public var did: String
        public init(
            did: String
        ) {
            self._did = .wrapped(did)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#repoViewNotFound")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ReportView: UnionCodable, Hashable {
        @Indirect
        public var comment: String?
        @Indirect
        public var createdAt: Date
        @Indirect
        public var id: Int
        @Indirect
        public var reasonType: Com.Atproto.Moderation.Defs.ReasonType
        @Indirect
        public var reportedBy: String
        @Indirect
        public var resolvedByActionIds: [Int]
        @Indirect
        public var subject: Union2<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef>
        @Indirect
        public var subjectRepoHandle: String?
        public init(
            comment: String? = nil,
            createdAt: Date,
            id: Int,
            reasonType: Com.Atproto.Moderation.Defs.ReasonType,
            reportedBy: String,
            resolvedByActionIds: [Int],
            subject: Union2<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef>,
            subjectRepoHandle: String? = nil
        ) {
            self._comment = .wrapped(comment)
            self._createdAt = .wrapped(createdAt)
            self._id = .wrapped(id)
            self._reasonType = .wrapped(reasonType)
            self._reportedBy = .wrapped(reportedBy)
            self._resolvedByActionIds = .wrapped(resolvedByActionIds)
            self._subject = .wrapped(subject)
            self._subjectRepoHandle = .wrapped(subjectRepoHandle)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#reportView")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct ReportViewDetail: UnionCodable, Hashable {
        @Indirect
        public var comment: String?
        @Indirect
        public var createdAt: Date
        @Indirect
        public var id: Int
        @Indirect
        public var reasonType: Com.Atproto.Moderation.Defs.ReasonType
        @Indirect
        public var reportedBy: String
        @Indirect
        public var resolvedByActions: [Com.Atproto.Admin.Defs.ModEventView]
        @Indirect
        public var subject: Union4<Com.Atproto.Admin.Defs.RepoView, Com.Atproto.Admin.Defs.RepoViewNotFound, Com.Atproto.Admin.Defs.RecordView, Com.Atproto.Admin.Defs.RecordViewNotFound>
        @Indirect
        public var subjectStatus: Com.Atproto.Admin.Defs.SubjectStatusView?
        public init(
            comment: String? = nil,
            createdAt: Date,
            id: Int,
            reasonType: Com.Atproto.Moderation.Defs.ReasonType,
            reportedBy: String,
            resolvedByActions: [Com.Atproto.Admin.Defs.ModEventView],
            subject: Union4<Com.Atproto.Admin.Defs.RepoView, Com.Atproto.Admin.Defs.RepoViewNotFound, Com.Atproto.Admin.Defs.RecordView, Com.Atproto.Admin.Defs.RecordViewNotFound>,
            subjectStatus: Com.Atproto.Admin.Defs.SubjectStatusView? = nil
        ) {
            self._comment = .wrapped(comment)
            self._createdAt = .wrapped(createdAt)
            self._id = .wrapped(id)
            self._reasonType = .wrapped(reasonType)
            self._reportedBy = .wrapped(reportedBy)
            self._resolvedByActions = .wrapped(resolvedByActions)
            self._subject = .wrapped(subject)
            self._subjectStatus = .wrapped(subjectStatus)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#reportViewDetail")
    }
}
public extension Com.Atproto.Admin.Defs {
}
public extension Com.Atproto.Admin.Defs {
}
public extension Com.Atproto.Admin.Defs {
}
public extension Com.Atproto.Admin.Defs {
}
public extension Com.Atproto.Admin.Defs {
    struct StatusAttr: UnionCodable, Hashable {
        @Indirect
        public var applied: Bool
        @Indirect
        public var ref: String?
        public init(
            applied: Bool,
            ref: String? = nil
        ) {
            self._applied = .wrapped(applied)
            self._ref = .wrapped(ref)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#statusAttr")
    }
}
public extension Com.Atproto.Admin.Defs {
    typealias SubjectReviewState = String
}
public extension Com.Atproto.Admin.Defs {
    struct SubjectStatusView: UnionCodable, Hashable {
        @Indirect
        public var appealed: Bool?
        @Indirect
        public var comment: String?
        @Indirect
        public var createdAt: Date
        @Indirect
        public var id: Int
        @Indirect
        public var lastAppealedAt: Date?
        @Indirect
        public var lastReportedAt: Date?
        @Indirect
        public var lastReviewedAt: Date?
        @Indirect
        public var lastReviewedBy: String?
        @Indirect
        public var muteUntil: Date?
        @Indirect
        public var reviewState: Com.Atproto.Admin.Defs.SubjectReviewState
        @Indirect
        public var subject: Union2<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef>
        @Indirect
        public var subjectBlobCids: [String]?
        @Indirect
        public var subjectRepoHandle: String?
        @Indirect
        public var suspendUntil: Date?
        @Indirect
        public var tags: [String]?
        @Indirect
        public var takendown: Bool?
        @Indirect
        public var updatedAt: Date
        public init(
            appealed: Bool? = nil,
            comment: String? = nil,
            createdAt: Date,
            id: Int,
            lastAppealedAt: Date? = nil,
            lastReportedAt: Date? = nil,
            lastReviewedAt: Date? = nil,
            lastReviewedBy: String? = nil,
            muteUntil: Date? = nil,
            reviewState: Com.Atproto.Admin.Defs.SubjectReviewState,
            subject: Union2<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef>,
            subjectBlobCids: [String]? = nil,
            subjectRepoHandle: String? = nil,
            suspendUntil: Date? = nil,
            tags: [String]? = nil,
            takendown: Bool? = nil,
            updatedAt: Date
        ) {
            self._appealed = .wrapped(appealed)
            self._comment = .wrapped(comment)
            self._createdAt = .wrapped(createdAt)
            self._id = .wrapped(id)
            self._lastAppealedAt = .wrapped(lastAppealedAt)
            self._lastReportedAt = .wrapped(lastReportedAt)
            self._lastReviewedAt = .wrapped(lastReviewedAt)
            self._lastReviewedBy = .wrapped(lastReviewedBy)
            self._muteUntil = .wrapped(muteUntil)
            self._reviewState = .wrapped(reviewState)
            self._subject = .wrapped(subject)
            self._subjectBlobCids = .wrapped(subjectBlobCids)
            self._subjectRepoHandle = .wrapped(subjectRepoHandle)
            self._suspendUntil = .wrapped(suspendUntil)
            self._tags = .wrapped(tags)
            self._takendown = .wrapped(takendown)
            self._updatedAt = .wrapped(updatedAt)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#subjectStatusView")
    }
}
public extension Com.Atproto.Admin.Defs {
    struct VideoDetails: UnionCodable, Hashable {
        @Indirect
        public var height: Int
        @Indirect
        public var length: Int
        @Indirect
        public var width: Int
        public init(
            height: Int,
            length: Int,
            width: Int
        ) {
            self._height = .wrapped(height)
            self._length = .wrapped(length)
            self._width = .wrapped(width)
        }
        public static let typeValue = #LexiconDefID("com.atproto.admin.defs#videoDetails")
    }
}
public extension Com.Atproto.Admin {
    struct DeleteAccount: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var did: String
            public init(
                did: String
            ) {
                self._did = .wrapped(did)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.deleteAccount"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct DeleteCommunicationTemplate: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var id: String
            public init(
                id: String
            ) {
                self._id = .wrapped(id)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.deleteCommunicationTemplate"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct DisableAccountInvites: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var account: String
            @Indirect
            public var note: String?
            public init(
                account: String,
                note: String? = nil
            ) {
                self._account = .wrapped(account)
                self._note = .wrapped(note)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.disableAccountInvites"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct DisableInviteCodes: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var accounts: [String]?
            @Indirect
            public var codes: [String]?
            public init(
                accounts: [String]? = nil,
                codes: [String]? = nil
            ) {
                self._accounts = .wrapped(accounts)
                self._codes = .wrapped(codes)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.disableInviteCodes"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct EmitModerationEvent: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var createdBy: String
            @Indirect
            public var event: Union11<Com.Atproto.Admin.Defs.ModEventTakedown, Com.Atproto.Admin.Defs.ModEventAcknowledge, Com.Atproto.Admin.Defs.ModEventEscalate, Com.Atproto.Admin.Defs.ModEventComment, Com.Atproto.Admin.Defs.ModEventLabel, Com.Atproto.Admin.Defs.ModEventReport, Com.Atproto.Admin.Defs.ModEventMute, Com.Atproto.Admin.Defs.ModEventReverseTakedown, Com.Atproto.Admin.Defs.ModEventUnmute, Com.Atproto.Admin.Defs.ModEventEmail, Com.Atproto.Admin.Defs.ModEventTag>
            @Indirect
            public var subject: Union2<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef>
            @Indirect
            public var subjectBlobCids: [String]?
            public init(
                createdBy: String,
                event: Union11<Com.Atproto.Admin.Defs.ModEventTakedown, Com.Atproto.Admin.Defs.ModEventAcknowledge, Com.Atproto.Admin.Defs.ModEventEscalate, Com.Atproto.Admin.Defs.ModEventComment, Com.Atproto.Admin.Defs.ModEventLabel, Com.Atproto.Admin.Defs.ModEventReport, Com.Atproto.Admin.Defs.ModEventMute, Com.Atproto.Admin.Defs.ModEventReverseTakedown, Com.Atproto.Admin.Defs.ModEventUnmute, Com.Atproto.Admin.Defs.ModEventEmail, Com.Atproto.Admin.Defs.ModEventTag>,
                subject: Union2<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef>,
                subjectBlobCids: [String]? = nil
            ) {
                self._createdBy = .wrapped(createdBy)
                self._event = .wrapped(event)
                self._subject = .wrapped(subject)
                self._subjectBlobCids = .wrapped(subjectBlobCids)
            }
        }
        public typealias Output = Com.Atproto.Admin.Defs.ModEventView
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.emitModerationEvent"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct EnableAccountInvites: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var account: String
            @Indirect
            public var note: String?
            public init(
                account: String,
                note: String? = nil
            ) {
                self._account = .wrapped(account)
                self._note = .wrapped(note)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.enableAccountInvites"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct GetAccountInfo: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var did: String
            public init(
                did: String
            ) {
                self._did = .wrapped(did)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: did.toQueryItems(name: "did"))

                return parameters
            }
        }
        public typealias Output = Com.Atproto.Admin.Defs.AccountView
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.getAccountInfo"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct GetAccountInfos: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var dids: [String]
            public init(
                dids: [String]
            ) {
                self._dids = .wrapped(dids)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: dids.toQueryItems(name: "dids"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var infos: [Com.Atproto.Admin.Defs.AccountView]
            public init(
                infos: [Com.Atproto.Admin.Defs.AccountView]
            ) {
                self._infos = .wrapped(infos)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.getAccountInfos"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct GetInviteCodes: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var sort: String?
            public init(
                cursor: String? = nil,
                limit: Int? = nil,
                sort: String? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._sort = .wrapped(sort)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: sort.toQueryItems(name: "sort"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var codes: [Com.Atproto.Server.Defs.InviteCode]
            @Indirect
            public var cursor: String?
            public init(
                codes: [Com.Atproto.Server.Defs.InviteCode],
                cursor: String? = nil
            ) {
                self._codes = .wrapped(codes)
                self._cursor = .wrapped(cursor)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.getInviteCodes"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct GetModerationEvent: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var id: Int
            public init(
                id: Int
            ) {
                self._id = .wrapped(id)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: id.toQueryItems(name: "id"))

                return parameters
            }
        }
        public typealias Output = Com.Atproto.Admin.Defs.ModEventViewDetail
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.getModerationEvent"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct GetRecord: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cid: String?
            @Indirect
            public var uri: ATURI
            public init(
                cid: String? = nil,
                uri: ATURI
            ) {
                self._cid = .wrapped(cid)
                self._uri = .wrapped(uri)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cid.toQueryItems(name: "cid"))
                parameters.append(contentsOf: uri.toQueryItems(name: "uri"))

                return parameters
            }
        }
        public typealias Output = Com.Atproto.Admin.Defs.RecordViewDetail
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.getRecord"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct GetRepo: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var did: String
            public init(
                did: String
            ) {
                self._did = .wrapped(did)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: did.toQueryItems(name: "did"))

                return parameters
            }
        }
        public typealias Output = Com.Atproto.Admin.Defs.RepoViewDetail
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.getRepo"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct GetSubjectStatus: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var blob: String?
            @Indirect
            public var did: String?
            @Indirect
            public var uri: ATURI?
            public init(
                blob: String? = nil,
                did: String? = nil,
                uri: ATURI? = nil
            ) {
                self._blob = .wrapped(blob)
                self._did = .wrapped(did)
                self._uri = .wrapped(uri)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: blob.toQueryItems(name: "blob"))
                parameters.append(contentsOf: did.toQueryItems(name: "did"))
                parameters.append(contentsOf: uri.toQueryItems(name: "uri"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var subject: Union3<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef, Com.Atproto.Admin.Defs.RepoBlobRef>
            @Indirect
            public var takedown: Com.Atproto.Admin.Defs.StatusAttr?
            public init(
                subject: Union3<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef, Com.Atproto.Admin.Defs.RepoBlobRef>,
                takedown: Com.Atproto.Admin.Defs.StatusAttr? = nil
            ) {
                self._subject = .wrapped(subject)
                self._takedown = .wrapped(takedown)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.getSubjectStatus"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct ListCommunicationTemplates: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var communicationTemplates: [Com.Atproto.Admin.Defs.CommunicationTemplateView]
            public init(
                communicationTemplates: [Com.Atproto.Admin.Defs.CommunicationTemplateView]
            ) {
                self._communicationTemplates = .wrapped(communicationTemplates)
            }
        }
        public init(

        ) {

        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.listCommunicationTemplates"
    }
}
public extension Com.Atproto.Admin {
    struct QueryModerationEvents: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var addedLabels: [String]?
            @Indirect
            public var addedTags: [String]?
            @Indirect
            public var comment: String?
            @Indirect
            public var createdAfter: Date?
            @Indirect
            public var createdBefore: Date?
            @Indirect
            public var createdBy: String?
            @Indirect
            public var cursor: String?
            @Indirect
            public var hasComment: Bool?
            @Indirect
            public var includeAllUserRecords: Bool?
            @Indirect
            public var limit: Int?
            @Indirect
            public var removedLabels: [String]?
            @Indirect
            public var removedTags: [String]?
            @Indirect
            public var reportTypes: [String]?
            @Indirect
            public var sortDirection: String?
            @Indirect
            public var subject: SafeURL?
            @Indirect
            public var types: [String]?
            public init(
                addedLabels: [String]? = nil,
                addedTags: [String]? = nil,
                comment: String? = nil,
                createdAfter: Date? = nil,
                createdBefore: Date? = nil,
                createdBy: String? = nil,
                cursor: String? = nil,
                hasComment: Bool? = nil,
                includeAllUserRecords: Bool? = nil,
                limit: Int? = nil,
                removedLabels: [String]? = nil,
                removedTags: [String]? = nil,
                reportTypes: [String]? = nil,
                sortDirection: String? = nil,
                subject: SafeURL? = nil,
                types: [String]? = nil
            ) {
                self._addedLabels = .wrapped(addedLabels)
                self._addedTags = .wrapped(addedTags)
                self._comment = .wrapped(comment)
                self._createdAfter = .wrapped(createdAfter)
                self._createdBefore = .wrapped(createdBefore)
                self._createdBy = .wrapped(createdBy)
                self._cursor = .wrapped(cursor)
                self._hasComment = .wrapped(hasComment)
                self._includeAllUserRecords = .wrapped(includeAllUserRecords)
                self._limit = .wrapped(limit)
                self._removedLabels = .wrapped(removedLabels)
                self._removedTags = .wrapped(removedTags)
                self._reportTypes = .wrapped(reportTypes)
                self._sortDirection = .wrapped(sortDirection)
                self._subject = .wrapped(subject)
                self._types = .wrapped(types)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: addedLabels.toQueryItems(name: "addedLabels"))
                parameters.append(contentsOf: addedTags.toQueryItems(name: "addedTags"))
                parameters.append(contentsOf: comment.toQueryItems(name: "comment"))
                parameters.append(contentsOf: createdAfter.toQueryItems(name: "createdAfter"))
                parameters.append(contentsOf: createdBefore.toQueryItems(name: "createdBefore"))
                parameters.append(contentsOf: createdBy.toQueryItems(name: "createdBy"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: hasComment.toQueryItems(name: "hasComment"))
                parameters.append(contentsOf: includeAllUserRecords.toQueryItems(name: "includeAllUserRecords"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: removedLabels.toQueryItems(name: "removedLabels"))
                parameters.append(contentsOf: removedTags.toQueryItems(name: "removedTags"))
                parameters.append(contentsOf: reportTypes.toQueryItems(name: "reportTypes"))
                parameters.append(contentsOf: sortDirection.toQueryItems(name: "sortDirection"))
                parameters.append(contentsOf: subject.toQueryItems(name: "subject"))
                parameters.append(contentsOf: types.toQueryItems(name: "types"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var events: [Com.Atproto.Admin.Defs.ModEventView]
            public init(
                cursor: String? = nil,
                events: [Com.Atproto.Admin.Defs.ModEventView]
            ) {
                self._cursor = .wrapped(cursor)
                self._events = .wrapped(events)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.queryModerationEvents"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct QueryModerationStatuses: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var appealed: Bool?
            @Indirect
            public var comment: String?
            @Indirect
            public var cursor: String?
            @Indirect
            public var excludeTags: [String]?
            @Indirect
            public var ignoreSubjects: [SafeURL]?
            @Indirect
            public var includeMuted: Bool?
            @Indirect
            public var lastReviewedBy: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var reportedAfter: Date?
            @Indirect
            public var reportedBefore: Date?
            @Indirect
            public var reviewState: String?
            @Indirect
            public var reviewedAfter: Date?
            @Indirect
            public var reviewedBefore: Date?
            @Indirect
            public var sortDirection: String?
            @Indirect
            public var sortField: String?
            @Indirect
            public var subject: SafeURL?
            @Indirect
            public var tags: [String]?
            @Indirect
            public var takendown: Bool?
            public init(
                appealed: Bool? = nil,
                comment: String? = nil,
                cursor: String? = nil,
                excludeTags: [String]? = nil,
                ignoreSubjects: [SafeURL]? = nil,
                includeMuted: Bool? = nil,
                lastReviewedBy: String? = nil,
                limit: Int? = nil,
                reportedAfter: Date? = nil,
                reportedBefore: Date? = nil,
                reviewState: String? = nil,
                reviewedAfter: Date? = nil,
                reviewedBefore: Date? = nil,
                sortDirection: String? = nil,
                sortField: String? = nil,
                subject: SafeURL? = nil,
                tags: [String]? = nil,
                takendown: Bool? = nil
            ) {
                self._appealed = .wrapped(appealed)
                self._comment = .wrapped(comment)
                self._cursor = .wrapped(cursor)
                self._excludeTags = .wrapped(excludeTags)
                self._ignoreSubjects = .wrapped(ignoreSubjects)
                self._includeMuted = .wrapped(includeMuted)
                self._lastReviewedBy = .wrapped(lastReviewedBy)
                self._limit = .wrapped(limit)
                self._reportedAfter = .wrapped(reportedAfter)
                self._reportedBefore = .wrapped(reportedBefore)
                self._reviewState = .wrapped(reviewState)
                self._reviewedAfter = .wrapped(reviewedAfter)
                self._reviewedBefore = .wrapped(reviewedBefore)
                self._sortDirection = .wrapped(sortDirection)
                self._sortField = .wrapped(sortField)
                self._subject = .wrapped(subject)
                self._tags = .wrapped(tags)
                self._takendown = .wrapped(takendown)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: appealed.toQueryItems(name: "appealed"))
                parameters.append(contentsOf: comment.toQueryItems(name: "comment"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: excludeTags.toQueryItems(name: "excludeTags"))
                parameters.append(contentsOf: ignoreSubjects.toQueryItems(name: "ignoreSubjects"))
                parameters.append(contentsOf: includeMuted.toQueryItems(name: "includeMuted"))
                parameters.append(contentsOf: lastReviewedBy.toQueryItems(name: "lastReviewedBy"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: reportedAfter.toQueryItems(name: "reportedAfter"))
                parameters.append(contentsOf: reportedBefore.toQueryItems(name: "reportedBefore"))
                parameters.append(contentsOf: reviewState.toQueryItems(name: "reviewState"))
                parameters.append(contentsOf: reviewedAfter.toQueryItems(name: "reviewedAfter"))
                parameters.append(contentsOf: reviewedBefore.toQueryItems(name: "reviewedBefore"))
                parameters.append(contentsOf: sortDirection.toQueryItems(name: "sortDirection"))
                parameters.append(contentsOf: sortField.toQueryItems(name: "sortField"))
                parameters.append(contentsOf: subject.toQueryItems(name: "subject"))
                parameters.append(contentsOf: tags.toQueryItems(name: "tags"))
                parameters.append(contentsOf: takendown.toQueryItems(name: "takendown"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var subjectStatuses: [Com.Atproto.Admin.Defs.SubjectStatusView]
            public init(
                cursor: String? = nil,
                subjectStatuses: [Com.Atproto.Admin.Defs.SubjectStatusView]
            ) {
                self._cursor = .wrapped(cursor)
                self._subjectStatuses = .wrapped(subjectStatuses)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.queryModerationStatuses"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct SearchRepos: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var q: String?
            @Indirect
            public var term: String?
            public init(
                cursor: String? = nil,
                limit: Int? = nil,
                q: String? = nil,
                term: String? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._q = .wrapped(q)
                self._term = .wrapped(term)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: q.toQueryItems(name: "q"))
                parameters.append(contentsOf: term.toQueryItems(name: "term"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var repos: [Com.Atproto.Admin.Defs.RepoView]
            public init(
                cursor: String? = nil,
                repos: [Com.Atproto.Admin.Defs.RepoView]
            ) {
                self._cursor = .wrapped(cursor)
                self._repos = .wrapped(repos)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.admin.searchRepos"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Admin {
    struct SendEmail: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var comment: String?
            @Indirect
            public var content: String
            @Indirect
            public var recipientDid: String
            @Indirect
            public var senderDid: String
            @Indirect
            public var subject: String?
            public init(
                comment: String? = nil,
                content: String,
                recipientDid: String,
                senderDid: String,
                subject: String? = nil
            ) {
                self._comment = .wrapped(comment)
                self._content = .wrapped(content)
                self._recipientDid = .wrapped(recipientDid)
                self._senderDid = .wrapped(senderDid)
                self._subject = .wrapped(subject)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var sent: Bool
            public init(
                sent: Bool
            ) {
                self._sent = .wrapped(sent)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.sendEmail"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct UpdateAccountEmail: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var account: String
            @Indirect
            public var email: String
            public init(
                account: String,
                email: String
            ) {
                self._account = .wrapped(account)
                self._email = .wrapped(email)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.updateAccountEmail"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct UpdateAccountHandle: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var did: String
            @Indirect
            public var handle: String
            public init(
                did: String,
                handle: String
            ) {
                self._did = .wrapped(did)
                self._handle = .wrapped(handle)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.updateAccountHandle"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct UpdateAccountPassword: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var did: String
            @Indirect
            public var password: String
            public init(
                did: String,
                password: String
            ) {
                self._did = .wrapped(did)
                self._password = .wrapped(password)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.updateAccountPassword"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct UpdateCommunicationTemplate: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var contentMarkdown: String?
            @Indirect
            public var disabled: Bool?
            @Indirect
            public var id: String
            @Indirect
            public var name: String?
            @Indirect
            public var subject: String?
            @Indirect
            public var updatedBy: String?
            public init(
                contentMarkdown: String? = nil,
                disabled: Bool? = nil,
                id: String,
                name: String? = nil,
                subject: String? = nil,
                updatedBy: String? = nil
            ) {
                self._contentMarkdown = .wrapped(contentMarkdown)
                self._disabled = .wrapped(disabled)
                self._id = .wrapped(id)
                self._name = .wrapped(name)
                self._subject = .wrapped(subject)
                self._updatedBy = .wrapped(updatedBy)
            }
        }
        public typealias Output = Com.Atproto.Admin.Defs.CommunicationTemplateView
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.updateCommunicationTemplate"
        public let input: Input?
    }
}
public extension Com.Atproto.Admin {
    struct UpdateSubjectStatus: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var subject: Union3<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef, Com.Atproto.Admin.Defs.RepoBlobRef>
            @Indirect
            public var takedown: Com.Atproto.Admin.Defs.StatusAttr?
            public init(
                subject: Union3<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef, Com.Atproto.Admin.Defs.RepoBlobRef>,
                takedown: Com.Atproto.Admin.Defs.StatusAttr? = nil
            ) {
                self._subject = .wrapped(subject)
                self._takedown = .wrapped(takedown)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var subject: Union3<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef, Com.Atproto.Admin.Defs.RepoBlobRef>
            @Indirect
            public var takedown: Com.Atproto.Admin.Defs.StatusAttr?
            public init(
                subject: Union3<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef, Com.Atproto.Admin.Defs.RepoBlobRef>,
                takedown: Com.Atproto.Admin.Defs.StatusAttr? = nil
            ) {
                self._subject = .wrapped(subject)
                self._takedown = .wrapped(takedown)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.admin.updateSubjectStatus"
        public let input: Input?
    }
}
public extension Com.Atproto.Identity {
    struct GetRecommendedDidCredentials: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var alsoKnownAs: [String]?
            @Indirect
            public var rotationKeys: [String]?
            @Indirect
            public var services: [String: AnyCodable]?
            @Indirect
            public var verificationMethods: [String: AnyCodable]?
            public init(
                alsoKnownAs: [String]? = nil,
                rotationKeys: [String]? = nil,
                services: [String: AnyCodable]? = nil,
                verificationMethods: [String: AnyCodable]? = nil
            ) {
                self._alsoKnownAs = .wrapped(alsoKnownAs)
                self._rotationKeys = .wrapped(rotationKeys)
                self._services = .wrapped(services)
                self._verificationMethods = .wrapped(verificationMethods)
            }
        }
        public init(

        ) {

        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.identity.getRecommendedDidCredentials"
    }
}
public extension Com.Atproto.Identity {
    struct RequestPlcOperationSignature: XRPCRequest {
        public init(

        ) {

        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.identity.requestPlcOperationSignature"
    }
}
public extension Com.Atproto.Identity {
    struct ResolveHandle: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var handle: String
            public init(
                handle: String
            ) {
                self._handle = .wrapped(handle)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: handle.toQueryItems(name: "handle"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var did: String
            public init(
                did: String
            ) {
                self._did = .wrapped(did)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.identity.resolveHandle"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Identity {
    struct SignPlcOperation: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var alsoKnownAs: [String]?
            @Indirect
            public var rotationKeys: [String]?
            @Indirect
            public var services: [String: AnyCodable]?
            @Indirect
            public var token: String?
            @Indirect
            public var verificationMethods: [String: AnyCodable]?
            public init(
                alsoKnownAs: [String]? = nil,
                rotationKeys: [String]? = nil,
                services: [String: AnyCodable]? = nil,
                token: String? = nil,
                verificationMethods: [String: AnyCodable]? = nil
            ) {
                self._alsoKnownAs = .wrapped(alsoKnownAs)
                self._rotationKeys = .wrapped(rotationKeys)
                self._services = .wrapped(services)
                self._token = .wrapped(token)
                self._verificationMethods = .wrapped(verificationMethods)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var operation: [String: AnyCodable]
            public init(
                operation: [String: AnyCodable]
            ) {
                self._operation = .wrapped(operation)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.identity.signPlcOperation"
        public let input: Input?
    }
}
public extension Com.Atproto.Identity {
    struct SubmitPlcOperation: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var operation: [String: AnyCodable]
            public init(
                operation: [String: AnyCodable]
            ) {
                self._operation = .wrapped(operation)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.identity.submitPlcOperation"
        public let input: Input?
    }
}
public extension Com.Atproto.Identity {
    struct UpdateHandle: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var handle: String
            public init(
                handle: String
            ) {
                self._handle = .wrapped(handle)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.identity.updateHandle"
        public let input: Input?
    }
}
public extension Com.Atproto.Label.Defs {
    struct Label: UnionCodable, Hashable {
        @Indirect
        public var cid: String?
        @Indirect
        public var cts: Date
        @Indirect
        public var neg: Bool?
        @Indirect
        public var src: String
        @Indirect
        public var uri: SafeURL
        @Indirect
        public var val: String
        public init(
            cid: String? = nil,
            cts: Date,
            neg: Bool? = nil,
            src: String,
            uri: SafeURL,
            val: String
        ) {
            self._cid = .wrapped(cid)
            self._cts = .wrapped(cts)
            self._neg = .wrapped(neg)
            self._src = .wrapped(src)
            self._uri = .wrapped(uri)
            self._val = .wrapped(val)
        }
        public static let typeValue = #LexiconDefID("com.atproto.label.defs#label")
    }
}
public extension Com.Atproto.Label.Defs {
    typealias LabelValue = String
}
public extension Com.Atproto.Label.Defs {
    struct LabelValueDefinition: UnionCodable, Hashable {
        @Indirect
        public var blurs: String
        @Indirect
        public var identifier: String
        @Indirect
        public var locales: [Com.Atproto.Label.Defs.LabelValueDefinitionStrings]
        @Indirect
        public var severity: String
        public init(
            blurs: String,
            identifier: String,
            locales: [Com.Atproto.Label.Defs.LabelValueDefinitionStrings],
            severity: String
        ) {
            self._blurs = .wrapped(blurs)
            self._identifier = .wrapped(identifier)
            self._locales = .wrapped(locales)
            self._severity = .wrapped(severity)
        }
        public static let typeValue = #LexiconDefID("com.atproto.label.defs#labelValueDefinition")
    }
}
public extension Com.Atproto.Label.Defs {
    struct LabelValueDefinitionStrings: UnionCodable, Hashable {
        @Indirect
        public var description: String
        @Indirect
        public var lang: String
        @Indirect
        public var name: String
        public init(
            description: String,
            lang: String,
            name: String
        ) {
            self._description = .wrapped(description)
            self._lang = .wrapped(lang)
            self._name = .wrapped(name)
        }
        public static let typeValue = #LexiconDefID("com.atproto.label.defs#labelValueDefinitionStrings")
    }
}
public extension Com.Atproto.Label.Defs {
    struct SelfLabel: UnionCodable, Hashable {
        @Indirect
        public var val: String
        public init(
            val: String
        ) {
            self._val = .wrapped(val)
        }
        public static let typeValue = #LexiconDefID("com.atproto.label.defs#selfLabel")
    }
}
public extension Com.Atproto.Label.Defs {
    struct SelfLabels: UnionCodable, Hashable {
        @Indirect
        public var values: [Com.Atproto.Label.Defs.SelfLabel]
        public init(
            values: [Com.Atproto.Label.Defs.SelfLabel]
        ) {
            self._values = .wrapped(values)
        }
        public static let typeValue = #LexiconDefID("com.atproto.label.defs#selfLabels")
    }
}
public extension Com.Atproto.Label {
    struct QueryLabels: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var sources: [String]?
            @Indirect
            public var uriPatterns: [String]
            public init(
                cursor: String? = nil,
                limit: Int? = nil,
                sources: [String]? = nil,
                uriPatterns: [String]
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._sources = .wrapped(sources)
                self._uriPatterns = .wrapped(uriPatterns)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: sources.toQueryItems(name: "sources"))
                parameters.append(contentsOf: uriPatterns.toQueryItems(name: "uriPatterns"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var labels: [Com.Atproto.Label.Defs.Label]
            public init(
                cursor: String? = nil,
                labels: [Com.Atproto.Label.Defs.Label]
            ) {
                self._cursor = .wrapped(cursor)
                self._labels = .wrapped(labels)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.label.queryLabels"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Label.SubscribeLabels {
    struct Info: UnionCodable, Hashable {
        @Indirect
        public var message: String?
        @Indirect
        public var name: String
        public init(
            message: String? = nil,
            name: String
        ) {
            self._message = .wrapped(message)
            self._name = .wrapped(name)
        }
        public static let typeValue = #LexiconDefID("com.atproto.label.subscribeLabels#info")
    }
}
public extension Com.Atproto.Label.SubscribeLabels {
    struct Labels: UnionCodable, Hashable {
        @Indirect
        public var labels: [Com.Atproto.Label.Defs.Label]
        @Indirect
        public var seq: Int
        public init(
            labels: [Com.Atproto.Label.Defs.Label],
            seq: Int
        ) {
            self._labels = .wrapped(labels)
            self._seq = .wrapped(seq)
        }
        public static let typeValue = #LexiconDefID("com.atproto.label.subscribeLabels#labels")
    }
}
public extension Com.Atproto.Label {
    enum SubscribeLabels {
    }
}
public extension Com.Atproto.Moderation {
    struct CreateReport: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var reason: String?
            @Indirect
            public var reasonType: Com.Atproto.Moderation.Defs.ReasonType
            @Indirect
            public var subject: Union2<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef>
            public init(
                reason: String? = nil,
                reasonType: Com.Atproto.Moderation.Defs.ReasonType,
                subject: Union2<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef>
            ) {
                self._reason = .wrapped(reason)
                self._reasonType = .wrapped(reasonType)
                self._subject = .wrapped(subject)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var createdAt: Date
            @Indirect
            public var id: Int
            @Indirect
            public var reason: String?
            @Indirect
            public var reasonType: Com.Atproto.Moderation.Defs.ReasonType
            @Indirect
            public var reportedBy: String
            @Indirect
            public var subject: Union2<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef>
            public init(
                createdAt: Date,
                id: Int,
                reason: String? = nil,
                reasonType: Com.Atproto.Moderation.Defs.ReasonType,
                reportedBy: String,
                subject: Union2<Com.Atproto.Admin.Defs.RepoRef, Com.Atproto.Repo.StrongRef>
            ) {
                self._createdAt = .wrapped(createdAt)
                self._id = .wrapped(id)
                self._reason = .wrapped(reason)
                self._reasonType = .wrapped(reasonType)
                self._reportedBy = .wrapped(reportedBy)
                self._subject = .wrapped(subject)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.moderation.createReport"
        public let input: Input?
    }
}
public extension Com.Atproto.Moderation.Defs {
}
public extension Com.Atproto.Moderation.Defs {
}
public extension Com.Atproto.Moderation.Defs {
}
public extension Com.Atproto.Moderation.Defs {
}
public extension Com.Atproto.Moderation.Defs {
}
public extension Com.Atproto.Moderation.Defs {
}
public extension Com.Atproto.Moderation.Defs {
    typealias ReasonType = String
}
public extension Com.Atproto.Moderation.Defs {
}
public extension Com.Atproto.Repo.ApplyWrites {
    struct Create: UnionCodable, Hashable {
        @Indirect
        public var collection: String
        @Indirect
        public var rkey: String?
        @Indirect
        public var value: [String: AnyCodable]
        public init(
            collection: String,
            rkey: String? = nil,
            value: [String: AnyCodable]
        ) {
            self._collection = .wrapped(collection)
            self._rkey = .wrapped(rkey)
            self._value = .wrapped(value)
        }
        public static let typeValue = #LexiconDefID("com.atproto.repo.applyWrites#create")
    }
}
public extension Com.Atproto.Repo.ApplyWrites {
    struct Delete: UnionCodable, Hashable {
        @Indirect
        public var collection: String
        @Indirect
        public var rkey: String
        public init(
            collection: String,
            rkey: String
        ) {
            self._collection = .wrapped(collection)
            self._rkey = .wrapped(rkey)
        }
        public static let typeValue = #LexiconDefID("com.atproto.repo.applyWrites#delete")
    }
}
public extension Com.Atproto.Repo {
    struct ApplyWrites: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var repo: String
            @Indirect
            public var swapCommit: String?
            @Indirect
            public var validate: Bool?
            @Indirect
            public var writes: [Union3<Com.Atproto.Repo.ApplyWrites.Create, Com.Atproto.Repo.ApplyWrites.Update, Com.Atproto.Repo.ApplyWrites.Delete>]
            public init(
                repo: String,
                swapCommit: String? = nil,
                validate: Bool? = nil,
                writes: [Union3<Com.Atproto.Repo.ApplyWrites.Create, Com.Atproto.Repo.ApplyWrites.Update, Com.Atproto.Repo.ApplyWrites.Delete>]
            ) {
                self._repo = .wrapped(repo)
                self._swapCommit = .wrapped(swapCommit)
                self._validate = .wrapped(validate)
                self._writes = .wrapped(writes)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.repo.applyWrites"
        public let input: Input?
    }
}
public extension Com.Atproto.Repo.ApplyWrites {
    struct Update: UnionCodable, Hashable {
        @Indirect
        public var collection: String
        @Indirect
        public var rkey: String
        @Indirect
        public var value: [String: AnyCodable]
        public init(
            collection: String,
            rkey: String,
            value: [String: AnyCodable]
        ) {
            self._collection = .wrapped(collection)
            self._rkey = .wrapped(rkey)
            self._value = .wrapped(value)
        }
        public static let typeValue = #LexiconDefID("com.atproto.repo.applyWrites#update")
    }
}
public extension Com.Atproto.Repo {
    struct CreateRecord: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var collection: String
            @Indirect
            public var record: [String: AnyCodable]
            @Indirect
            public var repo: String
            @Indirect
            public var rkey: String?
            @Indirect
            public var swapCommit: String?
            @Indirect
            public var validate: Bool?
            public init(
                collection: String,
                record: [String: AnyCodable],
                repo: String,
                rkey: String? = nil,
                swapCommit: String? = nil,
                validate: Bool? = nil
            ) {
                self._collection = .wrapped(collection)
                self._record = .wrapped(record)
                self._repo = .wrapped(repo)
                self._rkey = .wrapped(rkey)
                self._swapCommit = .wrapped(swapCommit)
                self._validate = .wrapped(validate)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cid: String
            @Indirect
            public var uri: ATURI
            public init(
                cid: String,
                uri: ATURI
            ) {
                self._cid = .wrapped(cid)
                self._uri = .wrapped(uri)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.repo.createRecord"
        public let input: Input?
    }
}
public extension Com.Atproto.Repo {
    struct DeleteRecord: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var collection: String
            @Indirect
            public var repo: String
            @Indirect
            public var rkey: String
            @Indirect
            public var swapCommit: String?
            @Indirect
            public var swapRecord: String?
            public init(
                collection: String,
                repo: String,
                rkey: String,
                swapCommit: String? = nil,
                swapRecord: String? = nil
            ) {
                self._collection = .wrapped(collection)
                self._repo = .wrapped(repo)
                self._rkey = .wrapped(rkey)
                self._swapCommit = .wrapped(swapCommit)
                self._swapRecord = .wrapped(swapRecord)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.repo.deleteRecord"
        public let input: Input?
    }
}
public extension Com.Atproto.Repo {
    struct DescribeRepo: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var repo: String
            public init(
                repo: String
            ) {
                self._repo = .wrapped(repo)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: repo.toQueryItems(name: "repo"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var collections: [String]
            @Indirect
            public var did: String
            @Indirect
            public var didDoc: [String: AnyCodable]
            @Indirect
            public var handle: String
            @Indirect
            public var handleIsCorrect: Bool
            public init(
                collections: [String],
                did: String,
                didDoc: [String: AnyCodable],
                handle: String,
                handleIsCorrect: Bool
            ) {
                self._collections = .wrapped(collections)
                self._did = .wrapped(did)
                self._didDoc = .wrapped(didDoc)
                self._handle = .wrapped(handle)
                self._handleIsCorrect = .wrapped(handleIsCorrect)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.repo.describeRepo"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Repo {
    struct GetRecord: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cid: String?
            @Indirect
            public var collection: String
            @Indirect
            public var repo: String
            @Indirect
            public var rkey: String
            public init(
                cid: String? = nil,
                collection: String,
                repo: String,
                rkey: String
            ) {
                self._cid = .wrapped(cid)
                self._collection = .wrapped(collection)
                self._repo = .wrapped(repo)
                self._rkey = .wrapped(rkey)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cid.toQueryItems(name: "cid"))
                parameters.append(contentsOf: collection.toQueryItems(name: "collection"))
                parameters.append(contentsOf: repo.toQueryItems(name: "repo"))
                parameters.append(contentsOf: rkey.toQueryItems(name: "rkey"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cid: String?
            @Indirect
            public var uri: ATURI
            @Indirect
            public var value: [String: AnyCodable]
            public init(
                cid: String? = nil,
                uri: ATURI,
                value: [String: AnyCodable]
            ) {
                self._cid = .wrapped(cid)
                self._uri = .wrapped(uri)
                self._value = .wrapped(value)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.repo.getRecord"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Repo {
    struct ImportRepo: XRPCRequest {
        public init(

        ) {

        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.repo.importRepo"
    }
}
public extension Com.Atproto.Repo {
    struct ListMissingBlobs: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            public init(
                cursor: String? = nil,
                limit: Int? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var blobs: [Com.Atproto.Repo.ListMissingBlobs.RecordBlob]
            @Indirect
            public var cursor: String?
            public init(
                blobs: [Com.Atproto.Repo.ListMissingBlobs.RecordBlob],
                cursor: String? = nil
            ) {
                self._blobs = .wrapped(blobs)
                self._cursor = .wrapped(cursor)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.repo.listMissingBlobs"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Repo.ListMissingBlobs {
    struct RecordBlob: UnionCodable, Hashable {
        @Indirect
        public var cid: String
        @Indirect
        public var recordUri: ATURI
        public init(
            cid: String,
            recordUri: ATURI
        ) {
            self._cid = .wrapped(cid)
            self._recordUri = .wrapped(recordUri)
        }
        public static let typeValue = #LexiconDefID("com.atproto.repo.listMissingBlobs#recordBlob")
    }
}
public extension Com.Atproto.Repo {
    struct ListRecords: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var collection: String
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            @Indirect
            public var repo: String
            @Indirect
            public var reverse: Bool?
            @Indirect
            public var rkeyEnd: String?
            @Indirect
            public var rkeyStart: String?
            public init(
                collection: String,
                cursor: String? = nil,
                limit: Int? = nil,
                repo: String,
                reverse: Bool? = nil,
                rkeyEnd: String? = nil,
                rkeyStart: String? = nil
            ) {
                self._collection = .wrapped(collection)
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
                self._repo = .wrapped(repo)
                self._reverse = .wrapped(reverse)
                self._rkeyEnd = .wrapped(rkeyEnd)
                self._rkeyStart = .wrapped(rkeyStart)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: collection.toQueryItems(name: "collection"))
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: repo.toQueryItems(name: "repo"))
                parameters.append(contentsOf: reverse.toQueryItems(name: "reverse"))
                parameters.append(contentsOf: rkeyEnd.toQueryItems(name: "rkeyEnd"))
                parameters.append(contentsOf: rkeyStart.toQueryItems(name: "rkeyStart"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var records: [Com.Atproto.Repo.ListRecords.Record]
            public init(
                cursor: String? = nil,
                records: [Com.Atproto.Repo.ListRecords.Record]
            ) {
                self._cursor = .wrapped(cursor)
                self._records = .wrapped(records)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.repo.listRecords"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Repo.ListRecords {
    struct Record: UnionCodable, Hashable {
        @Indirect
        public var cid: String
        @Indirect
        public var uri: ATURI
        @Indirect
        public var value: [String: AnyCodable]
        public init(
            cid: String,
            uri: ATURI,
            value: [String: AnyCodable]
        ) {
            self._cid = .wrapped(cid)
            self._uri = .wrapped(uri)
            self._value = .wrapped(value)
        }
        public static let typeValue = #LexiconDefID("com.atproto.repo.listRecords#record")
    }
}
public extension Com.Atproto.Repo {
    struct PutRecord: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var collection: String
            @Indirect
            public var record: [String: AnyCodable]
            @Indirect
            public var repo: String
            @Indirect
            public var rkey: String
            @Indirect
            public var swapCommit: String?
            @Indirect
            public var swapRecord: String?
            @Indirect
            public var validate: Bool?
            public init(
                collection: String,
                record: [String: AnyCodable],
                repo: String,
                rkey: String,
                swapCommit: String? = nil,
                swapRecord: String? = nil,
                validate: Bool? = nil
            ) {
                self._collection = .wrapped(collection)
                self._record = .wrapped(record)
                self._repo = .wrapped(repo)
                self._rkey = .wrapped(rkey)
                self._swapCommit = .wrapped(swapCommit)
                self._swapRecord = .wrapped(swapRecord)
                self._validate = .wrapped(validate)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cid: String
            @Indirect
            public var uri: ATURI
            public init(
                cid: String,
                uri: ATURI
            ) {
                self._cid = .wrapped(cid)
                self._uri = .wrapped(uri)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.repo.putRecord"
        public let input: Input?
    }
}
public extension Com.Atproto.Repo {
    struct StrongRef: UnionCodable, Hashable {
        @Indirect
        public var cid: String
        @Indirect
        public var uri: ATURI
        public init(
            cid: String,
            uri: ATURI
        ) {
            self._cid = .wrapped(cid)
            self._uri = .wrapped(uri)
        }
        public static let typeValue = #LexiconDefID("com.atproto.repo.strongRef")
    }
}
public extension Com.Atproto.Repo {
    struct UploadBlob: XRPCRequest {
        public struct Output: Decodable, Hashable {
            public init(

            ) {

            }
        }
        public init(

        ) {

        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.repo.uploadBlob"
    }
}
public extension Com.Atproto.Server {
    struct ActivateAccount: XRPCRequest {
        public init(

        ) {

        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.activateAccount"
    }
}
public extension Com.Atproto.Server {
    struct CheckAccountStatus: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var activated: Bool
            @Indirect
            public var expectedBlobs: Int
            @Indirect
            public var importedBlobs: Int
            @Indirect
            public var indexedRecords: Int
            @Indirect
            public var privateStateValues: Int
            @Indirect
            public var repoBlocks: Int
            @Indirect
            public var repoCommit: String
            @Indirect
            public var repoRev: String
            @Indirect
            public var validDid: Bool
            public init(
                activated: Bool,
                expectedBlobs: Int,
                importedBlobs: Int,
                indexedRecords: Int,
                privateStateValues: Int,
                repoBlocks: Int,
                repoCommit: String,
                repoRev: String,
                validDid: Bool
            ) {
                self._activated = .wrapped(activated)
                self._expectedBlobs = .wrapped(expectedBlobs)
                self._importedBlobs = .wrapped(importedBlobs)
                self._indexedRecords = .wrapped(indexedRecords)
                self._privateStateValues = .wrapped(privateStateValues)
                self._repoBlocks = .wrapped(repoBlocks)
                self._repoCommit = .wrapped(repoCommit)
                self._repoRev = .wrapped(repoRev)
                self._validDid = .wrapped(validDid)
            }
        }
        public init(

        ) {

        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.server.checkAccountStatus"
    }
}
public extension Com.Atproto.Server {
    struct ConfirmEmail: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var email: String
            @Indirect
            public var token: String
            public init(
                email: String,
                token: String
            ) {
                self._email = .wrapped(email)
                self._token = .wrapped(token)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.confirmEmail"
        public let input: Input?
    }
}
public extension Com.Atproto.Server {
    struct CreateAccount: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var did: String?
            @Indirect
            public var email: String?
            @Indirect
            public var handle: String
            @Indirect
            public var inviteCode: String?
            @Indirect
            public var password: String?
            @Indirect
            public var plcOp: [String: AnyCodable]?
            @Indirect
            public var recoveryKey: String?
            @Indirect
            public var verificationCode: String?
            @Indirect
            public var verificationPhone: String?
            public init(
                did: String? = nil,
                email: String? = nil,
                handle: String,
                inviteCode: String? = nil,
                password: String? = nil,
                plcOp: [String: AnyCodable]? = nil,
                recoveryKey: String? = nil,
                verificationCode: String? = nil,
                verificationPhone: String? = nil
            ) {
                self._did = .wrapped(did)
                self._email = .wrapped(email)
                self._handle = .wrapped(handle)
                self._inviteCode = .wrapped(inviteCode)
                self._password = .wrapped(password)
                self._plcOp = .wrapped(plcOp)
                self._recoveryKey = .wrapped(recoveryKey)
                self._verificationCode = .wrapped(verificationCode)
                self._verificationPhone = .wrapped(verificationPhone)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var accessJwt: String
            @Indirect
            public var did: String
            @Indirect
            public var didDoc: [String: AnyCodable]?
            @Indirect
            public var handle: String
            @Indirect
            public var refreshJwt: String
            public init(
                accessJwt: String,
                did: String,
                didDoc: [String: AnyCodable]? = nil,
                handle: String,
                refreshJwt: String
            ) {
                self._accessJwt = .wrapped(accessJwt)
                self._did = .wrapped(did)
                self._didDoc = .wrapped(didDoc)
                self._handle = .wrapped(handle)
                self._refreshJwt = .wrapped(refreshJwt)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.createAccount"
        public let input: Input?
    }
}
public extension Com.Atproto.Server.CreateAppPassword {
    struct AppPassword: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var name: String
        @Indirect
        public var password: String
        public init(
            createdAt: Date,
            name: String,
            password: String
        ) {
            self._createdAt = .wrapped(createdAt)
            self._name = .wrapped(name)
            self._password = .wrapped(password)
        }
        public static let typeValue = #LexiconDefID("com.atproto.server.createAppPassword#appPassword")
    }
}
public extension Com.Atproto.Server {
    struct CreateAppPassword: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var name: String
            public init(
                name: String
            ) {
                self._name = .wrapped(name)
            }
        }
        public typealias Output = Com.Atproto.Server.CreateAppPassword.AppPassword
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.createAppPassword"
        public let input: Input?
    }
}
public extension Com.Atproto.Server {
    struct CreateInviteCode: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var forAccount: String?
            @Indirect
            public var useCount: Int
            public init(
                forAccount: String? = nil,
                useCount: Int
            ) {
                self._forAccount = .wrapped(forAccount)
                self._useCount = .wrapped(useCount)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var code: String
            public init(
                code: String
            ) {
                self._code = .wrapped(code)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.createInviteCode"
        public let input: Input?
    }
}
public extension Com.Atproto.Server.CreateInviteCodes {
    struct AccountCodes: UnionCodable, Hashable {
        @Indirect
        public var account: String
        @Indirect
        public var codes: [String]
        public init(
            account: String,
            codes: [String]
        ) {
            self._account = .wrapped(account)
            self._codes = .wrapped(codes)
        }
        public static let typeValue = #LexiconDefID("com.atproto.server.createInviteCodes#accountCodes")
    }
}
public extension Com.Atproto.Server {
    struct CreateInviteCodes: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var codeCount: Int
            @Indirect
            public var forAccounts: [String]?
            @Indirect
            public var useCount: Int
            public init(
                codeCount: Int,
                forAccounts: [String]? = nil,
                useCount: Int
            ) {
                self._codeCount = .wrapped(codeCount)
                self._forAccounts = .wrapped(forAccounts)
                self._useCount = .wrapped(useCount)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var codes: [Com.Atproto.Server.CreateInviteCodes.AccountCodes]
            public init(
                codes: [Com.Atproto.Server.CreateInviteCodes.AccountCodes]
            ) {
                self._codes = .wrapped(codes)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.createInviteCodes"
        public let input: Input?
    }
}
public extension Com.Atproto.Server {
    struct CreateSession: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var identifier: String
            @Indirect
            public var password: String
            public init(
                identifier: String,
                password: String
            ) {
                self._identifier = .wrapped(identifier)
                self._password = .wrapped(password)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var accessJwt: String
            @Indirect
            public var did: String
            @Indirect
            public var didDoc: [String: AnyCodable]?
            @Indirect
            public var email: String?
            @Indirect
            public var emailConfirmed: Bool?
            @Indirect
            public var handle: String
            @Indirect
            public var refreshJwt: String
            public init(
                accessJwt: String,
                did: String,
                didDoc: [String: AnyCodable]? = nil,
                email: String? = nil,
                emailConfirmed: Bool? = nil,
                handle: String,
                refreshJwt: String
            ) {
                self._accessJwt = .wrapped(accessJwt)
                self._did = .wrapped(did)
                self._didDoc = .wrapped(didDoc)
                self._email = .wrapped(email)
                self._emailConfirmed = .wrapped(emailConfirmed)
                self._handle = .wrapped(handle)
                self._refreshJwt = .wrapped(refreshJwt)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.createSession"
        public let input: Input?
    }
}
public extension Com.Atproto.Server {
    struct DeactivateAccount: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var deleteAfter: Date?
            public init(
                deleteAfter: Date? = nil
            ) {
                self._deleteAfter = .wrapped(deleteAfter)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.deactivateAccount"
        public let input: Input?
    }
}
public extension Com.Atproto.Server.Defs {
    struct InviteCode: UnionCodable, Hashable {
        @Indirect
        public var available: Int
        @Indirect
        public var code: String
        @Indirect
        public var createdAt: Date
        @Indirect
        public var createdBy: String
        @Indirect
        public var disabled: Bool
        @Indirect
        public var forAccount: String
        @Indirect
        public var uses: [Com.Atproto.Server.Defs.InviteCodeUse]
        public init(
            available: Int,
            code: String,
            createdAt: Date,
            createdBy: String,
            disabled: Bool,
            forAccount: String,
            uses: [Com.Atproto.Server.Defs.InviteCodeUse]
        ) {
            self._available = .wrapped(available)
            self._code = .wrapped(code)
            self._createdAt = .wrapped(createdAt)
            self._createdBy = .wrapped(createdBy)
            self._disabled = .wrapped(disabled)
            self._forAccount = .wrapped(forAccount)
            self._uses = .wrapped(uses)
        }
        public static let typeValue = #LexiconDefID("com.atproto.server.defs#inviteCode")
    }
}
public extension Com.Atproto.Server.Defs {
    struct InviteCodeUse: UnionCodable, Hashable {
        @Indirect
        public var usedAt: Date
        @Indirect
        public var usedBy: String
        public init(
            usedAt: Date,
            usedBy: String
        ) {
            self._usedAt = .wrapped(usedAt)
            self._usedBy = .wrapped(usedBy)
        }
        public static let typeValue = #LexiconDefID("com.atproto.server.defs#inviteCodeUse")
    }
}
public extension Com.Atproto.Server {
    struct DeleteAccount: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var did: String
            @Indirect
            public var password: String
            @Indirect
            public var token: String
            public init(
                did: String,
                password: String,
                token: String
            ) {
                self._did = .wrapped(did)
                self._password = .wrapped(password)
                self._token = .wrapped(token)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.deleteAccount"
        public let input: Input?
    }
}
public extension Com.Atproto.Server {
    struct DeleteSession: XRPCRequest {
        public init(

        ) {

        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.deleteSession"
    }
}
public extension Com.Atproto.Server.DescribeServer {
    struct Links: UnionCodable, Hashable {
        @Indirect
        public var privacyPolicy: String?
        @Indirect
        public var termsOfService: String?
        public init(
            privacyPolicy: String? = nil,
            termsOfService: String? = nil
        ) {
            self._privacyPolicy = .wrapped(privacyPolicy)
            self._termsOfService = .wrapped(termsOfService)
        }
        public static let typeValue = #LexiconDefID("com.atproto.server.describeServer#links")
    }
}
public extension Com.Atproto.Server {
    struct DescribeServer: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var availableUserDomains: [String]
            @Indirect
            public var did: String
            @Indirect
            public var inviteCodeRequired: Bool?
            @Indirect
            public var links: Com.Atproto.Server.DescribeServer.Links?
            @Indirect
            public var phoneVerificationRequired: Bool?
            public init(
                availableUserDomains: [String],
                did: String,
                inviteCodeRequired: Bool? = nil,
                links: Com.Atproto.Server.DescribeServer.Links? = nil,
                phoneVerificationRequired: Bool? = nil
            ) {
                self._availableUserDomains = .wrapped(availableUserDomains)
                self._did = .wrapped(did)
                self._inviteCodeRequired = .wrapped(inviteCodeRequired)
                self._links = .wrapped(links)
                self._phoneVerificationRequired = .wrapped(phoneVerificationRequired)
            }
        }
        public init(

        ) {

        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.server.describeServer"
    }
}
public extension Com.Atproto.Server {
    struct GetAccountInviteCodes: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var createAvailable: Bool?
            @Indirect
            public var includeUsed: Bool?
            public init(
                createAvailable: Bool? = nil,
                includeUsed: Bool? = nil
            ) {
                self._createAvailable = .wrapped(createAvailable)
                self._includeUsed = .wrapped(includeUsed)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: createAvailable.toQueryItems(name: "createAvailable"))
                parameters.append(contentsOf: includeUsed.toQueryItems(name: "includeUsed"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var codes: [Com.Atproto.Server.Defs.InviteCode]
            public init(
                codes: [Com.Atproto.Server.Defs.InviteCode]
            ) {
                self._codes = .wrapped(codes)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.server.getAccountInviteCodes"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Server {
    struct GetServiceAuth: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var aud: String
            public init(
                aud: String
            ) {
                self._aud = .wrapped(aud)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: aud.toQueryItems(name: "aud"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var token: String
            public init(
                token: String
            ) {
                self._token = .wrapped(token)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.server.getServiceAuth"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Server {
    struct GetSession: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var did: String
            @Indirect
            public var didDoc: [String: AnyCodable]?
            @Indirect
            public var email: String?
            @Indirect
            public var emailConfirmed: Bool?
            @Indirect
            public var handle: String
            public init(
                did: String,
                didDoc: [String: AnyCodable]? = nil,
                email: String? = nil,
                emailConfirmed: Bool? = nil,
                handle: String
            ) {
                self._did = .wrapped(did)
                self._didDoc = .wrapped(didDoc)
                self._email = .wrapped(email)
                self._emailConfirmed = .wrapped(emailConfirmed)
                self._handle = .wrapped(handle)
            }
        }
        public init(

        ) {

        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.server.getSession"
    }
}
public extension Com.Atproto.Server.ListAppPasswords {
    struct AppPassword: UnionCodable, Hashable {
        @Indirect
        public var createdAt: Date
        @Indirect
        public var name: String
        public init(
            createdAt: Date,
            name: String
        ) {
            self._createdAt = .wrapped(createdAt)
            self._name = .wrapped(name)
        }
        public static let typeValue = #LexiconDefID("com.atproto.server.listAppPasswords#appPassword")
    }
}
public extension Com.Atproto.Server {
    struct ListAppPasswords: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var passwords: [Com.Atproto.Server.ListAppPasswords.AppPassword]
            public init(
                passwords: [Com.Atproto.Server.ListAppPasswords.AppPassword]
            ) {
                self._passwords = .wrapped(passwords)
            }
        }
        public init(

        ) {

        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.server.listAppPasswords"
    }
}
public extension Com.Atproto.Server {
    struct RefreshSession: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var accessJwt: String
            @Indirect
            public var did: String
            @Indirect
            public var didDoc: [String: AnyCodable]?
            @Indirect
            public var handle: String
            @Indirect
            public var refreshJwt: String
            public init(
                accessJwt: String,
                did: String,
                didDoc: [String: AnyCodable]? = nil,
                handle: String,
                refreshJwt: String
            ) {
                self._accessJwt = .wrapped(accessJwt)
                self._did = .wrapped(did)
                self._didDoc = .wrapped(didDoc)
                self._handle = .wrapped(handle)
                self._refreshJwt = .wrapped(refreshJwt)
            }
        }
        public init(

        ) {

        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.refreshSession"
    }
}
public extension Com.Atproto.Server {
    struct RequestAccountDelete: XRPCRequest {
        public init(

        ) {

        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.requestAccountDelete"
    }
}
public extension Com.Atproto.Server {
    struct RequestEmailConfirmation: XRPCRequest {
        public init(

        ) {

        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.requestEmailConfirmation"
    }
}
public extension Com.Atproto.Server {
    struct RequestEmailUpdate: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var tokenRequired: Bool
            public init(
                tokenRequired: Bool
            ) {
                self._tokenRequired = .wrapped(tokenRequired)
            }
        }
        public init(

        ) {

        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.requestEmailUpdate"
    }
}
public extension Com.Atproto.Server {
    struct RequestPasswordReset: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var email: String
            public init(
                email: String
            ) {
                self._email = .wrapped(email)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.requestPasswordReset"
        public let input: Input?
    }
}
public extension Com.Atproto.Server {
    struct ReserveSigningKey: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var did: String?
            public init(
                did: String? = nil
            ) {
                self._did = .wrapped(did)
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var signingKey: String
            public init(
                signingKey: String
            ) {
                self._signingKey = .wrapped(signingKey)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.reserveSigningKey"
        public let input: Input?
    }
}
public extension Com.Atproto.Server {
    struct ResetPassword: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var password: String
            @Indirect
            public var token: String
            public init(
                password: String,
                token: String
            ) {
                self._password = .wrapped(password)
                self._token = .wrapped(token)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.resetPassword"
        public let input: Input?
    }
}
public extension Com.Atproto.Server {
    struct RevokeAppPassword: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var name: String
            public init(
                name: String
            ) {
                self._name = .wrapped(name)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.revokeAppPassword"
        public let input: Input?
    }
}
public extension Com.Atproto.Server {
    struct UpdateEmail: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var email: String
            @Indirect
            public var token: String?
            public init(
                email: String,
                token: String? = nil
            ) {
                self._email = .wrapped(email)
                self._token = .wrapped(token)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.server.updateEmail"
        public let input: Input?
    }
}
public extension Com.Atproto.Sync {
    struct GetBlob: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cid: String
            @Indirect
            public var did: String
            public init(
                cid: String,
                did: String
            ) {
                self._cid = .wrapped(cid)
                self._did = .wrapped(did)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cid.toQueryItems(name: "cid"))
                parameters.append(contentsOf: did.toQueryItems(name: "did"))

                return parameters
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.getBlob"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct GetBlocks: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cids: [String]
            @Indirect
            public var did: String
            public init(
                cids: [String],
                did: String
            ) {
                self._cids = .wrapped(cids)
                self._did = .wrapped(did)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cids.toQueryItems(name: "cids"))
                parameters.append(contentsOf: did.toQueryItems(name: "did"))

                return parameters
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.getBlocks"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct GetCheckout: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var did: String
            public init(
                did: String
            ) {
                self._did = .wrapped(did)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: did.toQueryItems(name: "did"))

                return parameters
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.getCheckout"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct GetHead: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var did: String
            public init(
                did: String
            ) {
                self._did = .wrapped(did)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: did.toQueryItems(name: "did"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var root: String
            public init(
                root: String
            ) {
                self._root = .wrapped(root)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.getHead"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct GetLatestCommit: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var did: String
            public init(
                did: String
            ) {
                self._did = .wrapped(did)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: did.toQueryItems(name: "did"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cid: String
            @Indirect
            public var rev: String
            public init(
                cid: String,
                rev: String
            ) {
                self._cid = .wrapped(cid)
                self._rev = .wrapped(rev)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.getLatestCommit"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct GetRecord: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var collection: String
            @Indirect
            public var commit: String?
            @Indirect
            public var did: String
            @Indirect
            public var rkey: String
            public init(
                collection: String,
                commit: String? = nil,
                did: String,
                rkey: String
            ) {
                self._collection = .wrapped(collection)
                self._commit = .wrapped(commit)
                self._did = .wrapped(did)
                self._rkey = .wrapped(rkey)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: collection.toQueryItems(name: "collection"))
                parameters.append(contentsOf: commit.toQueryItems(name: "commit"))
                parameters.append(contentsOf: did.toQueryItems(name: "did"))
                parameters.append(contentsOf: rkey.toQueryItems(name: "rkey"))

                return parameters
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.getRecord"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct GetRepo: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var did: String
            @Indirect
            public var since: String?
            public init(
                did: String,
                since: String? = nil
            ) {
                self._did = .wrapped(did)
                self._since = .wrapped(since)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: did.toQueryItems(name: "did"))
                parameters.append(contentsOf: since.toQueryItems(name: "since"))

                return parameters
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.getRepo"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct ListBlobs: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var did: String
            @Indirect
            public var limit: Int?
            @Indirect
            public var since: String?
            public init(
                cursor: String? = nil,
                did: String,
                limit: Int? = nil,
                since: String? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._did = .wrapped(did)
                self._limit = .wrapped(limit)
                self._since = .wrapped(since)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: did.toQueryItems(name: "did"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: since.toQueryItems(name: "since"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cids: [String]
            @Indirect
            public var cursor: String?
            public init(
                cids: [String],
                cursor: String? = nil
            ) {
                self._cids = .wrapped(cids)
                self._cursor = .wrapped(cursor)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.listBlobs"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync {
    struct ListRepos: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var cursor: String?
            @Indirect
            public var limit: Int?
            public init(
                cursor: String? = nil,
                limit: Int? = nil
            ) {
                self._cursor = .wrapped(cursor)
                self._limit = .wrapped(limit)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: cursor.toQueryItems(name: "cursor"))
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var cursor: String?
            @Indirect
            public var repos: [Com.Atproto.Sync.ListRepos.Repo]
            public init(
                cursor: String? = nil,
                repos: [Com.Atproto.Sync.ListRepos.Repo]
            ) {
                self._cursor = .wrapped(cursor)
                self._repos = .wrapped(repos)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.sync.listRepos"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Sync.ListRepos {
    struct Repo: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var head: String
        @Indirect
        public var rev: String
        public init(
            did: String,
            head: String,
            rev: String
        ) {
            self._did = .wrapped(did)
            self._head = .wrapped(head)
            self._rev = .wrapped(rev)
        }
        public static let typeValue = #LexiconDefID("com.atproto.sync.listRepos#repo")
    }
}
public extension Com.Atproto.Sync {
    struct NotifyOfUpdate: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var hostname: String
            public init(
                hostname: String
            ) {
                self._hostname = .wrapped(hostname)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.sync.notifyOfUpdate"
        public let input: Input?
    }
}
public extension Com.Atproto.Sync {
    struct RequestCrawl: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var hostname: String
            public init(
                hostname: String
            ) {
                self._hostname = .wrapped(hostname)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.sync.requestCrawl"
        public let input: Input?
    }
}
public extension Com.Atproto.Sync.SubscribeRepos {
    struct Commit: UnionCodable, Hashable {
        @Indirect
        public var ops: [Com.Atproto.Sync.SubscribeRepos.RepoOp]
        @Indirect
        public var rebase: Bool
        @Indirect
        public var repo: String
        @Indirect
        public var rev: String
        @Indirect
        public var seq: Int
        @Indirect
        public var since: String
        @Indirect
        public var time: Date
        @Indirect
        public var tooBig: Bool
        public init(
            ops: [Com.Atproto.Sync.SubscribeRepos.RepoOp],
            rebase: Bool,
            repo: String,
            rev: String,
            seq: Int,
            since: String,
            time: Date,
            tooBig: Bool
        ) {
            self._ops = .wrapped(ops)
            self._rebase = .wrapped(rebase)
            self._repo = .wrapped(repo)
            self._rev = .wrapped(rev)
            self._seq = .wrapped(seq)
            self._since = .wrapped(since)
            self._time = .wrapped(time)
            self._tooBig = .wrapped(tooBig)
        }
        public static let typeValue = #LexiconDefID("com.atproto.sync.subscribeRepos#commit")
    }
}
public extension Com.Atproto.Sync.SubscribeRepos {
    struct Handle: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var handle: String
        @Indirect
        public var seq: Int
        @Indirect
        public var time: Date
        public init(
            did: String,
            handle: String,
            seq: Int,
            time: Date
        ) {
            self._did = .wrapped(did)
            self._handle = .wrapped(handle)
            self._seq = .wrapped(seq)
            self._time = .wrapped(time)
        }
        public static let typeValue = #LexiconDefID("com.atproto.sync.subscribeRepos#handle")
    }
}
public extension Com.Atproto.Sync.SubscribeRepos {
    struct Identity: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var seq: Int
        @Indirect
        public var time: Date
        public init(
            did: String,
            seq: Int,
            time: Date
        ) {
            self._did = .wrapped(did)
            self._seq = .wrapped(seq)
            self._time = .wrapped(time)
        }
        public static let typeValue = #LexiconDefID("com.atproto.sync.subscribeRepos#identity")
    }
}
public extension Com.Atproto.Sync.SubscribeRepos {
    struct Info: UnionCodable, Hashable {
        @Indirect
        public var message: String?
        @Indirect
        public var name: String
        public init(
            message: String? = nil,
            name: String
        ) {
            self._message = .wrapped(message)
            self._name = .wrapped(name)
        }
        public static let typeValue = #LexiconDefID("com.atproto.sync.subscribeRepos#info")
    }
}
public extension Com.Atproto.Sync {
    enum SubscribeRepos {
    }
}
public extension Com.Atproto.Sync.SubscribeRepos {
    struct Migrate: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var migrateTo: String
        @Indirect
        public var seq: Int
        @Indirect
        public var time: Date
        public init(
            did: String,
            migrateTo: String,
            seq: Int,
            time: Date
        ) {
            self._did = .wrapped(did)
            self._migrateTo = .wrapped(migrateTo)
            self._seq = .wrapped(seq)
            self._time = .wrapped(time)
        }
        public static let typeValue = #LexiconDefID("com.atproto.sync.subscribeRepos#migrate")
    }
}
public extension Com.Atproto.Sync.SubscribeRepos {
    struct RepoOp: UnionCodable, Hashable {
        @Indirect
        public var action: String
        @Indirect
        public var path: String
        public init(
            action: String,
            path: String
        ) {
            self._action = .wrapped(action)
            self._path = .wrapped(path)
        }
        public static let typeValue = #LexiconDefID("com.atproto.sync.subscribeRepos#repoOp")
    }
}
public extension Com.Atproto.Sync.SubscribeRepos {
    struct Tombstone: UnionCodable, Hashable {
        @Indirect
        public var did: String
        @Indirect
        public var seq: Int
        @Indirect
        public var time: Date
        public init(
            did: String,
            seq: Int,
            time: Date
        ) {
            self._did = .wrapped(did)
            self._seq = .wrapped(seq)
            self._time = .wrapped(time)
        }
        public static let typeValue = #LexiconDefID("com.atproto.sync.subscribeRepos#tombstone")
    }
}
public extension Com.Atproto.Temp {
    struct CheckSignupQueue: XRPCRequest {
        public struct Output: Decodable, Hashable {
            @Indirect
            public var activated: Bool
            @Indirect
            public var estimatedTimeMs: Int?
            @Indirect
            public var placeInQueue: Int?
            public init(
                activated: Bool,
                estimatedTimeMs: Int? = nil,
                placeInQueue: Int? = nil
            ) {
                self._activated = .wrapped(activated)
                self._estimatedTimeMs = .wrapped(estimatedTimeMs)
                self._placeInQueue = .wrapped(placeInQueue)
            }
        }
        public init(

        ) {

        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.temp.checkSignupQueue"
    }
}
public extension Com.Atproto.Temp {
    struct FetchLabels: XRPCRequest {
        public struct Parameters: XRPCRequestParametersConvertible {
            @Indirect
            public var limit: Int?
            @Indirect
            public var since: Int?
            public init(
                limit: Int? = nil,
                since: Int? = nil
            ) {
                self._limit = .wrapped(limit)
                self._since = .wrapped(since)
            }
            public var queryItems: [URLQueryItem] {
                var parameters = [URLQueryItem] ()
                parameters.append(contentsOf: limit.toQueryItems(name: "limit"))
                parameters.append(contentsOf: since.toQueryItems(name: "since"))

                return parameters
            }
        }
        public struct Output: Decodable, Hashable {
            @Indirect
            public var labels: [Com.Atproto.Label.Defs.Label]
            public init(
                labels: [Com.Atproto.Label.Defs.Label]
            ) {
                self._labels = .wrapped(labels)
            }
        }
        public init(
            parameters: Parameters
        ) {
            self.parameters = parameters
        }
        public let type = XRPCRequestType.query
        public let requestIdentifier = "com.atproto.temp.fetchLabels"
        public let parameters: Parameters
    }
}
public extension Com.Atproto.Temp {
    struct RequestPhoneVerification: XRPCRequest {
        public struct Input: Encodable {
            @Indirect
            public var phoneNumber: String
            public init(
                phoneNumber: String
            ) {
                self._phoneNumber = .wrapped(phoneNumber)
            }
        }
        public init(
            input: Input
        ) {
            self.input = input
        }
        public let type = XRPCRequestType.procedure
        public let requestIdentifier = "com.atproto.temp.requestPhoneVerification"
        public let input: Input?
    }
}