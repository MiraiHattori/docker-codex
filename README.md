# Instruction
This repository does not work as is.

# Important note
This repo defaults to -–dangerously-bypass-approvals-and-sandbox, so the parent directory can be overwritten

# How to use
This repository is meant to be a submodule directory of a new repository.

```bash
# prepare a git repo <git-repo> and git clone it in your environment
cd <git-repo>
git submodule add git@github.com:MiraiHattori/docker-codex
cd docker-codex
make  # by default, codex has full permissions inside the <git-repo>
```
