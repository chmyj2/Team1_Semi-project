
function tagAdder()
{
	var tagName = prompt("태그의 이름을 입력해주세요");
	
	location.href = "tagRegController?name="+tagName+"&num=0&level=1"
}

var selectedNum  = 0;
var selectSecondNum = 0;
var prevH2Name = null;
var prevH3Name = null;

function tagSecondAdder()
{
	var tagName = prompt("태그의 이름을 입력해주세요");

	location.href = "tagRegController?name="+tagName+"&num="+selectedNum+"&level=2";		
}
function tagThirdAdder()
{
	var tagThirdName = prompt("태그의 이름을 입력해주세요");

	location.href = "tagRegController?name="+tagThirdName+"&num="+selectSecondNum+"&level=3";	
}

function deleteTag(Num)
{
	location.href = "tagDeleteController?num="+Num;	
}

function selectH2Category(Num)
{
	var tempClass = "."+Num
	const h2Div =  document.querySelector(tempClass);
	const secondButton = document.querySelector('.h2Div');

	selectedNum= Num;
	selectSecondNum= 0;
	document.querySelector('.h3Div').style.display = 'none';
	if(prevH2Name)
	{
		const prevDiv =  document.querySelector(prevH2Name);
		prevDiv.style.display = 'none'; 
	}	
	
	h2Div.style.display = 'block';

	if(selectedNum!= 0)
	{
		secondButton.style.display = 'block';
	}
	
	prevH2Name = tempClass;
}




function selectH3Category(Num)
{
	var tempClass = "."+Num
	const thirdButton = document.querySelector('.h3Div');

	if(prevH3Name)
	{
		const prevDiv =  document.querySelector(prevH3Name);
		prevDiv.style.display = 'none'; 
	}

	selectSecondNum= Num;
	
	const h3Div =  document.querySelector(tempClass);
	h3Div.style.display = 'block';

	if(selectSecondNum!= 0)
	{
		thirdButton.style.display = 'block';
	}
	prevH3Name = tempClass;
}