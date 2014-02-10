# Instructure Optimization Problem

This problem asked us to consider three data models.
The submission model is a join table for both students and assignments.
From here I assume I have access to a database with this information.
To create this senerio, I made a quick rails app.

In order to optimize the speed and efficiency of this problem, we can set up associations between them.
By setting up associations, we are able to look up information without having to iterate through each model everytime looking for/ comparing specific attributes.

If this problem were more complex, optimization would require limiting th controllers' responsibilities and making sure to build out class methods within the model. There are further comments throughout the code to get a better idea of the thought process I had as the app was created.

### Setting Up the Application

Clone this repository, checkout a feature branch, then get the application running as follows:

```text
$ bundle install
$ rake db:create && rake db:migrate && rake db:seed
```

The rake commands could take a minute.  Once it's done run `rails server` and visit [http://localhost:3000](http://localhost:3000).

The 'view data' button allows you to view the desired data output.

Benchmark is currently running as a mini time test, view your server to verify.

The development environment is currently set up for this app as is the test; however, this is definitely NOT fully tested nor is it even close to be ready for production. This app is to demonstrate optimization of displaying the requested data.

#### Future Features Coming Soon:

- RSpec Testing
- More validations data
- Anything else that is requested!
