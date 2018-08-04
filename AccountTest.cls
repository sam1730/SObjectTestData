@isTest
private class AccountTest {
	private static testMethod void unitTestHere() {
		Account a = AccountTestData.Instance.insertAccount();
		Account b = AccountTestData.Instance.withName('John Wayne')
		            .insertAccount();
	}
}
