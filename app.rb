require 'rubygems'
require 'sinatra'
require 'haml'
require 'ruby_odata'
require 'haml'

require_relative 'odata'
include FileUtils::Verbose

$root_svc = "https://myXXXXXX.crm.ondemand.com/sap/byd/odata/v1/C4C.SVC"
$svc = OData::Service.new $root_svc, { :username => "XXXXXX", :password=> "XXXXXX" }

get '/' do
    #@oppt_list = get_acct_opps(1026215)
    haml :index
end

post '/' do
    @accountid = params[:accountid]
    @oppt_list = get_acct_opps(@accountid) #need handling of failed requests
    
    #redirect('/') unless @oppt_list
    
    haml :index
end
