# dextercare

A Todo Flutter mobile application for nurses.

## Background information

Nurses in a nursing home have to care for their residents.
Every day, there will be a fixed amount of nurses working at any given time. They work in shifts,
the same nurse will not always work at the same shift. The most easy shift separation is:

- morning shift (e.g. 6:30 am - 2:00 pm)
- evening shift ( 2:00pm - 9:30 pm)
- night shift (9:30 pm - 6:30 am)

For most residents, the nursing home will have a plan of actions that is required for a resident.
Examples for such plans of action can be:

- Mr. Müller needs to get an injection at 6pm
- We need to confirm that Mrs. Schneider drinks at least 700 ml liquids per day
- Mr. Meyer is not allowed to drink more than 1000 ml per day
- Mr. Müller needs to be washed and have his breakfast finished until 11 am
- Someone needs to call the doctor of Mrs. Schneider today

These plans of actions can also be created by nurses themselves. They write this either for their
own shift or for the shift tomorrow/somewhen in the future.

It is hard for nurses to keep all these tasks in mind. A lot of times, tasks are forgotten. Therefore,
we want you to create a todo-list for nurses, where they can see all planned actions that they
need to do on that day. They should also be able to create new todo-items, either for their own
shift or for some future shift. If they could not finish a todo item in their shift, the item should be
automatically passed on to the next shift or they should be able to choose to pass the item to the
next shift (you can choose which alternative you want to implement).


## Breakdown of tasks & milestones

#### Project Setup
    - [x] Create Flutter project
    - [x] Add project assets (images, icons, fonts, etc.)
    - [x] Add project dependencies (packages)
    - [x] Setup project design system & configuration (colors, fonts, styles, etc.)
    - [x] Configure project structure using Clean Architecture (folders, files, etc.)
    - [x] Setup project navigation (routes, navigation service, etc.)
    - [x] Setup project state management (provider, bloc, etc.)

#### Design & UI
    - Design Screens:
        - [ ] Mobile - Authentication Screen
        - [ ] Mobile - Tasks List Screen
        - [ ] Mobile - Create Task Screen
        - [ ] Mobile - Edit Invoice
    - Design UI Components:
        - [ ] Button
        - [ ] Text Form Field
        - [ ] Dropdown
        - [ ] Checkbo 
        - [ ] Dialog
        - [ ] Card

#### Database Setup & Structure
    - [x] Setup Firebase project
    - [x] Setup Firebase authentication
    - [x] Setup Firebase Firestore
    - [x] Create Users collection & populate with test data
    - [x] Create Tasks collection & populate with test data
    - [x] Create Shifts collection & populate with test data

#### Business Logic
    - [ ] Authentication
    - [ ] Get Tasks
    - [ ] Create Task
    - [ ] Edit Task
    - [ ] Mark Task as Complete

#### Expected Behaviour
    - [ ] User can login
    - [ ] The todo list should show all tasks for this specific nurse for the whole shift
    - [ ] The nurse should be able to mark tasks as "done“
    - [ ] The nurse should be able to create new tasks for their own shift or for other shifts
    - [ ] If the nurse did not finish all tasks at the end of the shift, there should be a way to pass the task to the next shift:
        - [ ] manually by the nurse
        - [ ] automatically by the system
    - [ ] The todo-list should actually work. It should theoretically work for any user, not only the "hardcoded“ example user.

#### Testing
    - [ ] Unit Testing
    - [ ] Integration Testing

#### Documentation
    - [ ] Done

#### Refactor & Clean up
    - [ ] Done
