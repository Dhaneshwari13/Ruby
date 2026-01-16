<h1>Day1</h1>
<h2>Software installation</h2>

# Ruby
Ruby is a high-level,easy-to-read programming language.
It is object-oriented,which means everything in Ruby is an object.

# Ruby on Rails Setup Guide

# Objective
Install Ruby and Ruby on Rails successfully
Verify the installation using command-line commands
Create and run a basic Rails application

# Step 1: Install Ruby
Download Ruby from the official Ruby Installer website: https://rubyinstaller.org/downloads/
Complete the installation process.
Verify Ruby installation by running.

# Step 2: Install Ruby on Rails
1.Install Rails using RubyGems: gem install rails
2.Verify Rails installation: rails -v

# Step 3: Create a New Rails Application
Create a new Rails project using: rails new ApplicationName

# Step 4: Run the Rails Application
1.Move into the project directory: cd ApplicationName
2.Start the Rails server: rails s
3.Open a browser and visit: http://localhost:3000


<h1> Day2 </h1>
<h2> Database & Scaffolding Cheat Sheet </h2>

# Database Clients DBeaver (GUI Tool)
1. Works with: PostgreSQL, MySQL, Oracle, SQL Server, NoSQL
2. Advantages: ER diagrams, visual queries, easy for beginners
3. Drawback: Uses more memory
Note: Only a client → database server must already be running

# psql (Command Line Tool)
1. Supports: PostgreSQL only
2. Pros: Fast, lightweight, best for terminal-based work

# Database Initialization
rails db:create	Creates the database
rails db:migrate	Runs migrations to build tables

# Scaffolding (CRUD Generation)
Command: rails generate scaffold Customer name:string email:string age:integer
Generates Model, View, Controller automatically Enables immediate CRUD (Create, Read, Update, Delete)

# Rails Console
rails c

# Migrations & Versioning
Migrations: Files tracking DB structure changes
Versioning: Each migration has a unique ID
Collaboration: Team members migrate to stay synced
Exceptions: Errors occur if app runs without latest migrations

# Key Commands Summary
<table border="1" cellpadding="8" cellspacing="0">
  <thead>
    <tr>
      <th>Command</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>rails c</td>
      <td>Open Rails Console</td>
    </tr>
    <tr>
      <td>rails db:create</td>
      <td>Create Database</td>
    </tr>
    <tr>
      <td>rails db:migrate</td>
      <td>Run Migrations</td>
    </tr>
    <tr>
      <td>rails generate scaffold</td>
      <td>Generate Full Resource Structure</td>
    </tr>
  </tbody>
</table>


<h1>Day3</h1>
<h2>Rails Project Configuration Guide</h2>

# Core Structure
bin/
Contains command-line tools like bin/rails. These scripts help start the server, manage the database, and generate code.

config/
Stores all important settings of the application, including routes, database setup, and environment rules.

application.rb
Main configuration file of the app. It loads gems and applies global settings such as time zone. If this file fails, the app will not run.

puma.rb
Controls the web server. It defines how many threads and workers handle incoming user requests.

# Environments (config/environments/)
development.rb
Used while coding. Automatically reloads changes and shows detailed error messages.

test.rb
Used for testing. Keeps test data separate and allows safe error checking.

production.rb
Used in live applications. Improves performance, hides error details, and enforces secure connections (HTTPS).

# Initializers (config/initializers/)
These files run once when the application starts and configure specific features:

assets.rb
Manages how CSS and JavaScript files are bundled and optimized.

content_security_policy.rb
Protects the app from unsafe scripts by allowing only trusted sources.

filter_parameter_logging.rb
Hides sensitive information like passwords in logs.

inflections.rb
Helps Rails correctly handle singular and plural word forms.

ci.rb
Configures the app for automated testing environments.

# Configuration Files (.yml)

database.yml
Defines how the app connects to the database.

cable.yml
Sets up real-time communication using WebSockets.

cache.yml
Stores frequently used data in memory for faster access.

queue.yml
Controls background jobs such as sending emails.

storage.yml
Specifies where uploaded files are stored (local or cloud).

deploy.yml
Contains instructions for deploying the application to a server.

# Boot Process
boot.rb
Loads Bundler and required gems.
application.rb
Applies global application settings.
environment.rb
Starts the full Rails application.





