module WHMCS
  # WHMCS::Client is the class for managing clients
  class Client < Base

    # Create a new client
    #
    # Parameters:
    #
    # * <tt>:firstname</tt>
    # * <tt>:lastname</tt>
    # * <tt>:companyname</tt> - optional
    # * <tt>:email</tt>
    # * <tt>:address1</tt>
    # * <tt>:address2</tt> - optional
    # * <tt>:city</tt>
    # * <tt>:state</tt>
    # * <tt>:postcode</tt>
    # * <tt>:country</tt> - two letter ISO country code
    # * <tt>:phonenumber</tt>
    # * <tt>:password2</tt> - password for the new user account
    # * <tt>:currency</tt> - the ID of the currency to set the user to
    # * <tt>:groupid</tt> - used to assign the client to a client group
    # * <tt>:notes</tt>
    # * <tt>:cardtype</tt> - Visa, Mastercard, etc...
    # * <tt>:cardnum</tt>
    # * <tt>:expdate</tt> - in the format MMYY
    # * <tt>:startdate</tt>
    # * <tt>:issuenumber</tt>
    # * <tt>:customfields</tt> - a base64 encoded serialized array of custom field values
    # * <tt>:noemail</tt> - pass as true to surpress the client signup welcome email sending
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Add_Client
    def self.add_client(params = {})
      params.merge!(:action => 'addclient')
      send_request(params)
    end

    # Update a client's info
    # 
    # Required parameter:
    #
    # * <tt>:clientid</tt>
    #
    # Parameters:
    #
    # * <tt>:firstname</tt>
    # * <tt>:lastname</tt>
    # * <tt>:companyname</tt>
    # * <tt>:email</tt>
    # * <tt>:address1</tt>
    # * <tt>:address2</tt>
    # * <tt>:city</tt>
    # * <tt>:state</tt>
    # * <tt>:postcode</tt>
    # * <tt>:country</tt> - two letter ISO country code
    # * <tt>:phonenumber</tt>
    # * <tt>:password2</tt>
    # * <tt>:credit</tt> - credit balance
    # * <tt>:taxexempt</tt> - true to enable
    # * <tt>:notes</tt>
    # * <tt>:cardtype</tt> - visa, mastercard, etc...
    # * <tt>:cardnum</tt> - cc number
    # * <tt>:expdate</tt> - cc expiry date
    # * <tt>:startdate</tt> - cc start date
    # * <tt>:issuenumber</tt> - cc issue number
    # * <tt>:language</tt> - default language
    # * <tt>:status</tt> - active or inactive
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Update_Client
    def self.update_client(params = {})
      params.merge!(:action => 'updateclient')
      send_request(params)
    end

    # Delete a client
    #
    # Parameters:
    #
    # * <tt>:clientid</tt> - ID Number of the client to delete
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Delete_Client
    def self.delete_client(params = {})
      params.merge!(:action => 'deleteclient')
      send_request(params)
    end

    # Close a client
    #
    # Parameters:
    #
    # * <tt>:clientid</tt> - ID Number of the client to close
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Close_Client
    def self.close_client(params = {})
      params.merge!(:action => 'closeclient')
      send_request(params)
    end

    # Get multiple clients
    #
    # Parameters:
    #
    # * <tt>:limitstart</tt> - Record to start at (default = 0)
    # * <tt>:limitnum</tt> - Number of records to return (default = 25)
    # * <tt>:search</tt> - Can be passed to filter for clients with a name/email matching the term entered
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Clients
    def self.get_clients(params = {})
      params.merge!(:action => 'getclients')
      send_request(params)
    end

    # Get a client's info
    #
    # Parameters:
    #
    # * <tt>:clientid</tt> - the id number of the client
    # * <tt>:email</tt> - the email address of the client
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Clients_Details
    def self.get_clients_details(params = {})
      params.merge!(:action => 'getclientsdetails')
      send_request(params)
    end

    # Get a hash of a client's password
    #
    # Parameters:
    #
    # * <tt>:userid</tt> - should contain the user id of the client you wish to get the password for
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Clients_Password
    def self.get_clients_password(params = {})
      params.merge!(:action => 'getclientpassword')
      send_request(params)
    end

    # Add a client contact
    #
    # Parameters:
    #
    # * <tt>:clientid</tt> - the client ID to add the contact to
    # * <tt>:firstname</tt>
    # * <tt>:lastname</tt>
    # * <tt>:companyname</tt>
    # * <tt>:email</tt>
    # * <tt>:address1</tt>
    # * <tt>:address2</tt>
    # * <tt>:city</tt>
    # * <tt>:state</tt>
    # * <tt>:postcode</tt>
    # * <tt>:country</tt> - two letter ISO country code
    # * <tt>:phonenumber</tt>
    # * <tt>:password2</tt> - if creating a sub-account
    # * <tt>:permissions</tt> - can specify sub-account permissions eg manageproducts,managedomains
    # * <tt>:generalemails</tt> - set true to receive general email types
    # * <tt>:productemails</tt> - set true to receive product related emails
    # * <tt>:domainemails</tt> - set true to receive domain related emails
    # * <tt>:invoiceemails</tt> - set true to receive billing related emails
    # * <tt>:supportemails</tt> - set true to receive support ticket related emails
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Add_Contact
    def self.add_contact(params = {})
      params.merge!(:action => 'addcontact')
      send_request(params)
    end

    # Get client's contacts
    #
    # Parameters:
    #
    # * <tt>:limitstart</tt> - Record to start at (default = 0)
    # * <tt>:limitnum</tt> - Number of records to return (default = 25)
    # * <tt>:userid</tt>
    # * <tt>:firstname</tt>
    # * <tt>:lastname</tt>
    # * <tt>:companyname</tt>
    # * <tt>:email</tt>
    # * <tt>:address1</tt>
    # * <tt>:address2</tt>
    # * <tt>:city</tt>
    # * <tt>:state</tt>
    # * <tt>:postcode</tt>
    # * <tt>:country</tt>
    # * <tt>:phonenumber</tt>
    # * <tt>:subaccount</tt> - true/false
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Contacts
    def self.get_contacts(params = {})
      params.merge!(:action => 'getcontacts')
      send_request(params)
    end

    # Update a client's contact
    #
    # Parameters:
    #
    # * <tt>:contactid</tt> - The ID of the contact to delete
    # * <tt>:generalemails</tt> - set to true to receive general emails
    # * <tt>:productemails</tt> - set to true to receive product emails
    # * <tt>:domainemails</tt> - set to true to receive domain emails
    # * <tt>:invoiceemails</tt> - set to true to receive invoice emails
    # * <tt>:supportemails</tt> - set to true to receive support emails
    # * <tt>:firstname</tt> - change the firstname
    # * <tt>:lastname</tt> - change the lastname
    # * <tt>:companyname</tt> - change the companyname
    # * <tt>:email</tt> - change the email address
    # * <tt>:address1</tt> - change address1
    # * <tt>:address2</tt> - change address2
    # * <tt>:city</tt> - change city
    # * <tt>:state</tt> - change state
    # * <tt>:postcode</tt> - change postcode
    # * <tt>:country</tt> - change country
    # * <tt>:phonenumber</tt> - change phonenumber
    # * <tt>:subaccount</tt> - enable subaccount
    # * <tt>:password</tt> - change the password
    # * <tt>:permissions</tt> - set permissions eg manageproducts,managedomains
    #
    # Only send fields you wish to update
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Update_Contact
    def self.update_contact(params = {})
      params.merge!(:action => 'updatecontact')
      send_request(params)
    end

    # Delete a client's contact
    #
    # Parameters:
    #
    # * <tt>:contactid</tt> - The ID of the contact to delete
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Delete_Contact
    def self.delete_contact(params = {})
      params.merge!(:action => 'deletecontact')
      send_request(params)
    end

    # Get client's products
    #
    # Parameters:
    #
    # * <tt>:clientid</tt> - the ID of the client to retrieve products for
    # * <tt>:serviceid</tt> - the ID of the service to retrieve details for
    # * <tt>:domain</tt> - the domain of the service to retrieve details for
    # * <tt>:pid</tt> - the product ID of the services to retrieve products for
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Clients_Products
    def self.get_clients_products(params = {})
      params.merge!(:action => 'getclientsproducts')
      send_request(params)
    end

    # Update client's product
    #
    # Parameters:
    #
    # * <tt>:serviceid</tt> - the ID of the service to be updated
    # * <tt>:pid</tt>
    # * <tt>:serverid</tt>
    # * <tt>:regdate</tt> - Format: YYYY-MM-DD
    # * <tt>:nextduedate</tt> - Format: YYYY-MM-DD
    # * <tt>:domain</tt>
    # * <tt>:firstpaymentamount</tt>
    # * <tt>:recurringamount</tt>
    # * <tt>:billingcycle</tt>
    # * <tt>:paymentmethod</tt>
    # * <tt>:status</tt>
    # * <tt>:serviceusername</tt>
    # * <tt>:servicepassword</tt>
    # * <tt>:subscriptionid</tt>
    # * <tt>:promoid</tt>
    # * <tt>:overideautosuspend</tt> - on/off
    # * <tt>:overidesuspenduntil</tt> - Format: YYYY-MM-DD
    # * <tt>:ns1</tt>
    # * <tt>:ns2</tt>
    # * <tt>:dedicatedip</tt>
    # * <tt>:assignedips</tt>
    # * <tt>:notes</tt>
    # * <tt>:autorecalc</tt> - pass true to auto set price based on product ID or billing cycle change
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Update_Client_Product
    def self.update_client_product(params = {})
      params.merge!(:action => 'updateclientproduct')
      send_request(params)
    end

    # Validate client login info
    #
    # Parameters:
    #
    # * <tt>:email</tt> - the email address of the user trying to login
    # * <tt>:password2</tt> - the password they supply for authentication
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Validate_Login
    def self.validate_login(params = {})
      params.merge!(:action => 'validatelogin')
      send_request(params)
    end

    # Send email to client
    #
    # Parameters:
    #
    # * <tt>:messagename</tt> - unique name of the email template to send from WHMCS
    # * <tt>:id</tt> - related ID number to send message for
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Send_Email
    def self.send_email(params = {})
      params.merge!(:action => 'sendemail')
      send_request(params)
    end
    
    # Add cancel request to client
    #
    # Parameters:
    #
    # * <tt>:serviceid</tt> - Service ID to be cancelled
    # * <tt>:type</tt> - 'Immediate' OR 'End of Billing Period'
    # * <tt>:reaon</tt> - Reason for cancel - Optional
    #
    # See:
    #
    # http://docs.whmcs.com/API:Add_Cancel_Request
    def self.add_cancel_request(params = {})
      params.merge!(:action => 'addcancelrequest')
      send_request(params)
    end
    
    # Add a credit to client's account
    #
    # Parameters:
    #
    # * <tt>:clientid</tt> - the ID of the client the credit is to be added to
    # * <tt>:description</tt> - reason for credit being added (stored in admin credit log)
    # * <tt>:amount</tt> - the amount to be added
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Add_Credit
    def self.add_credit(params = {})
      params.merge!(:action => 'addcredit')
      send_request(params)
    end

    # Updates a client addon
    #
    # Parameters:
    #
    # * <tt>:addonid</tt> - the ID of the client the credit is to be added to
    # * <tt>:name</tt> - reason for credit being added (stored in admin credit log)
    # * <tt>:setupfee</tt> - Setup fee cost. No symbol, just xx.xx
    # * <tt>:recurring</tt> - Setup fee cost. No symbol, just xx.xx
    # * <tt>:billingcycle</tt> - One of Free Account, One Time, Monthly, Quarterly, Semi-Annually, Annually, Biennially or Triennially
    # * <tt>:nextduedate</tt> - Update the next due date yyyymmdd
    # * <tt>:nextinvoicedate</tt> - Update the next invoice date yyyymmdd
    # * <tt>:notes</tt> - add custom notes to the addon
    # * <tt>:status</tt> - Pending, Active, Suspended, Cancelled, Terminated, Fraud
    #
    # See:
    #
    # http://docs.whmcs.com/API:Update_Client_Addon
    def self.update_client_addon(params = {})
      params.merge!(:action => 'updateclientaddon')
      send_request(params)
    end
  end
end
