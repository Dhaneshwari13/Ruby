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

<hr>



<h1>Day-8</h1>
<!DOCTYPE html>
<html>
<head>
<h2>Conditional Statements</h2>
<ul>
  <li>There are used to perform the operations based on the conditions .</li>
  <li>There are mainly 3 types</li>
</ul>

<h2>If Else:</h2>
<p>  it check the condtion and enters if condition satisfies .</p>
 <p><b>Example:</b></p>
  <p>
    <pre>
    stock = -20
    is_availabe = false
    if stock > 0
    is_availabe = true
    else 
      puts "Item not availabe ."
    end
    </pre>
  </p>


  <h2>Else If:</h2>
<p>Here two or more conditions can be checked.</p>
<p><b>Example:</b></p>

<pre>
 price = 350
   discount = 0
     if price > 100
      discount = 10
     elsif price > 200
       discount = 20
     elsif price > 300
       discount = 30
     elsif present > 400
       discount = 40  
     else
       discount = 5
     end
      
    puts discount
</pre>

<h2>Ternary Operator:</h2>
<p>It is similar to if–else but written in a single line.</p>
<p><b>Example:</b></p>

<pre>
is_active = false
    puts is_active ? "item present" : "not present"
</pre>

 <h2>Unless:</h2>
<p>
  It is opposite to <b>if</b>.  
  If the condition is <b>true</b>, it goes to the <b>else</b> part.
</p>

<p><b>Example:</b></p>

<pre>
stock = 15
 unless stock < 0
   puts "Stock availabe"
    else
     puts "Stock "
</pre>

<h2>Case:</h2>
<p>
  It is used to perform a specific operation by switching to the
  corresponding condition.
</p>

<p><b>Example:</b></p>

<pre>
price = 350
discount = 0
 case  
when price >= 100  &&  price < 200
    discount = 10
 when  price>= 200 &&  price < 300
   discount = 20 
 when price >= 300 &&  price < 400
   discount = 30
 when price >= 400 &&  price < 500
   discount = 40
  else
    discount = 5
 end
</pre>

<h2>Note:</h2>
<ul>
    <li>
        When logical operators (<, >, &&, ||) are used without any variable
        reference, <b>switch(true)</b> is used.
    </li>
    <li>
        When ranges or flags are used, JavaScript does not support ranges
        directly like Ruby, so conditions are written explicitly.
    </li>
</ul>
          
<p><b>Example:</b></p>

<pre>
  case  price
  when 100..200
    discount = 10
   when  200..300
    discount = 20 
  when 300..400
    discount = 30
  when 400..500
    discount = 40
  else
     discount = 5
  end
                                            
  puts discount
</pre>

<h2>Access Modifier:</h2>
<p>There are 3 types of access modifiers:</p>

<ul>
    <li>
        <b>Public:</b>  
        These classes or methods can be accessed anywhere.
    </li>
    <li>
        <b>Private:</b>  
        These methods cannot be accessed outside the class.
    </li>
    <li>
        <b>Protected:</b>  
        These methods can be accessed inside the class or its subclasses.
    </li>
</ul>

<h2>Note:</h2>
<ul>
    <li>
        To access <b>private methods</b>, they must be called inside a
        public method. Then they can be accessed indirectly.
    </li>
    <li>
        To access <b>protected methods</b>, they can be called inside
        child (sub) class public methods.
    </li>
</ul>
</body>
</html>

<hr>

<h1>Day-9</h1>
<!DOCTYPE html>
<html>
<head>
<h3>Validations</h3>

<ul>
  <li>The validations can be done 2 ways:
    <ul>
      <li>From the frontend in HTML code</li>
      <li>From the methods in the class</li>
    </ul>
  </li>

  <li>There are mainly 2 types:
    <ol>
      <li>Inbuilt validations</li>
      <li>Custom validations</li>
    </ol>
  </li>
</ul>


<h3>Inbuilt Validations :</h3>

<p>
Rails has inbuilt validation methods which can be accessed directly inside
the models to insert valid data.
</p>

Example :
  <pre>
validates :email, presence: true
validates :email, uniqueness: true
validates :name, format: { with: /\A[a-zA-Z]+\z/,
          message: "Only letters and numbers are allowed" }
</pre>


<h3>Custom Validations :</h3>

<p>
We can create methods as per our requirement and call them whenever required.
</p>

Example :
<pre>
def check_price
  if stock == 0 && price > 0
    # errors.add(:stock, "Stock is not available.")
    errors.add "Stock is not available."
  end
end
</pre>

