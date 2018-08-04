/**
* @description Builder class for dealing with Opportunity records.
* Solely used for testing, NOT a data factory.
**/
@isTest
public class OpportunityTestData extends SObjectTestData {
	/**
	* @description Overridden method to set up the default
	* Opportunity state for OpportunityTestData.
	* @return A map of Opportunity default fields.
	*/
	protected override Map<Schema.SObjectField, Object> getDefaultValueMap() {
		return new Map<Schema.SObjectField, Object> {
			Opportunity.Name => 'Luke Freeland',
			Opportunity.CloseDate => System.today(),
			Opportunity.StageName => 'Prospecting'
		};
	}
	/**
	* @description Returns the SObject type for OpportunityTestData builder.
	* @return Opportunity.SObjectType.
	*/
	protected override Schema.SObjectType getSObjectType() {
		return Opportunity.SObjectType;
	}
	/**
	* @description Sets the name on the Opportunity.
	* @param name The name that the Opportunity will have.
	* @return The instance of OpportunityTestData.
	*/
	public OpportunityTestData withName(String name) {
		return (OpportunityTestData) with(Opportunity.Name, name);
	}
    
    public OpportunityTestData withLeadSource(String leadSource) {
		return (OpportunityTestData) with(Opportunity.LeadSource, leadSource);
	}
    
    public OpportunityTestData withAccount(Id accountId) {
		return (OpportunityTestData) with(Opportunity.AccountId, accountId);
	}
	/* Create a "with" method for each property that can be set */
	/**
	* @description Builds the Opportunity object.
	* @return The created Opportunity object.
	*/
	public Opportunity create() {
		return (Opportunity)super.buildWithReset();
	}
	/**
	* @description Inserts the built Opportunity object.
	* @return The inserted Opportunity object.
	*/
	public Opportunity insertOpportunity() {
		return (Opportunity)super.insertRecord();
	}
	/**
	* @description Gets an instance of OpportunityTestData.
	* @return OpportunityTestData instance.
	*/
	public static OpportunityTestData Instance {
		get {
			if (Instance == null) {
				Instance = new OpportunityTestData();
			}
			return Instance;
		}
        private set;
	}
	/**
	* @description Private constructor for singleton.
	*/
	private OpportunityTestData() {
        super();
    }
}
