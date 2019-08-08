# Go Github Release

This is [Dunner](https://github.com/leopardslab/dunner) recipe for creating Github release for a Go project and uses [Goreleaser](https://goreleaser.com).

## Usage

Run below command in root directory of Project. 

```
$ dunner init go-github-release
```

This recipe creates a dunner task file `.dunner.yml` and also `.goreleaser.yml` which contains Github Release information. Edit it accordingly.

To set the version of your project add git tag and push it to master branch remote. 

```
$ git tag -a <version> -m "Release version <version>"
$ git push origin <version>
```

Run below command from project root directory to make the Github release with all binaries of your project along with generated Changelog and source code.

```
$ dunner do go-github-release
```

# Recipe

```
go-github-release: 
  - image: goreleaser/goreleaser
    commands:
    - ["goreleaser", "release"]
    envs:
    - GITHUB_TOKEN=`$GITHUB_TOKEN`
    mounts:
    - ".:/app"
```

