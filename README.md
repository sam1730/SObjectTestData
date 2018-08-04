# SObjectTestData
SObject Test Data Design Pattern

Apex SObject Test Data Design Pattern

In the Apex Data Factory Design Pattern, a design pattern was introduced using static create & insert methods for instantiating and inserting records in Apex. With many fields on the SObject, this resulted in many methods being created and caused too many static methods to be used. The SObject Test Data Design Pattern resolves this.


SObject Test Data Design Pattern

The SObject Test Data Design Pattern consists of a base SObjectTestData apex class that builds SObject records and optionally inserts them. It uses a fluent API to allow method chaining so that the code is self-documenting within test classes. For each SObject used in tests, a corresponding {Object}TestData class is created that extends from SObjectTestData. In each test class, the test methods then use the {Object}TestData classes as needed.
