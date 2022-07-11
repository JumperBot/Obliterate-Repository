FROM alpine/git:latest

COPY Obliterator.sh /Obliterator.sh
RUN chmod +x /Obliterator.sh

ENTRYPOINT ["/Obliterator.sh"]

LABEL "name"="Obliterate-Repository"
LABEL "maintainer"="JumperBot <contactjumperbot@gmail.com>"
LABEL "com.github.actions.name"="Obliterate-Repository"
LABEL "com.github.actions.description"="Obliterate the repository."
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="black"