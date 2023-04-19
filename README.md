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
- controller action check!
- route
 - added parameter
 - added aliases
- view  
  linked back to home and from home to show

New
- display a form
- GET request
- Read 
- controller method
 uses the .new method
- route
  reorder the routes
- view
  Rails forms : https://guides.rubyonrails.org/form_helpers.html
  added links to the form

Create
- adds content from the form to the db
- POST request
- create CRUD action
- controller
 -     @book = Book.create(book_params)
 #strong params: security
 def book_params
    params.require(:book).permit(:name, :read)
  end

  redirect_to books_path

- route check!
- view  not necessary 
 
Destroy
- controller
- route
- view
 show.html.erb:
    <p><%= link_to 'Remove Book', delete_book_path(book), method: 'delete' %></p>


## Edit
- controller
- routes
- view


## Update
- controller
- routes
- view