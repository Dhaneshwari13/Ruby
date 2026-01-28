

## Rails Components
| Name              | Feature                      | Description                                                               | Version|
| ----------------- | ---------------------------- | ------------------------------------------------------------------------- | -------|
| Active Model      | Model layer support          | Provides validations, callbacks, and naming without a database connection | Rails 3|
| Active Record     | Object Relational Mapping    | Connects models with database tables and handles database operations      | Rails 1|
| Action View       | View rendering               | Displays HTML pages using templates like ERB                              | Rails 1|
| Action Controller | Request and response control | Handles browser requests and responses and connects models with views     | Rails 1|
| Active Job        | Background jobs              | Manages background tasks and job queues                                   | Rails 4|
| Active Support    | Utility helpers              | Provides Ruby extensions and helper methods                               | Rails 1|
| Action Mailer     | Email sending                | Used to send emails from the application                                  | Rails 1|
| Action Mailbox    | Incoming email handling      | Receives and processes incoming emails                                    | Rails 6|
| Action Cable      | Real-time features           | Supports WebSocket connections such as chat applications                  | Rails 5|
| Active Storage    | File uploads                 | Manages file uploads like images and documents                            | Rails 5|
| Action Text       | Rich text content            | Handles rich text editor and formatted content                            | Rails 6|
| Action Dispatch   | Routing and middleware       | Routes requests and manages middleware                                    | Rails 1|


## ActivePack
 This component is used to provide views by generating controllers.

Example:
Command: rails g controller admin
This command generates the Admin controller and the corresponding Admin views.


## Add a New Column to Product

Generate migration:
rails g migration AddMobToProduct mob:bigint

Run migration:
rails db:migrate

This adds a new column to the existing table.

To remove a column:
rails g migration RemoveMobFromCustomers mob:bigint

## Routes Configuration

To skip routes:
resources :products, except: [:show]

To use only specific routes:
resources :products, only: [:edit, :destroy]