# README
### Setup:
 - $  rails new full-stack-rails -d postgresql -T
 - $  cd full-stack-rails
 - $  rails db:create
 - $  git remote add origin <<https://github.com/learn-academy-2022-foxtrot/full-stack-kevin.git>><!-- this is mine, don't copy it! >
 - $  git branch  <!-- no main, so create one -->
 - $  git checkout -b main
 - $  git status <!-- normally don't want to use all because it's really easy to make mistakes>
 - $  git add .
 - $  git status
 - $  git commit -m 'initial commit'
 - $  git push origin main
 - $  bundle add rspec-rails
 - $  rails g rspec:install
 
 - $  rails g model Book name:string read:string
 - $  rails db:migrate
 - $  rails g controller Book
 make sure everything is working
 - $ rails server
 - navigate to localhost:3000


Index
- a list of all the things
- GET request
- Read CRUD Action
- controller method
  - holds the active record query
- route
    defines the url and calls the index method 
- view
  - iterated over the Active Record array
  - added HTML for some structure

Show
- display one item
- GET request
- Read CRUD action
- controller action
- route
- view  
