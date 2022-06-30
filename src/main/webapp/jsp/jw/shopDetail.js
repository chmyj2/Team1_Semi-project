var quanId =  document.getElementById("quantityInput");
	function goOrderController(num)
	{
		location.href = "OrderController?orderNum="+num+","+quanId.value;
	}
	
function cartAdderController(num)
{	
		window.open(
          "CartAdderController?num="+num+"&Quantity="+quanId.value,
          "Child",
          "width=400, height=300, top=50, left=50"
        );
}

function goCartView()
{
		location.href = "CartViewController";
}