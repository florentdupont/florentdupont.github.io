# source du blog florentdupont.github.io

installer les gems nécessaires : 

```
bundle install
```

ou `bundle --path=.bundle/gems` (pour installer localement).

pour les fois d'après, il suffira de faire un `bundle`.

construire le site : 
````
bundle exec jekyll serve
````

ce blog est basé sur le minima template, customisé pour prendre en compte Jekyll-asciidoc. 
La doc de Jekyll Asciidoc
https://github.com/asciidoctor/jekyll-asciidoc

Attention, minima 2.5 pour l'instant
Comment customiser le thme minima : https://github.com/jekyll/minima
https://github.com/asciidoctor/asciidoctor-docs-ui


A installer a la main sur MacOS : 
 - pygments a installer a la main ? `sudo gem install pygments.rb`
- brew install graphviz



# Image Docker

Construire d'abord l'image :

docker build -t blog .


Puis lancer la commande : 

docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  jekyll build

ou

  docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  --publish "[::1]:4000:4000" \
  -it blog \
  jekyll serve --trace





Sites sympa d'inspiration pour le style : 
https://aaronrandall.com/blog/cracking-the-adventure-time-cipher/