<p> validate:check_price ( To call this method ) </p>


<h3>Note :</h3>

<p>
 During the calling of inbuilt validation methods, we use `validates`.
</p>

<p>
 During the calling of custom validation functions, we use `validate`.
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

<h1>Day 10 – Rails Scopes</h1>

<h2>What is a Scope?</h2>
<ul>
    <li>A scope is a reusable query defined inside a model</li>
    <li>It is mainly used to handle repetitive database queries</li>
    <li>Scopes return records from the database table</li>
</ul>

<h2>Methods vs Scopes</h2>
<ul>
    <li>
        <strong>Methods</strong>
        <ul>
            <li>Used for reusable logic and method chaining</li>
            <li>Can return any type of value</li>
        </ul>
    </li>
    <li>
        <strong>Scopes</strong>
        <ul>
            <li>Used to perform a single database operation</li>
            <li>Always return an <code>ActiveRecord::Relation</code></li>
        </ul>
    </li>
</ul>

<h2>Using Scopes with Queries</h2>
<ul>
    <li>
        <strong>Rails Query</strong>
        <pre>
scope :out_of_stock, -> { where("stock <= ?", 0) }
        </pre>
    </li>
    <li>
        <strong>SQL Query</strong>
        <pre>
scope :test_scope, -> { query("Write the required query") }
        </pre>
    </li>
</ul>

<h2>Types of Scopes</h2>
<ul>
    <li>
        <strong>Non-Parameterized Scope</strong>
        <pre>
scope :out_of_stock, -> { where("stock <= ?", 0) }
        </pre>
    </li>
    <li>
        <strong>Parameterized Scope</strong>
        <pre>
scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }
        </pre>
    </li>
</ul>

<h2>Assignment</h2>
<ul>
    <li>The code for this assignment is uploaded in the <strong>Day10</strong> folder</li>
</ul>

<h2>Important Notes</h2>
<ul>
    <li>
        <code>&lt;% %&gt;</code> is used to embed Ruby code inside HTML
    </li>
    <li>
        <code>&lt;%= %&gt;</code> is used to embed Ruby code inside HTML and display the output on the web page
    </li>
</ul>

</body>
</html>

<hr>

<h1>Day-12</h1>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">  
</head>
<body>

<h2>Rails Components</h2>

<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Feature</th>
      <th>Description</th>
      <th>Version</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Active Model</td>
      <td>Model layer support</td>
      <td>Provides validations, callbacks, and naming without database connection</td>
      <td>Rails 3.0</td>
    </tr>
    <tr>
      <td>Active Record</td>
      <td>Object Relational Mapping</td>
      <td>Connects models with database tables and handles database operations</td>
      <td>Rails 1.0</td>
    </tr>
    <tr>
      <td>Action View</td>
      <td>View rendering</td>
      <td>Displays HTML pages using templates like ERB</td>
      <td>Rails 1.0</td>
    </tr>
    <tr>
      <td>Action Controller</td>
      <td>Request and response control</td>
      <td>Handles browser requests, responses, and connects models with views</td>
      <td>Rails 1.0</td>
    </tr>
    <tr>
      <td>Active Job</td>
      <td>Background jobs</td>
      <td>Manages background tasks and job queues</td>
      <td>Rails 4.2</td>
    </tr>
    <tr>
      <td>Active Support</td>
      <td>Utility helpers</td>
      <td>Provides Ruby extensions and helper methods</td>
      <td>Rails 1.0</td>
    </tr>
    <tr>
      <td>Action Mailer</td>
      <td>Email sending</td>
      <td>Used to send emails from the application</td>
      <td>Rails 1.0</td>
    </tr>
    <tr>
      <td>Action Mailbox</td>
      <td>Incoming email handling</td>
      <td>Receives and processes incoming emails</td>
      <td>Rails 6.0</td>
    </tr>
    <tr>
      <td>Action Cable</td>
      <td>Real-time features</td>
      <td>Supports WebSocket connections like chat</td>
      <td>Rails 5.0</td>
    </tr>
    <tr>
      <td>Active Storage</td>
      <td>File uploads</td>
      <td>Manages file uploads like images and documents</td>
      <td>Rails 5.2</td>
    </tr>
    <tr>
      <td>Action Text</td>
      <td>Rich text content</td>
      <td>Handles rich text editor and formatted content</td>
      <td>Rails 6.0</td>
    </tr>
    <tr>
      <td>Action Dispatch</td>
      <td>Routing and middleware</td>
      <td>Routes requests and manages middleware</td>
      <td>Rails 1.0</td>
    </tr>
  </tbody>
