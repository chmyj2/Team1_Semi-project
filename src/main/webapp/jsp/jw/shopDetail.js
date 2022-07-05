var quanId =  document.getElementById("quantityInput");
	function goOrderController(num)
	{
		location.href = "OrderController?orderNum="+num+","+quanId.value;
	}
	
function cartAdderController(num, userId)
{	
	if(userId== null)
	{
		alert("로그인해!!")
	}
	else
	{
		window.open(
          "CartAdderController?num="+num+"&Quantity="+quanId.value,
          "Child",
          "width=400, height=300, top=50, left=50"
        );	
	}
}

function goCartView()
{
		location.href = "CartViewController";
}

var prevStock = 0;
function quantityChange(quantity, price,stock)
{
	if( quantity.value>stock )
	{
		quantity.value = stock;
		alert("재고보다 많은 수량은 구매 불가능합니다");
		return false;
	}
	if(quantity.value<=0)
	{
		quantity.value = 1;
		alert("1개 이상 입력해 주십시오");
		return false;
	}	
	document.getElementById("totalPrice").innerHTML= quantity.value*price;
}


function goOrderViewController()
{
	location.href = "OrderViewController";
}
