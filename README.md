# AWS SDK for Ruby Sample Project

A simple Ruby application illustrating usage of SAP Cloud for Customer OData Services using [Sinatra](http://www.sinatrarb.com) and [Ruby_OData](https://github.com/visoft/ruby_odata)

## Requirements

The only requirement of this application is [Bundler](http://bundler.io). All other dependencies can be installed with:

    bundle install

Additionally, you must have access to an SAP Cloud for Customer Tenant

## Basic Configuration

While this obvisouly isn't the most secure way to connect, this application simply provides 
hard-coded root service and authentication credentials.  More security could be added by the 
use of OAuth in C4C.  The following is a snippet from lines 10 & 11 of app.rb.  Replace all XXXXXX 
with your specific details
    [default]
    $root_svc = "https://myXXXXXX.crm.ondemand.com/sap/byd/odata/v1/C4C.SVC"
    $svc = OData::Service.new $root_svc, { :username => "<user name>", :password=> "<password>" }

## Running the Application

Once verified that ruby is on your local machine, navigate to the directory containing app.rb 
and run 
    ruby app.rb

The application can also be run on your PaaS provider of choice so longs as they provide support 
for Sinatra Applications