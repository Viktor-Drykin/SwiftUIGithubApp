import Foundation

// MARK: - WelcomeElement
struct PullRequestDTO: Decodable {
    let url: String?
    let id: Int?
    let labels: [Label]?
    let nodeID: String?
    let htmlURL: String?
    let diffURL: String?
    let patchURL: String?
    let issueURL: String?
    let number: Int?
    let state: String?
    let locked: Bool?
    let title: String?
    let user: User?
    let body: String?
    let createdAt, updatedAt: String?
    let closedAt, mergedAt, mergeCommitSHA, assignee: String?
    let draft: Bool?
    let commitsURL, reviewCommentsURL: String?
    let reviewCommentURL: String?
    let commentsURL, statusesURL: String?
    let head, base: Base?
    let links: Links?
    let authorAssociation: String?

    enum CodingKeys: String, CodingKey {
        case url, id, labels
        case nodeID = "node_id"
        case htmlURL = "html_url"
        case diffURL = "diff_url"
        case patchURL = "patch_url"
        case issueURL = "issue_url"
        case number, state, locked, title, user, body
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case closedAt = "closed_at"
        case mergedAt = "merged_at"
        case mergeCommitSHA = "merge_commit_sha"
        case assignee
        case draft
        case commitsURL = "commits_url"
        case reviewCommentsURL = "review_comments_url"
        case reviewCommentURL = "review_comment_url"
        case commentsURL = "comments_url"
        case statusesURL = "statuses_url"
        case head, base
        case links = "_links"
        case authorAssociation = "author_association"
    }
}

struct Label: Decodable {
    let id: Int?
    let nodeID: String?
    let url: String?
    let name, color: String?
    let welcomeDefault: Bool?
    let description: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case nodeID = "node_id"
        case url, name, color
        case welcomeDefault = "default"
        case description
    }
}

// MARK: - Base
struct Base: Decodable {
    let label, ref, sha: String?
    let user: User?
    let repo: Repo?
}

// MARK: - Repo
struct Repo: Decodable {
    let id: Int?
    let nodeID, name, fullName: String?
    let repoPrivate: Bool?
    let owner: User?
    let htmlURL: String?
    let description: String?
    let fork: Bool?
    let url, forksURL: String?
    let keysURL, collaboratorsURL: String?
    let teamsURL, hooksURL: String?
    let issueEventsURL: String?
    let eventsURL: String?
    let assigneesURL, branchesURL: String?
    let tagsURL: String?
    let blobsURL, gitTagsURL, gitRefsURL, treesURL: String?
    let statusesURL: String?
    let languagesURL, stargazersURL, contributorsURL, subscribersURL: String?
    let subscriptionURL: String?
    let commitsURL, gitCommitsURL, commentsURL, issueCommentURL: String?
    let contentsURL, compareURL: String?
    let mergesURL: String?
    let archiveURL: String?
    let downloadsURL: String?
    let issuesURL, pullsURL, milestonesURL, notificationsURL: String?
    let labelsURL, releasesURL: String?
    let deploymentsURL: String?
    let createdAt, updatedAt, pushedAt: String?
    let gitURL, sshURL: String?
    let cloneURL: String?
    let svnURL: String?
    let homepage: String?
    let size, stargazersCount, watchersCount: Int?
    let language: String?
    let hasIssues, hasProjects, hasDownloads, hasWiki: Bool?
    let hasPages, hasDiscussions: Bool?
    let forksCount: Int?
    let mirrorURL: String?
    let archived, disabled: Bool?
    let openIssuesCount: Int?
    let license: License?
    let allowForking, isTemplate, webCommitSignoffRequired: Bool?
    let visibility: String?
    let forks, openIssues, watchers: Int?
    let defaultBranch: String?

