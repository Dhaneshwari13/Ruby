<!DOCTYPE html>
<html>
<head>
<h1>Ruby-On-Rails-Internship</h1>
<h2>Day 1</h2>
<h3>Software Installation</h3>
  
<h3>Step 1: Install Ruby</h3>
<ul>
  <li>Download RubyInstaller from https://rubyinstaller.org</li>
  <li>Run the installer and complete the setup</li>
  <li>Verify installation:</li>
</ul>
<pre>
ruby -v
</pre>

<h3>Step 2: Install Rails</h3>
<ul>
  <li>Open Command Prompt as Administrator</li>
  <li>Install Rails gem:</li>
</ul>
<pre>
gem install rails
</pre>
<p>Verify installation:</p>
<pre>
rails -v
</pre>

<h3>Step 3: Create New Rails Project</h3>
<ul>
  <li>Navigate to your projects folder:</li>
</ul>
<pre>
cd C:\Users\rahul
mkdir my_app
cd my_app
</pre>
<p>Create a new Rails application:</p>
<pre>
rails new my_app
cd my_app
</pre>

<h3>Step 4: Run Rails Server</h3>
<ul>
  <li>Start the server:</li>
</ul>
<pre>
rails server
</pre>
<ul>
  <li>Open browser and visit:</li>
</ul>
<pre>
http://localhost:3000
</pre>
<ul>
  <li>Run on a different port (optional):</li>
</ul>
<pre>
rails server -p 4000
</pre>
<ul>
  <li>Stop the server:</li>
</ul>
<pre>
Press Ctrl + C
</pre>
</head>
<body>
</body>
</html>



<!DOCTYPE html>
<html>
<head>
<h1>Day 2</h1>
<h2>Database & Scaffolding Cheat Sheet</h2>

<h3>Database Clients</h3>

<h4>DBeaver (GUI Tool)</h4>
<ul>
  <li>Supports: PostgreSQL, MySQL, Oracle, SQL Server, NoSQL</li>
  <li>Pros: Visual ER diagrams, Query Builder, beginner-friendly</li>
  <li>Cons: Heavy, consumes more RAM</li>
  <li>Note: DBeaver is only a client; database server must be running</li>
</ul>

<h4>psql (Command Line)</h4>
<ul>
  <li>Supports: PostgreSQL only</li>
  <li>Pros: Fast, lightweight, ideal for scripts and terminal work</li>
</ul>

<h3>Rails Project Setup</h3>
<p>Create Project:</p>
<pre>
rails new my_application -d postgresql
</pre>
<p>Note: -d postgresql tells Rails to use PostgreSQL instead of SQLite</p>

<p>Gemfile Check:</p>
<pre>
gem 'pg'
</pre>
<p>Bridge between Rails and PostgreSQL</p>

<h3>Database Initialization</h3>
<pre>
rails db:create
rails db:migrate
</pre>
<ul>
  <li>rails db:create – Creates the database</li>
  <li>rails db:migrate – Runs migrations to build tables</li>
</ul>

<h3>Scaffolding (CRUD Generation)</h3>
<p>Command:</p>
<pre>
rails generate scaffold Customer name:string email:string age:integer
</pre>
<ul>
  <li>Generates Model, View, Controller automatically</li>
  <li>Enables CRUD operations (Create, Read, Update, Delete)</li>
</ul>

<h3>Rails Console</h3>
<pre>
rails c
</pre>
<ul>
  <li>Opens Rails Console</li>
  <li>Used to test data and run Ruby code directly against the database</li>
</ul>

<h3>Migrations & Versioning</h3>
<ul>
  <li>Migrations track database structure changes</li>
  <li>Each migration has a unique version ID</li>
  <li>Team members run migrations to stay in sync</li>
  <li>Errors occur if the app runs without latest migrations</li>
</ul>

<h3>Key Commands Summary</h3>
<ul>
  <li>rails c – Open Rails Console</li>
  <li>rails db:create – Create database</li>
  <li>rails db:migrate – Run migrations</li>
  <li>rails generate scaffold – Generate full resource structure</li>
