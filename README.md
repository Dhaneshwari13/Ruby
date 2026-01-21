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

<hr>

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

<hr>

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

<hr>

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

<hr>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <h1>Day 5 – Methods, Type Casting & Product Scaffold</h1>
  <h2>1. Methods & Comments</h2>

  <h3>Ruby Methods</h3>
  <ul>
    <li>Ruby methods return the last evaluated expression automatically.</li>
    <li><b>return</b> keyword is optional.</li>
  </ul>

  <h3>Comments</h3>
  <ul>
    <li>Single-line comment: <b>#</b></li>
    <li>Multi-line comment: <b>=begin / =end</b></li>
  </ul>
  
  <h2>2. Type Casting</h2>
  <ul>
    <li>User input is always a <b>String</b>.</li>
    <li>Ruby does not support implicit type casting.</li>
  </ul>

  <h3>Examples</h3>
  <ul>
    <li>"10".to_i → String to Integer</li>
    <li>10.to_s → Integer to String</li>
    <li>"10.5".to_f → String to Float</li>
  </ul>
  
  <h2>3. Product Scaffold</h2>

  <p><b>Command:</b></p>
  <p>
    rails generate scaffold Product name:string description:text price:decimal
    stock:integer is_active:boolean
  </p>

  <p><b>After any database-related change:</b></p>
  <p>rails db:migrate</p>
  
  <h2>4. Ways to Insert Data</h2>
  <ul>
    <li>UI (Rails-generated forms)</li>
    <li>Manual SQL (DBeaver)</li>
    <li>Seeds file (db/seeds.rb)</li>
    <li>Rails Console</li>
  </ul>
  
  <h2>5. Example SQL Insert</h2>
  <p>
    INSERT INTO products (name, description, price, stock, is_active, created_at, updated_at)
 </p>
  <p>
   VALUES ('Smart Watch', 'Advanced smart watch with fitness tracking', 150, 10, TRUE, '2026-01-20', '2026-01-20');
  </p>
  
  <h2>6. Example Seed Data</h2>
  <p>
   Product.create(name: "Tesla 1", description: "The tesla 1 product", price: 900, stock: 30, is_active: true)
  </p>
</head>
<body>
</body>
</html>

