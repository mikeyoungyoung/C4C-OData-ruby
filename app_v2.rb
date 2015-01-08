require 'rubygems'
require 'sinatra'
require 'haml'
require 'ruby_odata'
require 'haml'

require_relative 'odata'
include FileUtils::Verbose

$root_svc = "https://my304338.crm.ondemand.com/sap/byd/odata/v1/C4C.SVC"
$svc = OData::Service.new $root_svc, { :username => "youngm", :password=> "Mw2young" }


#puts get_acct_opps(10127).as_json

get '/' do
    #@oppt_list = get_acct_opps(1026215)
    haml :index
end

post '/' do
    @accountid = params[:accountid] #.to_f.round(2)
    @oppt_list = get_acct_opps(@accountid)
    @tckt_list = @oppt_list #get_acct_tckts(@accountid)
    haml :index
end
