# Pull Request Hook

A GitHub [pull request hook](http://developer.github.com/v3/repos/hooks/) that listens for the 'closed' action and logs payload attributes relating to the merge status of the pull request.

## Why?

This project was created to inspect GitHub web service hooks for pull request events. It aims to answer the question "Can the pull request event be used to determine whether or not a pull request was closed by a merge?"

## Process

1. Write this simple app

2. Deploy this app to Heroku

3. Add the hook to this repo:

        curl -v -H 'Authorization: token {{token}}' https://api.github.com/repos/repeatingbeats/pull-request-hook/hooks -X POST -d '{"name": "web", "active": true, "config": { "url": "http://{{app-name}}.herokuapp.com", "content_type": "json" }, "events": [ "pull_request" ]}'

4. Open a series of pull requests. Merge/close the pull requests with the merge button. Inspect Heroku app logs for payload.


## Results

The following list records merge-related attributes of the web service hook payload's 'pull_request' attribute when the 'action' attribute is 'closed'.

* [Pull Request #3](https://github.com/repeatingbeats/pull-request-hook/pull/3)

        "merge_commit_sha": "ac01adb9df0e4a275bf9946dffa5b43c3662f539",
        "mergeable": null,  
        "mergeable_state": "unknown",
        "merged": true,
        "merged_at": "2012-10-03T19:05:57Z" 

* [Pull Request #4](https://github.com/repeatingbeats/pull-request-hook/pull/4)

        "merge_commit_sha": "50cecbd2e5403b4333c27af36f00645a8652f1a9",
        "mergeable": true,
        "mergeable_state": "clean",
        "merged": false,
        "merged_at": null

* [Pull Request #5](https://github.com/repeatingbeats/pull-request-hook/pull/5)

        "merge_commit_sha": "85dabf61ce9b988aca24b65348feea1cd688ce53",
        "mergeable": null,
        "mergeable_state": "unknown",
        "merged": true,
        "merged_at": "2012-10-03T19:13:36Z",

* [Pull Request #6](https://github.com/repeatingbeats/pull-request-hook/pull/6)

        "merge_commit_sha": "84eb4d53f9cabbaca17025a28a4d5cb062276a93",
        "mergeable": true,
        "mergeable_state": "clean",
        "merged": false,
        "merged_at": null,


## Conclusion

The lack of consistency in the merge attributes would indicate that these attributes cannot be relied on to determine whether or not the pull request was merged at the time the 'closed' hook is observerd.
