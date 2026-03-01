FROM node:lts

RUN npm i -g @openai/codex@latest

WORKDIR /workspace
ENTRYPOINT ["codex"]

