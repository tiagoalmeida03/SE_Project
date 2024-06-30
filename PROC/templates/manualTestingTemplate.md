# Manual Testing
To test requisite go to the folder [REQ/Backlog/](/REQ/Backlog/)`REQ{n}_{title}.md`

Create a folder `/REQ/Backlog/REQ{n}_{title}` and put the folder `REQ{n}_{title}.md` inside it.

Inside the created folder create a test file named `tests.md` and follow the following template:

```md
# Test Report - REQ{number of req}

## Test Scenery

1. List all the pre-conditions for the test
2. like this

## Actions

1. List all the actions that were taken
2. to test the req

## Expected Result

1. List all the expected results
2. like this

## Result Obtained
**{OK/NOT OK}**
{if not ok explain current behavior}

```