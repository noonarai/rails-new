## Usage

```
$ docker run --rm -v "$PWD":/opt noonarai/rails-new[:tag] <application_name> [option]
```

## Example

- Build a new application which name is "sandbox".

```
$ docker run --rm -v "$PWD":/opt noonarai/rails-new:ruby2.6-rails6 sandbox -BT -d mysql --skip-turbolinks
```

- Build a new application in existing "sandbox" directory.

```
$ docker run --rm -v "$PWD":/opt/sandbox -w=/opt/sandbox noonarai/rails-new:ruby2.6-rails6 .
```
