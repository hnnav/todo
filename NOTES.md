To do list

Users
- has_many :tasks
- has_many :projects, through: tasks
- username:string
- password_digest
    Routes & views:
    - users/new
        - view: users/new using _form
        - redirect to root

    

Tasks * join table joining projects & users
- belongs_to :user
- belongs_to :project
- title
    Routes & views:
    - /projects/:project_id/tasks to tasks#index
        - view: tasks/index
        - delete button, link to edit, link to new
    - /projects/:project_id/tasks/new
        - view: tasks/new use tasks/_form
        - redirect to tasks/index
    - /projects/:project_id/tasks/:id/edit
        - view: tasks/edit use _form
        - redirect to index


Projects
- has_many :tasks
- has_many :users, through: tasks
- name:string
    Routes & views:
    - ROOT: /projects to projects#index
        - link to new project / edit
        - delete button (delete associated tasks?)
        - link to /projects/:project_id/tasks to tasks#index
    - /projects/new
        - _form partial 
        - redirect to projects_path
    - /projects/:id/edit
        - - _form partial 
        - redirect to project_path
