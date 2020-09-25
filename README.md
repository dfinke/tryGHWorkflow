Example running with more than one operating system
You can create a matrix to run workflows on more than one runner operating system. You can also specify more than one matrix configuration. This example creates a matrix of 6 jobs:

2 operating systems specified in the os array
3 Node.js versions specified in the node array
When you define a matrix of operating systems, you must set the value of runs-on to the matrix.os context property you defined.

runs-on: ${{ matrix.os }}
strategy:
  matrix:
    os: [ubuntu-16.04, ubuntu-18.04]
    node: [6, 8, 10]
steps:
  - uses: actions/setup-node@v1
    with:
      node-version: ${{ matrix.node }}
To find supported configuration options for GitHub-hosted runners, see "Virtual environments for GitHub-hosted runners."