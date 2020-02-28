## An application for users to select multiple favorite properties.

# Ruby version
- 2.6.5

# Rails Version
- 6.0.2

# Features
- Register User
- Get proprierties from Orulo API
- Select favorites
- Even updating the page and the selected favorites continue

# Database Setup
`rails db:setup`\
or \
`rails db:create`, 
`rails db:migrate`

# Configuration
docker:
 ```
 docker-compose build
 docker-compose run --rm app bash
   gem install bundler
   bundle install
   yarn install
   exit
 ```

local: \
`bundle install` \
`yarn install`

## How to run the test suite
`bundle exec rspec`

## Run the server
with docker: \
`docker-compose up`\
\
local (without docker): \
`rails server` \
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

