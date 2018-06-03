
$(document).ready(function(){
    $("#myNav").affix({
        offset: { 
            top: 125 
      }
    });
});

function  delet()
{
	var parent=document.getElementById("mess2");
	var x=document.getElementById("mess2").getElementsByTagName("p");
	var child=x[0];
	parent.removeChild(child);
}

function add_head(){
	var x=document.getElementById("mymessage_head").value;
	var aNode=document.createElement("a");
	aNode.href="#";
	aNode.innerHTML=x;
	var divNode=document.getElementById("my_ul");
	var xx=document.createElement("li");
	xx.appendChild(aNode);
	divNode.appendChild(xx);
}