</table>

<h2>ActivePack</h2>

<div class="box">
  <p>
    This component is used to provide views by generating controllers.
  </p>

  <strong>Example:</strong>
  <ul>
    <li>
      Command:
      <code>rails g controller admin</code>
    </li>
    <li>
      This generates the <strong>Admin controller</strong> and also the
      <strong>Admin views</strong>.
    </li>
  </ul>
</div>

<h2>Add a New Column to Product</h2>

<div class="box">
  <ul>
    <li>
      Generate migration:
      <code>rails g migration AddMobToProduct mob:bigint</code>
    </li>
    <li>
      Run migration:
      <code>rails db:migrate</code>
    </li>
    <li>
      This will add a new column to the existing table.
    </li>
  </ul>

  <strong>Note:</strong>
  <ul>
    <li>
      To remove a column:
      <code>rails g migration RemoveMobFromCustomers mob:bigint</code>
    </li>
  </ul>
</div>

<h2>Routes Configuration</h2>

<div class="box">
  <ol>
    <li>
      To skip routes:
      <br>
      <code>resources :products, except: [:show]</code>
    </li>
    <li>
      To use only specific routes:
      <br>
      <code>resources :products, only: [:edit, :destroy]</code>
    </li>
  </ol>
</div>


</body>
</html>

<hr>

<h1> Day-13 </h1>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
 
</head>
<body>

  <h2>Day13 - Adding a Column to a Table in Rails Application</h2>

  <p>To add a new column to an existing table, use the <code>rails generate migration</code> command:</p>

  <pre>
rails generate migration AddColumnColnameToTablename colname:datatype
  </pre>

  <p>Example: To add a <strong>phone_number</strong> column to the <strong>customers</strong> table:</p>

  <pre>
rails generate migration AddColumnPhone_numberToCustomer phone_number:integer
  </pre>

  <p>After generating the migration, run:</p>

  <pre>
rails db:migrate
  </pre>

  <p>This will add a migration file to your <code>db/migrate</code> folder, for example:</p>

  <pre>
db/migrate/20260128044536_add_column_phone_to_customer.rb
  </pre>

  <p>After migration, the database table <strong>customers</strong> will have the new column <strong>phone_number</strong>.</p>


  <h3>2. Commands to Install Action Text:</h3>
  <pre>
rails action_text:install
rails db:migrate
  </pre>

  <h3>Tables Added to <code>schema.rb</code>:</h3>
  <ul>
    <li>action_text_rich_texts</li>
    <li>active_storage_attachments</li>
    <li>active_storage_blobs</li>
    <li>active_storage_variant_records</li>
  </ul>

  <h3>Migration Files Created in <code>db/migrate</code>:</h3>
  <ul>
    <li>20260128045359_create_active_storage_tables.active_storage.rb</li>
    <li>20260128045360_create_action_text_tables.action_text.rb</li>
  </ul>

  <h3>Files/Folders Added:</h3>
  <ul>
    <li>app/assets/stylesheets/actiontext.css</li>
    <li>app/views/active_storage/blobs/_blob.html.erb</li>
    <li>app/views/layouts/action_text/contents/_content.html.erb</li>
    <li>test/fixtures/action_text/rich_texts.yml</li>
  </ul>

  <h3>Git Commands:</h3>
  <ul>
    <li>Check modified files: <code>git status</code></li>
    <li>Check changes in a specific file: <code>git diff &lt;file_path&gt;</code></li>
  </ul>

  <h3>Connections in Action Text Tables:</h3>
  <ul>
    <li><code>active_storage_attachments</code> references <code>active_storage_blobs</code> via <code>blob_id</code></li>
    <li><code>active_storage_variant_records</code> references <code>active_storage_blobs</code> via <code>blob_id</code></li>
  </ul>

  
  <h2>3. Array Operations in Ruby</h2>

  <p>Example:</p>

  <pre>
a1 = [1, 2, 3, 4, 5, 6]
a2 = [1, 3, 5]

# Intersection
a3 = a1 & a2   # => [1, 3, 5]

# Union
a4 = a1 | a2   # => [1, 2, 3, 4, 5, 6]

# Print results
print a3
puts
print a4
  </pre>

  <h3>Output:</h3>
  <pre>
