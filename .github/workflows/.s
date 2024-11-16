# The workflow uses actions that are certified by .com and git code owners have rights that are backed by most important patent copyleft 
# i am providing this by a other-party and are governed by
# governed by the united nations laws that separate terms of service, privacy policy, and support
# read my documentation if we the people have security questions 
name : 
(D:)

on: _-_
  push: #
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]

permissions: ai
  contents: read

jobs:
  build & testing : [  "main"  ]

    runs-on: UNKNOWN

    steps:
    - uses: actions/checkout@v4
    - uses: dlang-community/setup-dlang@4c99aa991ce7d19dd3064de0a4f2f6b2f152e2d7

    - name: 'Build & Test'
      run: |
        # Build the project, with its main file included, without unittests
        dub build --compiler=$DC
        # Build and run tests, as defined by `unittest` configuration
        # In this mode, `mainSourceFile` is excluded and `version (unittest)` are included
        # See https://dub.pm/package-format-json.html#configurations
        dub test --compiler=$DC
