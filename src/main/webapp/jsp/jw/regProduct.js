function createPopup()
{	
	window.open(
          "CategoryController",
          "Child",
          "width=400, height=300, top=50, left=50"
        );
}


function onSearchDiv()
{
	const serachDiv = document.querySelector('.cSearchDiv');
	const selectDiv = document.querySelector('.cSelectDiv');

	serachDiv.style.display = 'block';
	selectDiv.style.display = 'none';
}

function onSelectDiv()
{
	const serachDiv = document.querySelector('.cSearchDiv');
	const selectDiv = document.querySelector('.cSelectDiv');

	serachDiv.style.display = 'none';
	selectDiv.style.display = 'block';
}

var selectedMainNum  = 0;
var selectedMiddleNum = 0;
var selectedSubNum = 0;

var prevH2Name = null;
var prevH3Name = null;

var categoryInput = document.getElementById("categoryInputId");

function selectMainCategory(Num)
{
	var tempClass = "."+Num
	const h2Div =  document.querySelector(tempClass);
	const secondButton = document.querySelector('.MCategoryDiv');

	selectedMainNum= Num;
	categoryInput.value = Num;
	
	if(prevH2Name)
	{
		const prevDiv =  document.querySelector(prevH2Name);
		prevDiv.style.display = 'none'; 
	}	
	document.querySelector('.SubCategoryDiv').style.display = 'none';

	h2Div.style.display = 'block';

	if(selectedMainNum!= 0)
	{
		secondButton.style.display = 'block';
	}
	
	prevH2Name = tempClass;
		
	selectedCategory(Num);
		

}


function selectMidCategory(Num)
{
	var tempClass = "."+Num
	const thirdButton = document.querySelector('.SubCategoryDiv');

	if(prevH3Name)
	{
		const prevDiv =  document.querySelector(prevH3Name);
		prevDiv.style.display = 'none'; 
	}
	selectedMiddleNum= Num;
	categoryInput.value = Num;

	const h3Div =  document.querySelector(tempClass);
	h3Div.style.display = 'block';

	if(selectedMiddleNum!= 0)
	{
		thirdButton.style.display = 'block';
	}
	prevH3Name = tempClass;
	
	selectedCategory(Num);
}

function selectSubCategory(Num)
{
	selectedSubNum = Num;
	categoryInput.value = Num;
	selectedCategory(Num);
}


function selectedCategory(CategoryNum)
{
		var categoryInput = document.getElementById("CategoryNum");
	categoryInput.value = CategoryNum;
}