[1, 3, 5]
[1, 2, 3, 4, 5, 6]
  </pre>

  <h3>Explanation:</h3>
  <ul>
    <li><code>&</code> operator returns the <strong>intersection</strong> of two arrays (common elements).</li>
    <li><code>|</code> operator returns the <strong>union</strong> of two arrays (all unique elements combined).</li>
    <li>Duplicates are removed automatically in both operations.</li>
  </ul>

   <h2>4. Debugging with <code>params.inspect</code></h2>

  <p><strong>Purpose:</strong></p>
  <ul>
    <li>Used to inspect parameters coming from forms or requests.</li>
    <li>Helps in debugging to see exactly what parameters are being sent.</li>
    <li>Stops execution and shows all permitted parameters on the error page when using <code>raise</code>.</li>
  </ul>

<h3>Example in a Controller:</h3>

  <pre>
def create
  raise customer_params.inspect

  @customer = Customer.new(customer_params)

  respond_to do |format|
    if @customer.save
      format.html { redirect_to @customer, notice: "Customer was successfully created." }
      format.json { render :show, status: :created, location: @customer }
    else
      format.html { render :new, status: :unprocessable_entity }
      format.json { render json: @customer.errors, status: :unprocessable_entity }
    end
  end
end
  </pre>

  <h3>Example Output Error:</h3>

  <pre>
#&lt;ActionController::Parameters 
 {"name"=>"jhon", "email"=>"1@gmail.com", "about_me"=>"&lt;div&gt;jhon is a english name&lt;/div&gt;"} permitted: true&gt;
  </pre>
</body>
</html>

<hr>

<h1>Day14-Active storage</h1>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">

</head>
<body>

  <h2>Active Storage</h2>

  <p>
    Active Storage is used to handle file uploads without storing file data
    directly in the main application tables.
  </p>

  <p>
    It creates separate tables
    (<strong>active_storage_blobs</strong> and
    <strong>active_storage_attachments</strong>)
    and connects them using primary and foreign keys.
  </p>

  <p>
    It is mainly used to store:
  </p>

  <ul>
    <li>Images</li>
    <li>Files</li>
    <li>PDFs</li>
    <li>Videos and other documents</li>
  </ul>

  <p>
    To use Active Storage, we need to install and configure it in the Rails application.
  </p>

  <p>
    The related code and assignment are updated in the
    <strong>Day14 README</strong>.
  </p>

  <h2>Storage</h2>

  <p>Storage can be configured in two ways:</p>

  <ul>
    <li>Local storage</li>
    <li>Cloud storage</li>
  </ul>

  <p>For cloud storage, we need to install the specific gem:</p>

  <ul>
    <li>AWS S3 → <strong>aws-sdk-s3</strong> gem</li>
    <li>Google Cloud Storage (GCS) → <strong>google-cloud-storage</strong> gem</li>
  </ul>

  <p>Steps to configure cloud storage:</p>

  <ol>
    <li>Install Active Storage</li>
    <li>Run <code>rails db:migrate</code></li>
    <li>Configure <code>storage.yml</code> (define which storage service to use)</li>
  </ol>

  <p>
    In the environment files
    (<code>development.rb</code>, <code>production.rb</code>, etc.),
    we specify which storage from <code>storage.yml</code> should be used.
  </p>

  <p>
    Different environments can use different storage services.
  </p>

<h2>Order to Write Code in Model</h2>

  <p>Recommended order for better readability and maintainability:</p>

  <ol>
    <li>Action Text related code</li>
    <li>Active Storage attachments</li>
    <li>Scopes</li>
    <li>Validations</li>
    <li>Associations</li>
  </ol>

  <p>
    These steps are not compulsory, but following this order helps maintain
    a clean structure and makes the project easier to understand and analyze.
  </p>

<h2>Styling</h2>

<p>We can apply styling in two ways:</p>

<ol>
  <li>
    <strong>Using HTML and CSS</strong>
    <ul>
      <li>Directly apply styles using HTML tags and CSS classes.</li>
    </ul>
  </li>

  <li>
    <strong>Using Gems</strong>
    <p>Gems like:</p>
    <ul>
      <li><code>image_processing</code></li>
      <li><code>carrierwave</code></li>
    </ul>
    <p>
      These gems allow us to apply styles and transformations similar to validations
      (e.g., resizing images, formatting uploads).
    </p>
  </li>
</ol>


</body>
</html>

<hr>

# Day 15 – Action Mailer

Action Mailer is used to **send emails** in Rails applications.
We **do not need to install** Action Mailer separately. It is **included by default** when a Rails application is created.

---

## Step 1: Generate Mailer

```bash
rails generate mailer CustomerMailer
```

This command creates the following files:

