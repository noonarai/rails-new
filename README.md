## Usage

`$ docker run -it --rm -v "$PWD":/opt noonarai/rails-new[:tag] <application_name> [option]`

```
# build new application which name is "sandbox"
$ docker run -it --rm -v "$PWD":/opt noonarai/rails-new:ruby2.3-rails4 sandbox -BT -d mysql --skip-turbolinks

# if you want to check latest help
$ docker run --rm noonarai/rails-new
```
