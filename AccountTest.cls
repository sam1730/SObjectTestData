@isTest
private class AccountTest {
	private static testMethod void unitTestHere() {
		Account a = AccountTestData.Instance.insertAccount();
		Account b = AccountTestData.Instance
                    .withName('John Wayne')
		            .insertAccount();
        Account c = AccountTestData.Instance
                    .withName('John Wayne2')
                    .withAccNumber('123456789')
		            .insertAccount();
        //System.debug(c);

	}
    
    private static testMethod void unitTestHere1() {
        Opportunity a = OpportunityTestData.Instance.insertOpportunity();
        Opportunity b = OpportunityTestData.Instance
                        .withName('John Wayne')
                        .withLeadSource('Web')
                        .insertOpportunity(); 
        
        Account c = AccountTestData.Instance.insertAccount();
        Opportunity d = OpportunityTestData.Instance
                        .withAccount(c.Id)
                        .insertOpportunity();
        
        System.debug(c);
        System.debug(d);
    }
}
