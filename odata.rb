#!/usr/bin/ruby -w

#URL = "https://my304338.crm.ondemand.com/sap/byd/odata/v1/C4C.SVC/OpportunityCollection"
#Filter URL
#URL_filt = "https://my304338.crm.ondemand.com/sap/byd/odata/v1/c4c.svc/OpportunityCollection?$filter=AccountID eq '1026215'"
#$root_svc = "https://my304338.crm.ondemand.com/sap/byd/odata/v1/C4C.SVC"

#To Filter opportunities by AccountID
def get_acct_opps(accountID)
    
    puts "For AccountID: #{accountID}"
    accountID = "'" + accountID.to_s + "'"
    filter_str = "AccountID eq " + accountID
    $svc.OpportunityCollection.filter(filter_str) #.orderby("WeightedValue desc")
    account_opps = $svc.execute
    #puts account_opps.as_json
    return account_opps #returns a collection of Opportunity class Objects
    #Might consider putting each of these opportinities into a hash with the key being UUID
end

#Get all Tickets for Account
def get_acct_tckts(accountID)
    
    puts "For AccountID: #{accountID}"
    accountID = "'" + accountID.to_s + "'"
    filter_str = "CustomerID eq " + accountID
    $svc.TicketCollection.filter(filter_str)
    account_tckts = $svc.execute
    #puts account_opps.as_json
    return account_tckts #returns a collection of Opportunity class Objects
    #Might consider putting each of these opportinities into a hash with the key being UUID
end