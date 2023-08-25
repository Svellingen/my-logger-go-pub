
version := "1.0.0"

_help:
  @just --list -f {{justfile()}} --list-heading $'' --unsorted

# create and push git version tag
tag-create:
  @echo "creating and pushing tag v{{version}}"
  git tag "v{{version}}"
  git push --tags

# list all git tags
tag-list:
  @git tags
