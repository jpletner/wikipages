class PhonesController < ApplicationController
        def new
            contact = Contact.find(params[:contact_id])
            @phone = contact.phones.new
            render('phones/new.html.erb')
        end
    
        def create
            @contact = Contact.find(params[:contact_id])
            @phone = Phone.new(
                :number => params[:number],
                :contact_id => params[:contact_id])
            if @phone.save
                render('contacts/success.html.erb')
            else
                render('phones/new.html.erb')
            end
        end
    
        def edit
            @phone = Phone.find(params[:phone_id])
            render('phones/edit.html.erb')
        end

        def update
          @contact = Contact.find(params[:contact_id])
          @phone = Phone.find(params[:phone_id])
            if @phone.update(params[:phone])
              render('contacts/success.html.erb')
            else
              render('phones/edit.html.erb')
            end
      end

       def destroy
           @contact = Contact.find(params[:contact_id])
           @phone = Phone.find(params[:phone_id])
           @phone.destroy
           render('contacts/show.html.erb')
       end

end
