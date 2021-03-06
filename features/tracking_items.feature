Feature: The system tracks items as they go through different states
  Scenario: Check if ItemCreated event is published
            Given uid 1 and name "item_1"
            When "ItemCreated" event is published
            Then an "ItemCreated" event should be published once for item 1

  Scenario: Check if ItemUpdated event is published
            Given uid 2 and name "item_2"
            When "ItemUpdated" event is published
            Then an "ItemUpdated" event should be published once for item 2

  Scenario: Check the number of events published by an item
            Given uid 3 and name "item_3"
            When "ItemCreated" event is published
              And "ItemUpdated" event is published
              And "ItemDeleted" event is published
            Then there should be 3 events published for item stream "Item$3"
