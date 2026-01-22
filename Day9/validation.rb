Form Validations
Validations are used to ensure that the data entering the database is correct and valid before it gets stored.

Importance of Validations
1.Prevent invalid data from being stored
2.Improve user experience by showing helpful error messages
3.Protect database integrity

* Where Validations Are Written
Validations are written inside the model, not in controllers or views.

* Ways to Write Validations
Validations can be written in two ways:
1.Inside view files using ERB tags (to display error messages)
2.Inside model files (recommended and standard practice)

* Predefined Validation Methods
Rails provides a set of pre-written validation methods, such as:
1.presence
2.uniqueness
3.numericity
4.length

There are a set of pre-written validation methods available in Rails.
Some examples are: presence, uniqueness, numericity, and length.

* To use these pre-written validation methods, we use:
validates :column_name, validation_method: true
. validates is plural
. It is used for built-in validations

*A user can also develop custom validation methods inside the model.
To use custom validation methods, we use:
validate :method_name
.validate is singular
.It is used for custom validations

*Custom error messages are added using the errors.add method.
These errors are then displayed on the front end if the validation is not satisfied.
errors.add(:column_name, "error message")