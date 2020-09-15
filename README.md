# FRIDGE

FRIDGE is an inventory management application built for restaurants to keep track of the quantities of fridge and pantry items along with their buying price from suppliers. Users can add items, see a general list of all their items, see the quantity and price of each item, update the item name/quantity/price, and delete the item.

This React app was made by Eugene, Fiona and Monika in Team overReacting (get it?) with given specs and templates as the third project in our Software Engineering Immersive program at General Assembly!

## Important Links

- [Deployed Client](https://eugene-damiani.github.io/fridge-client/)
- [Client Repo](hhttps://github.com/Eugene-Damiani/fridge-client)
- [Deployed API](https://tranquil-crag-61634.herokuapp.com)
- [API Repo](https://github.com/Eugene-Damiani/fridge-api)

## Planning Story

Our first step was choosing a prompt and platform for project management. We went with the inventory management prompt, and after introducing ourselves to Jira, we ultimately went with Asana to keep a checklist of steps and requirements. The morning stand-ups included planning for the day and giving updates on progress. The stand-ups went over 15 minutes and it's mostly because it would seamlessly transition into reviewing, implementing, and debugging each other's work from the night before. We'd also touch base again at the end of the day to discuss the day's progress, update Asana accordingly, the "glows and grows" of the day, and talk about what the team or each member will try to work on that night.

There weren't specific roles for each team member and tasks/features weren't all divided up and assigned at the very beginning. With a team of only 3 people, we often co-authored parts of the code as a group with one person sharing their screen on Zoom and the rest providing suggestions/confirmations and extra sets of debugging and spell-checking eyes. If there is an error in our code or a feature/function that isn't working/completed by 4:40 PM, we worked on it separately for the evening to see if any one of us can find a solution.

We followed the suggested schedule for this project and completed the back end successfully before starting the frontend. With many required features depending on each other, we either waited to start on the dependent features, or started it (and sometimes even completed it) and tested and made adjustments after.

### Technologies Used

- Javascript
- jQuery
- Mongoose
- Mongodb
- Express

### Unsolved Problems

In future iterations, we'd like to ...

- add units of measurement to quantity so the user can be more specific. For example, 2 milks and 10 apples are ambiguous, so specifying 2 *gallons* of milk and 10 *lbs* of apples provides a better understanding of the inventory.
- add units to price. Is it $2 per egg or per dozen?
- have each item and all of its information and edit/remove functions in a table.
- add a search function that allows the user to find specific items via search bar.
- add a sort and filter function so the user can organize and customize their view of the inventory (ie. alphabetical order, lowest-highest in quantity, category of fruits/vegetables/dairy, etc.)

### Catalog of Routes

Verb         |	URI Pattern
------------ | -------------
GET | /items
GET | /items/:id
POST | /item-create
PATCH | /items/:id/edit
DELETE | /items/:id

## Images

#### ERD:
[Fridge ERD](https://i.imgur.com/VZsODo8.png)
