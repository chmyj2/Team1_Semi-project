function createPopup()
{	
	window.open(
          "CategoryController",
          "Child",
          "width=400, height=300, top=50, left=50"
        );
}

function tagAdder()
{
	var tagName = prompt("태그의 이름을 입력해주세요");
	
	location.href = "tagRegController?name="+tagName+"&num=0&level=1"
}

var selectedNum  = 0;

function tagSecondHAdder()
{
	var tagName = prompt("태그의 이름을 입력해주세요");

	location.href = "tagRegController?name="+tagName+"&num="+selectedNum+"&level=2"
	
}

function selectCategory(Num)
{
	var tempClass = "."+Num
	const h2Div = document.querySelector(tempClass);
	const h3Div = document.querySelector('.h3Div');
	const secondButton = document.querySelector('.secondH');

	selectedNum=Num;

	if(selectedNum!= 0)
	{
		secondButton.style.display = 'block';
	}
}