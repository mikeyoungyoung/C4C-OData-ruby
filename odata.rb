#!/usr/bin/ruby -w

#To Filter opportunities by AccountID
def get_acct_opps(accountID)
    
    puts "For AccountID: #{accountID}"
    accountID = "'" + accountID.to_s + "'"
    filter_str = "AccountID eq " + accountID
    $svc.OpportunityCollection.filter(filter_str) #.orderby("WeightedValue desc")
    account_opps = $svc.execute || nil
    #account_opps = $svc.execute ? account_opps : []
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