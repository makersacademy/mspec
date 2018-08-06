# mspec
Stripped down Ruby testing framework

## MVP
As a developer
So that I can run a code block in test conditions
I can encapsulate the code block in a test

As a developer
So that I can know whether a code block works as expected
I can assert a truth about the code

As a developer
So that I can know whether all my tests pass
I can run my tests from the terminal

As a developer
So that I can know which of my tests are failing
I can see a report of all failing tests

As a developer
So that I can debug why a test has failed
I can see the stack trace from any failed tests

## Instructions

Check out the code:

```
git clone https://github.com/makersacademy/mspec.git
```

Add a specs file to your specs folder in your repository in the format:

```
require_relative '[PATH TO MSPEC]/lib/mspec_runner'
require_relative './[TESTS YOU WANT TO RUN]'

run_tests
```

From the terminal, run:

```
ruby spec/specs.rb
```