    enum CodingKeys: String, CodingKey {
        case id
        case nodeID = "node_id"
        case name
        case fullName = "full_name"
        case repoPrivate = "private"
        case owner
        case htmlURL = "html_url"
        case description, fork, url
        case forksURL = "forks_url"
        case keysURL = "keys_url"
        case collaboratorsURL = "collaborators_url"
        case teamsURL = "teams_url"
        case hooksURL = "hooks_url"
        case issueEventsURL = "issue_events_url"
        case eventsURL = "events_url"
        case assigneesURL = "assignees_url"
        case branchesURL = "branches_url"
        case tagsURL = "tags_url"
        case blobsURL = "blobs_url"
        case gitTagsURL = "git_tags_url"
        case gitRefsURL = "git_refs_url"
        case treesURL = "trees_url"
        case statusesURL = "statuses_url"
        case languagesURL = "languages_url"
        case stargazersURL = "stargazers_url"
        case contributorsURL = "contributors_url"
        case subscribersURL = "subscribers_url"
        case subscriptionURL = "subscription_url"
        case commitsURL = "commits_url"
        case gitCommitsURL = "git_commits_url"
        case commentsURL = "comments_url"
        case issueCommentURL = "issue_comment_url"
        case contentsURL = "contents_url"
        case compareURL = "compare_url"
        case mergesURL = "merges_url"
        case archiveURL = "archive_url"
        case downloadsURL = "downloads_url"
        case issuesURL = "issues_url"
        case pullsURL = "pulls_url"
        case milestonesURL = "milestones_url"
        case notificationsURL = "notifications_url"
        case labelsURL = "labels_url"
        case releasesURL = "releases_url"
        case deploymentsURL = "deployments_url"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case pushedAt = "pushed_at"
        case gitURL = "git_url"
        case sshURL = "ssh_url"
        case cloneURL = "clone_url"
        case svnURL = "svn_url"
        case homepage, size
        case stargazersCount = "stargazers_count"
        case watchersCount = "watchers_count"
        case language
        case hasIssues = "has_issues"
        case hasProjects = "has_projects"
        case hasDownloads = "has_downloads"
        case hasWiki = "has_wiki"
        case hasPages = "has_pages"
        case hasDiscussions = "has_discussions"
        case forksCount = "forks_count"
        case mirrorURL = "mirror_url"
        case archived, disabled
        case openIssuesCount = "open_issues_count"
        case license
        case allowForking = "allow_forking"
        case isTemplate = "is_template"
        case webCommitSignoffRequired = "web_commit_signoff_required"
        case visibility, forks
        case openIssues = "open_issues"
        case watchers
        case defaultBranch = "default_branch"
    }
}

// MARK: - License
struct License: Codable {
    let key, name, spdxID: String?
    let url: String?
    let nodeID: String?

    enum CodingKeys: String, CodingKey {
        case key, name
        case spdxID = "spdx_id"
        case url
        case nodeID = "node_id"
    }
}

// MARK: - User
struct User: Codable {
    let login: String?
    let id: Int?
    let nodeID: String?
    let avatarURL: String?
    let gravatarID: String?
    let url, htmlURL, followersURL: String?
    let followingURL, gistsURL, starredURL: String?
    let subscriptionsURL, organizationsURL, reposURL: String?
    let eventsURL: String?
    let receivedEventsURL: String?
    let type, userViewType: String?
    let siteAdmin: Bool?

    enum CodingKeys: String, CodingKey {
        case login, id
        case nodeID = "node_id"
        case avatarURL = "avatar_url"
        case gravatarID = "gravatar_id"
        case url
        case htmlURL = "html_url"
        case followersURL = "followers_url"
        case followingURL = "following_url"
        case gistsURL = "gists_url"
        case starredURL = "starred_url"
        case subscriptionsURL = "subscriptions_url"
        case organizationsURL = "organizations_url"
        case reposURL = "repos_url"
        case eventsURL = "events_url"
        case receivedEventsURL = "received_events_url"
        case type
        case userViewType = "user_view_type"
        case siteAdmin = "site_admin"
    }
}

// MARK: - Links
struct Links: Codable {
    let linksSelf, html, issue, comments: Comments?
    let reviewComments, reviewComment, commits, statuses: Comments?

    enum CodingKeys: String, CodingKey {
        case linksSelf = "self"
        case html, issue, comments
        case reviewComments = "review_comments"
        case reviewComment = "review_comment"
        case commits, statuses
    }
}

// MARK: - Comments
struct Comments: Codable {
    let href: String?
}
