Sinatra cloudinary sample
===

## Requirement

* ruby 2.1 ~
* bundler

## Setup

```
$ bundle --without production
$ bundle exec rake db:migrate
```

### Create `.env`

Sign up [cloudinary](http://cloudinary.com/)  

and  

Get `Cloud name`, `API Key` and `API Secret`

.env

```
CLOUD_NAME = 'YOUR_CLOUD_NAME'
CLOUDINARY_API_KEY = 'YOUR_CLOUDINARY_API_KEY'
CLOUDINARY_API_SECRET = 'YOUR_CLOUDINARY_API_SECRET'
```


## Usage

```
$ bundle exec ruby app.rb
```
