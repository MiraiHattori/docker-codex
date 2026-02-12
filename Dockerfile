FROM node:lts-noble

RUN npm i -g @continuedev/cli

WORKDIR /workspace
ENTRYPOINT ["codex"]

