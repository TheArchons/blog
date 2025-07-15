dev:
    hugo server

draft:
    hugo server -D

build:
    hugo --gc --minify -d /Volumes/nas/home/archons/blog/public/

page name:
    hugo new content content/posts/{{name}}.md