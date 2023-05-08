# Short answer

### 1. What is HTML?
HTML is the markup language used by browsers to display web pages.  The markup structure lets you easily define the content of a web page, such as headings, paragraphs, images, links, and other elements.

### 2. What is CSS?
CSS is a pseudo-language used to style the markup of a web page.  It is used to define styles for web pages, including layout, colors, fonts, and other design elements.

### 3. What is the DOM?
The DOM is how browsers represent the HTML and CSS structure of a web page.  It keeps a record of the hierarchy of each HTML element and the CSS styles applied to it.  It can be manipulated by JavaScript in real time to create interactive applications.

### 4. What is memory?
In programming, memory usually refers to the physical amount of RAM your program has access to, but also might refer to the RAM on the whole system, or the disk memory.  When writing an application, care needs to be taken to ensure that the code does not consume more memory than it has access to, or else the application will crash or run slowly.

### 5. What is TCP/IP?
TCP/IP is a standard for transmitting data over the internet.  TCP is a stable way to transfer data and IP is a random address given to a device so the data can be transferred quickly and reliably to the correct location.  When you load a web page or fetch data from an app, it is using TCP/IP to make a connection to a remote server via the IP address and transferring that data to your device.

### 6. In a programming language, what is a class?
Classes allow programmers to create flexible and modular code by using inheritance.  Subclasses or instances of a class are commonly used to create specialized versions of the original class.  This is usually done by overriding or extending inherited properties or methods from the original class.

### 7. In a database, what is a foreign key?
A foreign key is a field added a table that refers to a primary key of a record in another table.  Foreign keys are usually indexed so you can quickly traverse between the relationships of multiple tables.  Foreign key constraints are also usually added to ensure a record with a corresponding primary key cannot be deleted without first being removed.  This ensures consistency in the data and can prevent many unwanted bugs caused by broken relationships.

### 8. What is Model View Controller?
Model View Controller is a design pattern commonly used in applications to cleanly separate concerns while processing and returning a response for a request.  Models focus on data related logic.  Views structure data so clients can easily consume it.  Controllers handle requests and utilize models to compose data and views to structure the returned response.

# Find Prime Number
There were two ways I could interpret this question.  One was to continually take any random number and check to see if it is prime, then return the largest.  The other was to start at 0 and incrementally increase the number to find the largest in the time given.  I opted to go for the second because it seemed odd to just pick arbitrarily large numbers and check if they are prime.  If you were looking for the first method, let me know and I can write a similar function for it.

The script can be found in the `1_find_prime_number` directory.

Run the find_prime_number script with the command below.  The last argument is an integer for the number of seconds the script should run.  You can change it to any integer, but I used 5 in the example below.
```
ruby 1_find_prime_number/find_prime_number.rb 5
```

# Class Design
The classes can be found in the `2_class_design` directory.

Run `ruby 2_class_design/eat.rb` to view the functionality.

# Database and Model Design
The migration files are under `3_database_and_model_design/migrate` and the models are under `3_database_and_model_design/models`.

Find all clients for a particular provider:
```ruby
provider.clients
```

Find all providers for a particular client:
```ruby
client.providers
```

Find all of a particular client's journal entries, sorted by date posted:
```ruby
client.journal_entries.order('journal_entries.created_at' => :asc)
```

Find all of the journal entries of all of the clients of a particular provider, sorted by date posted:
```ruby
JournalEntry.joins(client: :client_providers)
  .where(client: { client_providers: { provider_id: provider.id } })
  .order('journal_entries.created_at' => :asc)
```
