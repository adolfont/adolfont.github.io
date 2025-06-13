wget -qO - "https://omny.fm/shows/colunistas-eldorado-estad-o/playlists/podcast.rss" | \
xmlstarlet sel -T -t \
  -m '//item[starts-with(title,"Inteligência Artificial nas Ondas do Rádio")]' \
    -v title -o " | " -v link -o " | " -v pubDate -n
