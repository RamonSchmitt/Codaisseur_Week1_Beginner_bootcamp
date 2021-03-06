class ContactsController < ApplicationController

   def index
      @contacts = Contact.all
   end

   def show
      @contact = Contact.find( params[:id] )
   end

   def new
      @contact = Contact.new
   end

   def create
      contact_params = params.require( :contact ).permit( :name, :phone, :email )

      @contact = Contact.new( contact_params )

      if @contact.save
         redirect_to @contact
      else
         render 'new'
      end
   end

   def edit
      @contact = Contact.find(params[:id])
   end

   def update
     @contact = Contact.find( params[:id] )

#     contact_params = params.require( :contact ).permit( :name, :phone, :email )

     if @contact.update_attributes( contact_params )
        redirect_to @contact
     else
        render 'edit'
     end
   end

   private

   def contact_params
      params.require( :contact ).permit( :name, :phone, :email )
   end

   def destroy
      @contact = Contact.find( params[:id] )

      @contact.destroy

      redirect_to contacts_path
   end

   def create
      @contact = Contact.new( contact_params )

      if @contact.save
         redirect_to @contact
      else
         render 'new'
      end
   end

   def update
     @contact = Contact.find( params[:id] )

     if @contact.update_attributes( contact_params )
        redirect_to @contact
     else
        render 'edit'
     end
   end

end
