#!/bin/bash

# rails new Test-RoR-EV
# rails g controller events
# rails g model Event title:string venue:string time:datetime desc:text
# rails g migration AddTimeEndToEvents time_end:datetime
# rails g paperclip event pubmat
# So far only event model making was done i think
rails g model Group name:string desc:text
rails g controller groups
rails g migration AddGroupToEvents group:references
