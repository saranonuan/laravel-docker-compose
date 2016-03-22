alias sketchup-data="docker run --name sketchup-data -v /Users/dylan/myapp:/data:rw dylanlindgren/docker-laravel-data"
alias sketchup-fpm="docker run --privileged=true --name sketchup-fpm --volumes-from sketchup-data -d dylanlindgren/docker-laravel-phpfpm"
alias sketchup-nginx="docker run --privileged=true --name sketchup-web --volumes-from sketchup-data -p 80:80 --link sketchup-fpm:fpm -d dylanlindgren/docker-laravel-nginx"

alias sketchup-composer="docker run --privileged=true --volumes-from sketchup-data --rm dylanlindgren/docker-laravel-composer"
alias sketchup-artisan="docker run --privileged=true --volumes-from sketchup-data --rm dylanlindgren/docker-laravel-artisan"

