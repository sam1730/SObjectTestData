/**
* @description Builder class for dealing with Account records.
* Solely used for testing, NOT a data factory.
**/
@isTest
public class AccountTestData extends SObjectTestData {
	/**
	* @description Overridden method to set up the default
	* Account state for AccountTestData.
	* @return A map of Account default fields.
	*/
	protected override Map<Schema.SObjectField, Object> getDefaultValueMap() {
		return new Map<Schema.SObjectField, Object> {
			Account.Name => 'Luke Freeland'
		};
	}
	/**
	* @description Returns the SObject type for AccountTestData builder.
	* @return Account.SObjectType.
	*/
	protected override Schema.SObjectType getSObjectType() {
		return Account.SObjectType;
	}
	/**
	* @description Sets the name on the account.
	* @param name The name that the account will have.
	* @return The instance of AccountTestData.
	*/
	public AccountTestData withName(String name) {
		return (AccountTestData) with(Account.Name, name);
	}
	/* Create a "with" method for each property that can be set */
	/**
	* @description Builds the Account object.
	* @return The created Account object.
	*/
	public Account create() {
		return (Account)super.buildWithReset();
	}
	/**
	* @description Inserts the built Account object.
	* @return The inserted Account object.
	*/
	public Account insertAccount() {
		return (Account)super.insertRecord();
	}
	/**
	* @description Gets an instance of AccountTestData.
	* @return AccountTestData instance.
	*/
	public static AccountTestData Instance {
		get {
			if (Instance == null) {
				Instance = new AccountTestData();
			}
			return Instance;
		}
        private set;
	}
	/**
	* @description Private constructor for singleton.
	*/
	private AccountTestData() {
        super();
    }
}