</ul>
</head>
<body>
</body>
</html>


<h1>Day3</h1>
<!DOCTYPE html>
<html>
<head>
<h1>Rails Project Configuration Guide</h1>

<h2>The Core Structure</h2>
<ul>
  <li><b>bin/</b>: The "Executable Tools." Contains scripts like bin/rails that automate code generation, database management, and server startup.</li>
  <li><b>config/</b>: The "Application Brain." The central hub for environment settings, database credentials, and routing rules.</li>
  <li><b>application.rb</b>: The "Global Hub." Boots the app, loads gems, and sets universal rules (like Time Zones).</li>
  <li><b>puma.rb</b>: The "Engine Room." Configures threads and workers to handle multiple user requests.</li>
</ul>

<h2>Environments (config/environments/)</h2>
<ul>
  <li><b>development.rb</b>: The "Builder's Bench." Enables code reloading and detailed error reports.</li>
  <li><b>test.rb</b>: The "Sandbox." Used to run tests without affecting real data.</li>
  <li><b>production.rb</b>: The "Vault." Optimizes speed and enforces security like HTTPS.</li>
</ul>

<h2>Initializers (config/initializers/)</h2>
<p>Small Ruby files that run once during startup:</p>
<ul>
  <li><b>assets.rb</b>: The "Stylist." Compresses CSS and JS for production.</li>
  <li><b>content_security_policy.rb</b>: The "Security Guard." Prevents XSS attacks.</li>
  <li><b>filter_parameter_logging.rb</b>: The "Privacy Mask." Hides sensitive data in logs.</li>
  <li><b>inflections.rb</b>: The "Grammar Coach." Handles irregular pluralization.</li>
  <li><b>ci.rb</b>: The "Test Detector." Configures automated testing environments.</li>
</ul>

<h2>Configuration Files (.yml)</h2>
<ul>
  <li><b>database.yml</b>: The "Bridge." Connects the application to the database.</li>
  <li><b>cable.yml</b>: The "Live Wire." Configures WebSockets.</li>
  <li><b>cache.yml</b>: The "Short-term Memory." Stores cached data.</li>
  <li><b>queue.yml</b>: The "Shift Schedule." Manages background jobs.</li>
  <li><b>storage.yml</b>: The "Shipping Manifest." File storage configuration.</li>
  <li><b>deploy.yml</b>: The "Launch Checklist." Deployment steps.</li>
</ul>

<h2>The Boot Sequence</h2>
<ol>
  <li><b>boot.rb</b>: Loads Bundler and gems.</li>
  <li><b>application.rb</b>: Applies global configurations.</li>
  <li><b>environment.rb</b>: Initializes the Rails application.</li>
</ol>
</head>
<body>
</body>
</html>

<!DOCTYPE html>
<html>
<head>
<h1>Day 4</h1>
<h2>Variables and Datatypes</h2>

<h3>Variables</h3>
<p>In Ruby, variables are of 5 types:</p>

<table border="1">
  <tr>
    <th>Sl.No</th>
    <th>Type</th>
    <th>Naming Convention</th>
  </tr>
  <tr>
    <td>1</td>
    <td>Local variables</td>
    <td>Starts with lower case or '_'</td>
  </tr>
  <tr>
    <td>2</td>
    <td>Global variables</td>
    <td>Starts with '$'</td>
  </tr>
  <tr>
    <td>3</td>
    <td>Instance variables</td>
    <td>Starts with '@'</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Class variables</td>
    <td>Starts with '@@'</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Constant variables</td>
    <td>Starts with uppercase</td>
  </tr>
</table>

<h3>Datatypes</h3>
<ul>
  <li>Integer</li>
  <li>Float</li>
  <li>String</li>
  <li>Symbol</li>
  <li>Boolean</li>
  <li>Array</li>
  <li>Hashes</li>
  <li>NilClass</li>
</ul>
</head>
<body>
</body>
</html>