* `app/mailers/customer_mailer.rb`
* `app/views/customer_mailer/`
* `test/mailers/customer_mailer_test.rb`
* `test/mailers/previews/customer_mailer_preview.rb`

---

## Step 2: application.rb Changes

```ruby
require "action_mailer/railtie"
```

This file loads Action Mailer functionality. In most Rails apps, it is already included via `rails/all`.

---

## Step 3: Configure Email Delivery (development.rb)

Edit `config/environments/development.rb`:

```ruby
config.action_mailer.perform_deliveries = true
config.action_mailer.delivery_method = :letter_opener
```

* `letter_opener` is used to **mock email sending** in development
* Emails will open in browser instead of being sent
* In production, delivery method is usually **SMTP**

---

## Step 4: Customer Mailer Method

`app/mailers/customer_mailer.rb`

```ruby
class CustomerMailer < ApplicationMailer
  def welcome_email
    @customer = params[:customer]
    mail(to: @customer.email, subject: "Welcome !!")
  end
end
```

 `params` contains all the data passed while calling the mailer.

---

## Step 5: Mailer View

Create the file:

```
app/views/customer_mailer/welcome_email.html.erb
```

Add HTML content for the email.
---

## Step 6: Trigger Email from Controller

Send mail **after saving data**:

```ruby
CustomerMailer.with(customer: @customer).welcome_email.deliver
```

This line triggers the email.

---

## Step 7: Add Gems

In `Gemfile`:

```ruby
gem "letter_opener", group: :development
gem "letter_opener_web", group: :development
```

Run:

```bash
bundle install
```

---

## Step 8: Configure Routes

`config/routes.rb`

```ruby
if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
end
```

Visit in browser:

```
http://localhost:3000/letter_opener
```

---

## Product Mailer Example

Generate mailer:

```bash
rails generate mailer ProductMailer
```

Files created:

* `app/mailers/product_mailer.rb`
* `app/views/product_mailer/`
* `test/mailers/previews/product_mailer_preview.rb`
* `test/mailers/product_mailer_test.rb`

### Product Mailer Code

```ruby
class ProductMailer < ApplicationMailer
  def welcome_email
    @product = params[:product]
    mail(to: @product.email, subject: "Welcome to Rails Mailer Concept")
  end
end
```

---

## Calling Mailer from Controller

```ruby
def create
  @product = Product.new(product_params)

  if @product.save
    ProductMailer.with(product: @product).welcome_email.deliver
    redirect_to @product, notice: "Product was successfully created."
  else
    render :new, status: :unprocessable_entity
  end
end
```

---

## Mailer View for Product

Create:

```
app/views/product_mailer/welcome_email.html.erb
```

 Method name and view name must match:

```
welcome_email → welcome_email.html.erb
```

---

## Key Points 

* Action Mailer is built into Rails
* Do not delete `application.rb` or `boot.rb`
* `letter_opener` is used for development email preview
* Mailer method name must match view file name
* Emails should be triggered **after saving data**
* `params` contains all passed request data



<hr>

# Day 16 – Action Mailbox 
---

## 1. Install Action Mailbox
```bash
rails action_mailbox:install
```

**Generated files:**

* `app/mailboxes/application_mailbox.rb`
* `db/migrate/20260202042002_create_action_mailbox_tables.action_mailbox.rb`

---

## 2. Database Migration
```bash
rails db:migrate
```

**Table created:**

* `action_mailbox_inbound_emails`

Used to store all incoming emails.

---
## 3. Production Configuration

In `config/environments/production.rb`:

```ruby
config.action_mailbox.ingress = :any_ingress_server
```

> Default ingress is `:relay`.

---
## 4. Application Mailbox

```ruby
class ApplicationMailbox < ActionMailbox::Base
  routing all: :support
end
```

All incoming emails are routed to `SupportMailbox`.

---
## 5. Generate Support Mailbox

```bash
rails generate mailbox support
```

**Generated files:**

* `app/mailboxes/support_mailbox.rb`
* `test/mailboxes/support_mailbox_test.rb`

---

## 6. Support Mailbox Logic

```ruby
class SupportMailbox < ApplicationMailbox
  def process
    # mail.decode  -> email body
    # mail.from    -> sender
    # mail.subject -> subject
  end
end
```

`process` method handles incoming email data.

---

## 7. View Incoming Emails (Development)

```bash
rails s
```
Open:

```
http://127.0.0.1:3000/rails/conductor/action_mailbox/inbound_emails
```

will get:
* View inbound emails
* Create emails using form or source
* Check message ID and status
---