<hr>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <h1>Day 6 – Ruby Loops & Enumerable Methods</h1>
  <h2>Ruby Loops</h2>

  <h3>for Loop</h3>
  <p>
    The <b>for loop</b> is used when the range or number of iterations is already known.
    It automatically increments the value and does not require manual increment.
  </p>

  <p><b>Example:</b></p>
  <p>
    <pre>
    arr = [2, 4, 6, 8, 10, 12]<br><br>
    for i in 10..15<br>
    &nbsp;&nbsp;print i<br>
    end
    </pre>
  </p>

  <p><b>Key Points:</b></p>
  <ul>
    <li>Automatically increments</li>
    <li>Manual increment does not work</li>
    <li><b>..</b> includes both start and end values</li>
  </ul>
  
  <h3>while Loop</h3>
  <p>
    The <b>while loop</b> executes code as long as the given condition is true.
    The condition is checked before each iteration.
  </p>

  <p><b>Example:</b></p>
  <p>
    <pre>
    i = 0<br>
    while i &lt;= 10<br>
    &nbsp;&nbsp;puts i<br>
    &nbsp;&nbsp;i += 1<br>
    end
    </pre>
  </p>

  <p><b>Key Points:</b></p>
  <ul>
    <li>Condition is checked before execution</li>
    <li>Manual initialization is required</li>
    <li>Manual increment is required</li>
  </ul>
  
  <h3>loop do</h3>
  <p>
    The <b>loop do</b> construct creates an infinite loop.
    It must contain a <b>break</b> statement to stop execution.
  </p>

  <p><b>Example:</b></p>
  <p>
    <pre>
    k = 0<br>
    loop do<br>
    &nbsp;&nbsp;puts "student : #{k}"<br>
    &nbsp;&nbsp;k += 1<br>
    &nbsp;&nbsp;break if k &gt; 30<br>
    end
    </pre>
  </p>

  <p><b>Key Points:</b></p>
  <ul>
    <li>Runs continuously</li>
    <li><b>break</b> is mandatory to stop the loop</li>
  </ul>
  
  <h3>until Loop</h3>
  <p>
    The <b>until loop</b> works opposite to the while loop.
    It runs while the condition is false.
  </p>

  <p><b>Example:</b></p>
  <p>
    <pre>
    c = 0<br>
    until c &gt; 15<br>
    &nbsp;&nbsp;puts c<br>
    &nbsp;&nbsp;c += 1<br>
    end
    </pre>
  </p>

  <p><b>Key Points:</b></p>
  <ul>
    <li>Runs while condition is false</li>
  </ul>
  
  <h2>Loop Control Keywords</h2>
  <ul>
    <li><b>break</b> → exits the loop</li>
    <li><b>next</b> → skips the current iteration</li>
    <li><b>redo</b> → repeats the current iteration</li>
  </ul>
  
  <h2>Enumerable Methods</h2>

  <p><b>Array Used:</b></p>
  <p>
    <pre>
      arr = [2, 4, 6, 8, 10, 12]
    </pre>
    </p>

  <h3>select and select!</h3>
  <p>
    select returns a new array with matching elements,
    while select! modifies the original array.
  </p>

  <p>
    <pre>
    arr.select { |num| num &gt; 4 }<br>
    arr.select! { |num| num &gt; 4 }
    </pre>
  </p>
  
  <h3>reject and reject!</h3>
  <p>
    reject removes elements based on condition and returns a new array,
    while reject! permanently modifies the original array.
  </p>

  <p>
    <pre>
    arr.reject { |num| num &gt; 2 }<br>
    arr.reject! { |num| num &gt; 2 }
    </pre>
  </p>
  
  <h3>Destructive vs Non-Destructive Methods</h3>
  <ul>
    <li>select → non-destructive</li>
    <li>select! → destructive</li>
    <li>reject → non-destructive</li>
    <li>reject! → destructive</li>
  </ul>
  
  <h3>any? and all?</h3>

  <p> <pre>
    arr2 = [1, 2, 3, 4, 5]
    arr2.any? { |num| num &gt; 5 }<br>
    arr2.all? { |num| num &gt; 0 }
    </pre>
  </p>

  <p><b>Meaning:</b></p>
  <ul>
    <li><b>any?</b> → at least one condition is true</li>
    <li><b>all?</b> → all conditions are true</li>
  </ul>
  
  <h3>map, collect, each</h3>
  <p>
    map and collect return a new array after transformation,
    while each returns the original array.
  </p>

  <p>
    <pre>
    arr2.map { |num| num ** 2 }<br>
    arr2.collect { |num| num ** 2 }<br>
    arr2.each { |num| num ** 2 }
    </pre>
  </p>
</head>
<body>
</body>
</html>

<hr>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
</head>
<body>

<h1> Day 7 – Ruby OOPS (Inheritance & Method Overriding) </h1>

<h2>Class</h2>
<ul>
    <li>The class name should be written in <strong>CamelCase</strong></li>
    <li>Example: <code>CustomController</code></li>
</ul>

<h2>Methods & Variables</h2>
<ul>
    <li>Method or variable names should be written in <strong>snake_case</strong></li>
    <li>Example: <code>limit_active</code></li>
</ul>

<h2>Inheritance</h2>
<ul>
    <li>Ruby allows only <strong>single-level inheritance</strong></li>
    <li>The <code>super</code> keyword is used to access parent methods and variables</li>
    <li><strong>Method Hierarchy Flow:</strong></li>
    <ul>
        <li>Child</li>
        <li>Base</li>
        <li>Object</li>
        <li>Kernel</li>
        <li>BasicObject</li>
    </ul>
</ul>

<h2>Ancestors</h2>
<ul>
    <li>While fetching a method, Ruby searches from the child class first</li>
    <li>Then it follows the hierarchy flow mentioned above</li>
</ul>

<h2>respond_to?</h2>
<ul>
    <li>Checks whether a method exists or not</li>
    <li>Example:</li>
</ul>

<pre>
"Sample".respond_to?(:uppercase)
</pre>

<ul>
    <li>
        <code>respond_to?</code> returns <strong>true</strong> for inherited built-in methods
        if they are not overridden
    </li>
    <li>These methods come from Base, Object, Kernel, and BasicObject</li>
</ul>

<h2>Note</h2>
<ul>
    <li>The <code>puts</code> method cannot be accessed without overriding because it is private</li>
    <li><code>BasicObject</code> can access private variables, which is a Ruby feature</li>
</ul>

</body>
</html>



















