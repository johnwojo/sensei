# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes) -
      - User has_many Teachers
      - Teacher has_many Teachings

- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
      - Teacher belongs_to User
      - Teaching belongs_to Teacher

- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
      - User has_many Teachings, through => Teachers

- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
      - User Submittable Attribute on Teachers is :name.

- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
      - Teacher => validates_presence of :name
      - Teaching => validates_presence of :title
      - User => validates_uniqueness of :email
      - User => Validates password, case_sensitive true
      - User => validates password length
      - User => Validates presence of email, password and name

- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /teachers/most_common)

- [x] Include signup - Devise
- [x] Include login - Devise
- [x] Include logout - Devise
- [x] Include third party signup/login - Devise/OmniAuth with Google
- [x] Include nested resource show or index -
        - /teachers/1/teachings

- [x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
