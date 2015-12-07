//This sample displays an alert box

function sayHello()
{
	alert('Hello Reporting');
}

function jsPlusClick()
{
	$('#imgPlus').hide();
	$('#imgMinus').show();
}

function jsMinusClick()
{
	$('#imgPlus').show();
	$('#imgMinus').hide();
}

function tabClickFinance() 
{
	$('#tabFinance').addClass("selected");
	$('#tabCustomer').removeClass("selected");
	$('#tabEmployee').removeClass("selected");
	$('#tabRenewal').removeClass("selected");
	$('#rdTabPanel_tabFinance').show();
	$('#rdTabPanel_tabCustomer').hide();
	$('#rdTabPanel_tabEmployee').hide();
	$('#rdTabPanel_tabRenewal').hide();
}

function tabClickCustomer() 
{
	$('#tabFinance').removeClass("selected");
	$('#tabEmployee').removeClass("selected");
	$('#tabRenewal').removeClass("selected");
	$('#tabCustomer').addClass("selected");
	$('#rdTabPanel_tabFinance').hide();
	$('#rdTabPanel_tabCustomer').show();
	$('#rdTabPanel_tabEmployee').hide();
	$('#rdTabPanel_tabRenewal').hide();
}

function tabClickEmployee() 
{
	$('#tabFinance').removeClass("selected");
	$('#tabEmployee').addClass("selected");
	$('#tabRenewal').removeClass("selected");
	$('#tabCustomer').removeClass("selected");
	$('#rdTabPanel_tabFinance').hide();
	$('#rdTabPanel_tabCustomer').hide();
	$('#rdTabPanel_tabEmployee').show();
	$('#rdTabPanel_tabRenewal').hide();
}

function tabClickRenewal() 
{
	$('#tabFinance').removeClass("selected");
	$('#tabEmployee').removeClass("selected");
	$('#tabRenewal').addClass("selected");
	$('#tabCustomer').removeClass("selected");
	$('#rdTabPanel_tabFinance').hide();
	$('#rdTabPanel_tabCustomer').hide();
	$('#rdTabPanel_tabEmployee').hide();
	$('#rdTabPanel_tabRenewal').show();
}