# Rails coding challenge
We have created a template for an architecture that goes beyond what Rails offers out of the box.

We are making use of some concepts like Services, Serializers, and many modules/classes that will have logic to be reused on many places, aiming to don’t repeat ourselves as the project evolves.

But our solution is incomplete: we have only made this available for a single resource (User), and for two operations (index and create). Also, the error handling is not very smart, it could be nice if we could improve it somehow (we are always returning the same error code)

## What needs to be done
  1. Improve the existing UsersController to add the missing REST methods
    - For GET /users/:id (show method) we also want to return the created_at date time.
  1. Add one more resource: Loan, implement it’s CRUD using the same architecture
    - Create some relationship between User and Loan
  1. Improve/write tests
    - We only did a simple test for the model and none for the request itself. Can you improve this for us? Fell free to add and configure any library

## How to run
Having the typical rails dependencies installed you simply need to clone the project and run

> rails s

You don’t need to run the migrations or anything else as we have a sqlite database inside the repo itself

You should be able to use the APIs through Postman (POST to localhost:3000/users and GET to localhost:3000/users). The create endpoint needs to receive an JSON object with a name property so that it get’s created (you can import the postman collection on the root of the project to see how it’s done)

## Some tips
  - First of all you should make a “reverse engineer” to understand what we have done so far, so that you understand what each class is doing, which modules they are adding, how everything is connected. You are free to reuse these patterns, improve, change them, or totally ignore them
  - Things important to understand:
    - ApiRenderers module
      - how this returns the results and how this is related to displaying the errors that may happen
    - CrudServices module and the effective crud_services implementation
      - tip: one of them is the abstract class and the other is the effective implementation, but they work together
    - Serializers