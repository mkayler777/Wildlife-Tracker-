#FROM POSTMAN - requested all sightings for zebra
#in barcode: GET, localhost:3000/animals/6
{
       "animal":{
        "kingdom": "Mammal"
    }
    }

#once hit send button-results:
{
    "id": 6,
    "common_name": "Zebra",
    "latin_name": "Equus zebra",
    "kingdom": "Mammal",
    "created_at": "2020-01-09T18:23:13.011Z",
    "updated_at": "2020-01-09T23:29:09.600Z",
    "sightings": [
        {
            "id": 3,
            "date": "2020-01-09T00:00:00.000Z",
            "latitude": "19",
            "longitude": "20",
            "animal_id": 6,
            "created_at": "2020-01-09T22:55:17.824Z",
            "updated_at": "2020-01-09T22:55:17.824Z"
        },
        {
            "id": 4,
            "date": "2020-01-09T00:00:00.000Z",
            "latitude": "20",
            "longitude": "22",
            "animal_id": 6,
            "created_at": "2020-01-09T22:56:12.371Z",
            "updated_at": "2020-01-09T22:56:12.371Z"
        }
    ]
}
#FROM TERMINAL
Last login: Wed Jan  8 09:39:38 on ttys000
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % atom .
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails generate resourceWildlife_tracker common_name:string latin_name:string kingdom:string           
Running via Spring preloader in process 63295
Could not find generator 'resourceWildlife_tracker'. Maybe you meant "resource_route"?
Run `rails generate --help` for more options.
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails generate resource Wildlife_tracker common_name:string latin_name:string kingdom:string
Running via Spring preloader in process 63376
      invoke  active_record
The name 'WildlifeTracker' is either already used in your application or reserved by Ruby on Rails. Please choose an alternative and run this generator again.
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails db:create
Database 'wildlife_tracker_development' already exists
Database 'wildlife_tracker_test' already exists
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails generate resource WildlifeTracker common_name:string latin_name:string kingdom:string
Running via Spring preloader in process 63548
      invoke  active_record
The name 'WildlifeTracker' is either already used in your application or reserved by Ruby on Rails. Please choose an alternative and run this generator again.
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % spring stop
Spring stopped.
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails generate resource WildlifeTracker common_name:string latin_name:string kingdom:string
Running via Spring preloader in process 63570
      invoke  active_record
The name 'WildlifeTracker' is either already used in your application or reserved by Ruby on Rails. Please choose an alternative and run this generator again.
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails generate resource Animal common_name:string latin_name:string kingdom:string
Running via Spring preloader in process 63577
      invoke  active_record
      create    db/migrate/20200108222515_create_animals.rb
      create    app/models/animal.rb
      invoke  controller
      create    app/controllers/animals_controller.rb
      invoke    erb
      create      app/views/animals
      invoke    helper
      create      app/helpers/animals_helper.rb
      invoke    assets
      invoke      scss
      create        app/assets/stylesheets/animals.scss
      invoke  resource_route
       route    resources :animals
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker %
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % bundle exec rails db:migrate
== 20200108222515 CreateAnimals: migrating ====================================
-- create_table(:animals)
   -> 0.0101s
== 20200108222515 CreateAnimals: migrated (0.0102s) ===========================

morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails console
Running via Spring preloader in process 63680
Loading development environment (Rails 6.0.2.1)
2.6.3 :001 > Contact.create(common_name:'Lion' latin_name:'Panthera Leo' kingdom:'Animalia') Traceback (most recent call last):
SyntaxError ((irb):1: syntax error, unexpected tIDENTIFIER, expecting ')')
...e(common_name:'Lion' latin_name:'Panthera Leo' kingdom:'Anim...
...                     ^~~~~~~~~~
2.6.3 :002 >
2.6.3 :003 >
2.6.3 :004 > Contact.create(common_name:'Lion', latin_name:'Panthera Leo', kingdom:'Animalia')
Traceback (most recent call last):
        2: from (irb):4
        1: from (irb):4:in `rescue in irb_binding'
NameError (uninitialized constant Contact)
2.6.3 :005 > Animal.create(common_name:'Lion', latin_name:'Panthera Leo', kingdom:'Animalia')
   (0.1ms)  BEGIN
  Animal Create (0.6ms)  INSERT INTO "animals" ("common_name", "latin_name", "kingdom", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["common_name", "Lion"], ["latin_name", "Panthera Leo"], ["kingdom", "Animalia"], ["created_at", "2020-01-08 22:49:16.764170"], ["updated_at", "2020-01-08 22:49:16.764170"]]
   (0.3ms)  COMMIT
 => #<Animal id: 1, common_name: "Lion", latin_name: "Panthera Leo", kingdom: "Animalia", created_at: "2020-01-08 22:49:16", updated_at: "2020-01-08 22:49:16">
2.6.3 :006 > exit
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails routes
                               Prefix Verb   URI Pattern                                                                              Controller#Action
                              animals GET    /animals(.:format)                                                                       animals#index
                                      POST   /animals(.:format)                                                                       animals#create
                           new_animal GET    /animals/new(.:format)                                                                   animals#new
                          edit_animal GET    /animals/:id/edit(.:format)                                                              animals#edit
                               animal GET    /animals/:id(.:format)                                                                   animals#show
                                      PATCH  /animals/:id(.:format)                                                                   animals#update
                                      PUT    /animals/:id(.:format)                                                                   animals#update
                                      DELETE /animals/:id(.:format)                                                                   animals#destroy
        rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
        rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
           rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
        rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
         rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
       rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
                                      POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
    new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                             rails/conductor/action_mailbox/inbound_emails#new
   edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                        rails/conductor/action_mailbox/inbound_emails#edit
        rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
                                      PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
                                      PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
                                      DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
                   rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
            rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
                   rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
            update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
                 rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails routes |grep animals
                              animals GET    /animals(.:format)                                                                       animals#index
                                      POST   /animals(.:format)                                                                       animals#create
                           new_animal GET    /animals/new(.:format)                                                                   animals#new
                          edit_animal GET    /animals/:id/edit(.:format)                                                              animals#edit
                               animal GET    /animals/:id(.:format)                                                                   animals#show
                                      PATCH  /animals/:id(.:format)                                                                   animals#update
                                      PUT    /animals/:id(.:format)                                                                   animals#update
                                      DELETE /animals/:id(.:format)                                                                   animals#destroy
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % postman
zsh: command not found: postman
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails c
Running via Spring preloader in process 64089
Loading development environment (Rails 6.0.2.1)
2.6.3 :001 > Animal.all
  Animal Load (0.9ms)  SELECT "animals".* FROM "animals" LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Animal id: 1, common_name: "Lion", latin_name: "Panthera Leo", kingdom: "Animalia", created_at: "2020-01-08 22:49:16", updated_at: "2020-01-08 22:49:16">]>
2.6.3 :002 > Animal.create(common_name:'Otter', latin_name:'Lutrinae', kingdom:'Animalia')
   (0.2ms)  BEGIN
  Animal Create (0.7ms)  INSERT INTO "animals" ("common_name", "latin_name", "kingdom", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["common_name", "Otter"], ["latin_name", "Lutrinae"], ["kingdom", "Animalia"], ["created_at", "2020-01-09 00:22:29.434130"], ["updated_at", "2020-01-09 00:22:29.434130"]]
   (1.8ms)  COMMIT
 => #<Animal id: 2, common_name: "Otter", latin_name: "Lutrinae", kingdom: "Animalia", created_at: "2020-01-09 00:22:29", updated_at: "2020-01-09 00:22:29">
2.6.3 :003 > Animal.all
  Animal Load (0.4ms)  SELECT "animals".* FROM "animals" LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Animal id: 1, common_name: "Lion", latin_name: "Panthera Leo", kingdom: "Animalia", created_at: "2020-01-08 22:49:16", updated_at: "2020-01-08 22:49:16">, #<Animal id: 2, common_name: "Otter", latin_name: "Lutrinae", kingdom: "Animalia", created_at: "2020-01-09 00:22:29", updated_at: "2020-01-09 00:22:29">]>
2.6.3 :004 > Animal.create(common_name:'Chicken', latin_name:'Gallus gallus domesticus', kingdom:'Animalia')
   (1.3ms)  BEGIN
  Animal Create (1.9ms)  INSERT INTO "animals" ("common_name", "latin_name", "kingdom", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["common_name", "Chicken"], ["latin_name", "Gallus gallus domesticus"], ["kingdom", "Animalia"], ["created_at", "2020-01-09 17:47:25.561187"], ["updated_at", "2020-01-09 17:47:25.561187"]]
   (0.4ms)  COMMIT
 => #<Animal id: 3, common_name: "Chicken", latin_name: "Gallus gallus domesticus", kingdom: "Animalia", created_at: "2020-01-09 17:47:25", updated_at: "2020-01-09 17:47:25">
2.6.3 :005 > Animal.create(common_name:'Koala', latin_name:'Phascolarctos cinereus', kingdom:'Animalia')
   (0.2ms)  BEGIN
  Animal Create (0.3ms)  INSERT INTO "animals" ("common_name", "latin_name", "kingdom", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["common_name", "Koala"], ["latin_name", "Phascolarctos cinereus"], ["kingdom", "Animalia"], ["created_at", "2020-01-09 17:50:31.764242"], ["updated_at", "2020-01-09 17:50:31.764242"]]
   (0.6ms)  COMMIT
 => #<Animal id: 4, common_name: "Koala", latin_name: "Phascolarctos cinereus", kingdom: "Animalia", created_at: "2020-01-09 17:50:31", updated_at: "2020-01-09 17:50:31">
2.6.3 :006 > Animal.create(common_name:'Koala', latin_name:'Phascolarctos cinereus', kingdom:'Animalia')
   (0.2ms)  BEGIN
  Animal Create (0.5ms)  INSERT INTO "animals" ("common_name", "latin_name", "kingdom", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["common_name", "Koala"], ["latin_name", "Phascolarctos cinereus"], ["kingdom", "Animalia"], ["created_at", "2020-01-09 18:16:54.761566"], ["updated_at", "2020-01-09 18:16:54.761566"]]
   (0.6ms)  COMMIT
 => #<Animal id: 5, common_name: "Koala", latin_name: "Phascolarctos cinereus", kingdom: "Animalia", created_at: "2020-01-09 18:16:54", updated_at: "2020-01-09 18:16:54">
2.6.3 :007 > Animal.create(common_name: 'Zebra', latin_name:'Equus zebra', kingdom:'Mammel')
   (0.2ms)  BEGIN
  Animal Create (0.3ms)  INSERT INTO "animals" ("common_name", "latin_name", "kingdom", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["common_name", "Zebra"], ["latin_name", "Equus zebra"], ["kingdom", "Mammel"], ["created_at", "2020-01-09 18:23:13.011631"], ["updated_at", "2020-01-09 18:23:13.011631"]]
   (0.6ms)  COMMIT
 => #<Animal id: 6, common_name: "Zebra", latin_name: "Equus zebra", kingdom: "Mammel", created_at: "2020-01-09 18:23:13", updated_at: "2020-01-09 18:23:13">
2.6.3 :008 > exit
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails routes |grep animals
                              animals GET    /animals(.:format)                                                                       animals#index
                                      POST   /animals(.:format)                                                                       animals#create
                           new_animal GET    /animals/new(.:format)                                                                   animals#new
                          edit_animal GET    /animals/:id/edit(.:format)                                                              animals#edit
                               animal GET    /animals/:id(.:format)                                                                   animals#show
                                      PATCH  /animals/:id(.:format)                                                                   animals#update
                                      PUT    /animals/:id(.:format)                                                                   animals#update
                                      DELETE /animals/:id(.:format)                                                                   animals#destroy
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails generate resource Sighting date:datetime latitude:string longitude:string animal_id:integer
Running via Spring preloader in process 66205
      invoke  active_record
      create    db/migrate/20200109195526_create_sightings.rb
      create    app/models/sighting.rb
      invoke  controller
      create    app/controllers/sightings_controller.rb
      invoke    erb
      create      app/views/sightings
      invoke    helper
      create      app/helpers/sightings_helper.rb
      invoke    assets
      invoke      scss
      create        app/assets/stylesheets/sightings.scss
      invoke  resource_route
       route    resources :sightings
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rm app/helpers/sightings_helper.rb
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rm  app/assets/stylesheets/sightings.scss
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails db:migrate
== 20200109195526 CreateSightings: migrating ==================================
-- create_table(:sightings)
   -> 0.0123s
== 20200109195526 CreateSightings: migrated (0.0123s) =========================

morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails routes
                               Prefix Verb   URI Pattern                                                                              Controller#Action
                            sightings GET    /sightings(.:format)                                                                     sightings#index
                                      POST   /sightings(.:format)                                                                     sightings#create
                         new_sighting GET    /sightings/new(.:format)                                                                 sightings#new
                        edit_sighting GET    /sightings/:id/edit(.:format)                                                            sightings#edit
                             sighting GET    /sightings/:id(.:format)                                                                 sightings#show
                                      PATCH  /sightings/:id(.:format)                                                                 sightings#update
                                      PUT    /sightings/:id(.:format)                                                                 sightings#update
                                      DELETE /sightings/:id(.:format)                                                                 sightings#destroy
                              animals GET    /animals(.:format)                                                                       animals#index
                                      POST   /animals(.:format)                                                                       animals#create
                           new_animal GET    /animals/new(.:format)                                                                   animals#new
                          edit_animal GET    /animals/:id/edit(.:format)                                                              animals#edit
                               animal GET    /animals/:id(.:format)                                                                   animals#show
                                      PATCH  /animals/:id(.:format)                                                                   animals#update
                                      PUT    /animals/:id(.:format)                                                                   animals#update
                                      DELETE /animals/:id(.:format)                                                                   animals#destroy
        rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                  action_mailbox/ingresses/mandrill/inbound_emails#create
        rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                  action_mailbox/ingresses/postmark/inbound_emails#create
           rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                     action_mailbox/ingresses/relay/inbound_emails#create
        rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                  action_mailbox/ingresses/sendgrid/inbound_emails#create
         rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                              action_mailbox/ingresses/mailgun/inbound_emails#create
       rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#index
                                      POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                 rails/conductor/action_mailbox/inbound_emails#create
    new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                             rails/conductor/action_mailbox/inbound_emails#new
   edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                        rails/conductor/action_mailbox/inbound_emails#edit
        rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#show
                                      PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
                                      PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#update
                                      DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                             rails/conductor/action_mailbox/inbound_emails#destroy
rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                      rails/conductor/action_mailbox/reroutes#create
                   rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
            rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
                   rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
            update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
                 rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create
morgannebkayler@Morgannes-MacBook-Pro wildlife_tracker % rails c
Running via Spring preloader in process 66473
Loading development environment (Rails 6.0.2.1)
2.6.3 :001 > animal=Animal.first
  Animal Load (0.4ms)  SELECT "animals".* FROM "animals" ORDER BY "animals"."id" ASC LIMIT $1  [["LIMIT", 1]]
 => #<Animal id: 1, common_name: "Lion", latin_name: "Panthera Leo", kingdom: "Mammal", created_at: "2020-01-08 22:49:16", updated_at: "2020-01-09 18:52:09">
2.6.3 :002 > animal.sightings.create date:Date.today.to_s, latitude:"55", longitude:"94
2.6.3 :003"> Sightings.all
2.6.3 :004"> "
   (0.1ms)  BEGIN
  Sighting Create (6.4ms)  INSERT INTO "sightings" ("date", "latitude", "longitude", "animal_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["date", "2020-01-09 00:00:00"], ["latitude", "55"], ["longitude", "94\nSightings.all\n"], ["animal_id", 1], ["created_at", "2020-01-09 21:44:52.409553"], ["updated_at", "2020-01-09 21:44:52.409553"]]
   (0.8ms)  COMMIT
 => #<Sighting id: 1, date: "2020-01-09 00:00:00", latitude: "55", longitude: "94\nSightings.all\n", animal_id: 1, created_at: "2020-01-09 21:44:52", updated_at: "2020-01-09 21:44:52">
2.6.3 :005 > Sightings.all
Traceback (most recent call last):
        1: from (irb):5
NameError (uninitialized constant Sightings)
2.6.3 :006 > Sighting.all
  Sighting Load (0.2ms)  SELECT "sightings".* FROM "sightings" LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Sighting id: 1, date: "2020-01-09 00:00:00", latitude: "55", longitude: "94\nSightings.all\n", animal_id: 1, created_at: "2020-01-09 21:44:52", updated_at: "2020-01-09 21:44:52">]>
2.6.3 :007 > animal.last
Traceback (most recent call last):
        1: from (irb):7
NoMethodError (undefined method `last' for #<Animal:0x00007f91ba1d0ad0>)
2.6.3 :008 > animal=Animal.last
  Animal Load (0.3ms)  SELECT "animals".* FROM "animals" ORDER BY "animals"."id" DESC LIMIT $1  [["LIMIT", 1]]
 => #<Animal id: 6, common_name: "Zebra", latin_name: "Equus zebra", kingdom: "Mammel", created_at: "2020-01-09 18:23:13", updated_at: "2020-01-09 18:23:13">
2.6.3 :009 > animal.sightings.create date:Date.today.to_s, latitude:"19", longitude:"20"
   (0.1ms)  BEGIN
  Sighting Create (0.3ms)  INSERT INTO "sightings" ("date", "latitude", "longitude", "animal_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["date", "2020-01-09 00:00:00"], ["latitude", "19"], ["longitude", "20"], ["animal_id", 6], ["created_at", "2020-01-09 21:48:19.286289"], ["updated_at", "2020-01-09 21:48:19.286289"]]
   (4.4ms)  COMMIT
 => #<Sighting id: 2, date: "2020-01-09 00:00:00", latitude: "19", longitude: "20", animal_id: 6, created_at: "2020-01-09 21:48:19", updated_at: "2020-01-09 21:48:19">
2.6.3 :010 > Sighting.all
  Sighting Load (0.2ms)  SELECT "sightings".* FROM "sightings" LIMIT $1  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Sighting id: 1, date: "2020-01-09 00:00:00", latitude: "55", longitude: "94\nSightings.all\n", animal_id: 1, created_at: "2020-01-09 21:44:52", updated_at: "2020-01-09 21:44:52">, #<Sighting id: 2, date: "2020-01-09 00:00:00", latitude: "19", longitude: "20", animal_id: 6, created_at: "2020-01-09 21:48:19", updated_at: "2020-01-09 21:48:19">]>
2.6.3 :011 > animal.sightings.create date:Date.today.to_s, latitude:"19", longitude:"20"
   (0.2ms)  BEGIN
  Sighting Create (0.3ms)  INSERT INTO "sightings" ("date", "latitude", "longitude", "animal_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["date", "2020-01-09 00:00:00"], ["latitude", "19"], ["longitude", "20"], ["animal_id", 6], ["created_at", "2020-01-09 22:55:17.824333"], ["updated_at", "2020-01-09 22:55:17.824333"]]
   (0.3ms)  COMMIT
 => #<Sighting id: 3, date: "2020-01-09 00:00:00", latitude: "19", longitude: "20", animal_id: 6, created_at: "2020-01-09 22:55:17", updated_at: "2020-01-09 22:55:17">
2.6.3 :012 > animal.sightings.create date:Date.today.to_s, latitude:"20", longitude:"22"
   (0.2ms)  BEGIN
  Sighting Create (0.4ms)  INSERT INTO "sightings" ("date", "latitude", "longitude", "animal_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5, $6) RETURNING "id"  [["date", "2020-01-09 00:00:00"], ["latitude", "20"], ["longitude", "22"], ["animal_id", 6], ["created_at", "2020-01-09 22:56:12.371937"], ["updated_at", "2020-01-09 22:56:12.371937"]]
   (0.7ms)  COMMIT
 => #<Sighting id: 4, date: "2020-01-09 00:00:00", latitude: "20", longitude: "22", animal_id: 6, created_at: "2020-01-09 22:56:12", updated_at: "2020-01-09 22:56:12">
2.6.3 :013 > Animal.all
