Rails Sandwich Platter Architecture

Models:
- a User has many Sandwiches; Sandwiches belong to Users
- a Sandwich has many ingredients
- a User has many Ingredients through Sandwiches
- Ingredients belong to Sandwiches through Users

- a User has many 