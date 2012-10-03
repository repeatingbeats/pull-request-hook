A GitHub [pull request hook](http://developer.github.com/v3/repos/hooks/) that listens for the 'closed' action and logs payload attributes relating to the merge status of the pull request.

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
