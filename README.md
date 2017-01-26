## Usage

`$ docker run -it --rm -v "$PWD":/opt noonarai/rails-new[:tag] <application_name> [option]`

```
# Example to build a new application which name is "sandbox".
$ docker run -it --rm -v "$PWD":/opt noonarai/rails-new:ruby2.3-rails4 sandbox -T -d mysql --skip-turbolinks
```
