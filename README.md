# Architecture

This repository contains architecture of a project described in the C4-notation.

Everything is described as code (Architecture-as-Code).

## How to run

### Docker

1. Run `make all`
2. Access your browser by url http://127.0.0.1:80
3. Run `make clean` to remove started container and built image or `make stop-remove-container` to only remove container

### VSCode Extention

Install [this extention](https://marketplace.visualstudio.com/items?itemName=likec4.likec4-vscode) to see previews directly in IDE

### Local run

1. Install [likec4-cli](https://likec4.dev/tooling/cli/)
2. Run `likec4 start`
