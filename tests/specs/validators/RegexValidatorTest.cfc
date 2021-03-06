/**
********************************************************************************
Copyright Since 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.coldbox.org | www.luismajano.com | www.ortussolutions.com
********************************************************************************
*/
component extends="coldbox.system.testing.BaseModelTest" model="cbvalidation.models.validators.RegexValidator"{

	function setup(){
		super.setup();
		model.init();
	}
	
	function testValidate(){
		result = getMockBox().createMock("cbvalidation.models.result.ValidationResult").init();
		
		
		// not empty
		r = model.validate(result,this,'test',"woot","^luis$");
		assertEquals( false, r );
		
		// not empty
		r = model.validate(result,this,'test',"luis","^luis$");
		assertEquals( true, r );
		
	}
}