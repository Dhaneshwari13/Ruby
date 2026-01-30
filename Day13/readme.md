 Action Text 
    -> it is the component which provides the better stylings like rich text area .
  
    Installation steps of ActionText
        -> ActionText is built-in starting from Rails 6.0
        -> Run the command : rails action_text:install
        -> Run migrations rails db:migration


    Files created in the project after installing ActionText:
        -> app/assets/stylesheets/actiontext.css (newly created)
        -> app/javascript/application.js (updated)
        -> projectDb/app/views/active_storage/blobs/_blob.html.erb (newly created)
        -> projectDb/app/views/layouts/action_text/contents/_content.html.erb (newly created)
        -> projectDb/config/importmap.rb (updated)
        -> projectDb/db/migrate/20260128045538_create_active_storage_tables.active_storage.rb (newly created)
        -> projectDb/db/migrate/20260128045539_create_action_text_tables.action_text.rb (newly created)
        -> projectDb/test/fixtures/action_text/rich_texts.yml (newly created)

    File changes after migration.
        schema.rb (updated)


#   Steps to do 
    * Steps For the existing database table to add new columns with using action text .
    Step1 :
        -> Inside the Product module add a method has_rich_text 
              has_rich_text:description           
    Step2 :
        -> In the Controller inside the private method that is params add the parameter :descrption .
               def product_params
                    params.expect(product: [ :name, :description, :price, :stock, :is_active, :description ])
                end
    Step3 :
        -> In the form now update the form.text_area to form.rich_text_area .
                <div>
                    <%= form.label :description, style: "display: block" %>
                    <%= form.rich_text_area :description %>
                </div>
    Step4 :
        -> In the index update with the descption .
                 <p class="card-text text-muted">
                        <%= if  product.description.nil?
                                "Default Description ."
                            else
                                product.description
                            end              
                        %>       
                    </p>
    Step5 : In the  edit and new we can get as we are render the form .
    Step6 : In the show update with descrption 
                 <%= @product.description  %>