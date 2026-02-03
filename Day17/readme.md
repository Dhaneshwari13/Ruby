<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>ActiveRecord Methods</title>
  
</head>
<body>

<div class="container">

  <h1>ActiveRecord Methods</h1>
  <p>
    The following are <strong>inbuilt ActiveRecord query methods</strong>
    that are widely used in real-time Ruby on Rails applications.
  </p>

  <hr>

  <h2>1. New | Create</h2>

  <h3>🔹 new</h3>
  <p>
    The <code>new</code> method creates an object of the model but does
    <strong>not save</strong> it to the database until <code>save</code> is called.
  </p>

  <pre><code>
c = Customer.new(
  name: "Demo",
  email: "demo@gmail.com",
  mob: 123458765,
  dob: "11-04-2024"
)
  </code></pre>

  <pre><code>
# id is nil → record not saved
<Customer id: nil, name: "Demo", created_at: nil>
  </code></pre>

  <h4>Saving explicitly</h4>

  <pre><code>
c.save
  </code></pre>

  <pre><code>
# Record is now saved
<Customer id: 21, name: "Demo", created_at: "2026-02-03">
  </code></pre>

  <div class="note">
    <strong>Key Point:</strong> <code>new</code> does not hit the database until <code>save</code> is executed.
  </div>

  <hr>

  <h3>🔹 create</h3>
  <p>
    The <code>create</code> method creates and saves the record in a single step.
    No need to call <code>save</code> explicitly.
  </p>

  <pre><code>
c = Customer.create(
  name: "Demo1",
  email: "demo1@gmail.com",
  mob: 123458765,
  dob: "11-04-2024"
)
  </code></pre>

  <pre><code>
<Customer id: 22, name: "Demo1">
  </code></pre>

  <div class="note">
    <strong>Key Point:</strong> <code>create</code> automatically persists the record.
  </div>

  <hr>

  <h2>2. Delete | Destroy</h2>

  <h3>🔹 delete</h3>
  <p>
    The <code>delete</code> method removes the record directly from the database.
    It <strong>does not run callbacks</strong>.
  </p>

  <pre><code>
Customer.delete(21)
  </code></pre>

  <pre><code>
DELETE FROM "customers" WHERE "id" = 21
  </code></pre>

  <hr>

  <h3>🔹 destroy</h3>
  <p>
    The <code>destroy</code> method deletes the record and also
    removes all <strong>associated / referenced records</strong>.
    Callbacks are executed.
  </p>

  <pre><code>
Customer.destroy(22)
  </code></pre>

  <pre><code>
 Deletes customer and related records (attachments, rich text, etc.)
  </code></pre>

  <div class="note">
    <strong>Difference:</strong>
    <ul>
      <li><code>delete</code> → Fast, no callbacks</li>
      <li><code>destroy</code> → Safe, runs callbacks & associations</li>
    </ul>
  </div>

  <hr>

  <h2>3. Insert One Data | Insert Multiple Data</h2>

  <h3>🔹 Insert One Record</h3>

  <pre><code>
Customer.create(
  name: "Demo1",
  email: "demo1@gmail.com",
  mob: 123458765,
  dob: "11-04-2024"
)
  </code></pre>

  <h3>🔹 Insert Multiple Records</h3>

  <pre><code>
Customer.create(
  { name: "Demo1", email: "demo1@gmail.com", mob: 123458765, dob: "11-04-2024" },
  { name: "Demo",  email: "demo@gmail.com",  mob: 123458765, dob: "11-04-2024" }
)
  </code></pre>

  <hr>

  <h2>4. find | find_by</h2>

  <h3>🔹 find</h3>
  <p>
    The <code>find</code> method fetches the record by ID.
    If the record does not exist, it throws an error.
  </p>

  <pre><code>
@customers = Customer.find(111)
  </code></pre>

  <pre><code>
ActiveRecord::RecordNotFound
Couldn't find Customer with 'id'=111
  </code></pre>

  <hr>

  <h3>🔹 find_by</h3>
  <p>
    The <code>find_by</code> method returns <code>nil</code> if the record is not found.
    It does not throw an exception.
  </p>

  <pre><code>
@customers = Customer.find_by(id: 111)
  </code></pre>

  <pre><code>
# returns nil
# accessing attributes causes NoMethodError
  </code></pre>

  <div class="note">
    <strong>Tip:</strong> Use <code>find_by</code> when you want to avoid exceptions.
  </div>

  <hr>

  <h2>5. where</h2>
  <p>
    The <code>where</code> method fetches an array of records
    that match the given condition.
  </p>

  <ul>
    <li>If records exist → returns array of objects</li>
    <li>If no records → returns empty array</li>
    <li>Does not throw error</li>
  </ul>

  <pre><code>
Customer.where(name: "Demo")
  </code></pre>

  <pre><code>
# []
# or [#<Customer ...>]
  </code></pre>

  <div class="note">
    <strong>Key Point:</strong> <code>where</code> always returns a collection.
  </div>

</div>

</body>
</html>
