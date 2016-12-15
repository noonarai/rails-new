## Usage

```
$ docker run -it --rm -v "$PWD":/opt noonarai/rails-new[:tag] <application_name> [option]

# e.x.
$ docker run -it --rm -v "$PWD":/opt noonarai/rails-new sandbox -BT -d mysql --skip-turbolinks
```
