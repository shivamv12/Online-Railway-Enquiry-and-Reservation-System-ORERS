    /* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function date() {
    var da = new Date();
    //var din = da.getDay();
    var day = da.getDate();
    var mon = da.getMonth();
    var month = mon + 1;
    var year = da.getFullYear();
    document.getElementById('d').innerHTML = day+" / "+month+" / "+year;
    document.getElementById('d1').innerHTML = day+" / "+month+" / "+year;
    //document.getElementById('d').innerHTML = Date();
}
function ZoomPage(Param) {
    
var width;
if(Param=='A')
{
    width = screen.width;
    document.getElementById(Param).className=" fontfocus";
    document.getElementById('A+').className="fontnormal";
    document.getElementById('A-').className="fontnormal";
}
else if(Param=='A+')
{
    width = screen.width-50;
    document.getElementById(Param).className="fontfocus";
    document.getElementById('A-').className="fontnormal";
    document.getElementById('A').className="fontnormal";
}
else if(Param=='A-')
{
    width = screen.width+50;
    document.getElementById(Param).className="fontfocus";
    document.getElementById('A+').className="fontnormal";
    document.getElementById('A').className="fontnormal";
}
document.body.style.zoom = screen.width/width;
}

var flag = 0;
var img = new Array(9);
    img[0] = "2.jpg";
    img[1] = "3.jpg";
    img[2] = "4.jpg";
    img[3] = "5.jpg";
    img[4] = "6.jpg";
    img[5] = "7.jpg";
    img[6] = "8.jpg";
    img[7] = "9.jpg";
    img[8] = "10.jpg";
    
/*function change() {
    document.getElementById('image').src = "Images/"+img[flag];
    flag++;
    if(flag==9)
        flag = 0;
}*/
    var len = img.length;
    document.getElementById('image').src = "Images/"+img[flag];
    function fade(obj) {
            obj.style.opacity = 0;
            function tick() {
                    obj.style.opacity = +obj.style.opacity + 0.2;
                    if(+obj.style.opacity < 1)
                            setTimeout(tick, 100)
            }
            tick();
    }
    function slider() {
            flag = (flag + 1) % len;
            document.getElementById('image').src = "Images/"+img[flag];
            fade(document.getElementById('image'));
    }
    function change_image(num)
        {
        flag = flag + num;
        if(flag > len-1)
            {
                flag = 0;
            }
        if(flag < 0)
            {
                flag = len-1;
            }
        document.getElementById('image').src = "Images/"+img[flag];
        //alert("document.getElementById('image').src=Images/"+img[flag]);
        //return false;
    }
	
function statechange() {
	document.getElementById('black_box').style.animationPlayState = "paused";
	}
function statechange1() {
	document.getElementById('black_box').style.animationPlayState = "running";
	}
function open() {
    location.href='index.jsp';
}
function hide() {
    document.getElementById('budget2016').style.visibility = "hidden";
    document.getElementById('qr').style.height = "203%";
    document.getElementById('qr').style.width = "99.5%";
    document.getElementById('qr').style.padding = "0px";
    document.getElementById('qr').style.border = "2px dotted black";
}
function show() {
    document.getElementById('budget2016').style.visibility = "visible";
    document.getElementById('qr').style.height = "90%";
    document.getElementById('qr').style.width = "30%";
    document.getElementById('qr').style.padding = "2%";
    document.getElementById('qr').style.border = "none";
}
function round1() {
    document.getElementById('arow').style.transform = "rotateY(0deg)";
}
function round2() {
    document.getElementById('arow').style.transform = "rotateY(180deg)";
}
function add_field() {
        var count = document.getElementById("count");
        count.stepUp(1);
        var x = document.getElementById("x");
        
        var a = document.createElement("input");   // Get the first <h1> element in the document
        var att = document.createAttribute("type");       // Create a "class" attribute
        att.value = "text";                           // Set the value of the class attribute
        a.setAttributeNode(att);
        att = document.createAttribute("name");       // Create a "class" attribute
        att.value = (count.value)+"a";     
        a.setAttributeNode(att);                // Set the value of the class attribute
        att = document.createAttribute("placeholder");       // Create a "class" attribute
        att.value = "Enter Your Name";
        a.setAttributeNode(att);                // Set the value of the class attribute
        att = document.createAttribute("class");       // Create a "class" attribute
        att.value = "input_field1";
        a.setAttributeNode(att);
        x.appendChild(a);
   
        b = document.createElement("input");   // Get the first <h1> element in the document
        att = document.createAttribute("type");       // Create a "class" attribute
        att.value = "number";                           // Set the value of the class attribute
        b.setAttributeNode(att);
        att = document.createAttribute("name");
        b.setAttributeNode(att);// Create a "class" attribute
        att.value = (count.value)+"b";                           // Set the value of the class attribute
        att = document.createAttribute("placeholder");       // Create a "class" attribute
        att.value = "Enter Your age";
        b.setAttributeNode(att);
        att = document.createAttribute("class");       // Create a "class" attribute
        att.value = "input_field1";
        b.setAttributeNode(att);
        x.appendChild(b);
               
        /* var p = document.createElement("select");
        p.setAttribute("class","sel");
        p.setAttribute("id","myselect");
        document.body.appendChild(p);

        var q = document.createElement("option");
        q.setAttribute("value","Male");
        q.setAttribute("class","opt1");
        var r = document.createTextNode("Male");
        q.appendChild(r);
        document.getElementById("myselect").appendChild(q);

        var m = document.createElement("option");
        m.setAttribute("value","Female");
        m.setAttribute("class","opt1");
        var n = document.createTextNode("Female");
        m.appendChild(n);
        document.getElementById("myselect").appendChild(m);
        */
        var s = document.createElement("select");
        s.setAttribute("class","sel");
        var o = document.createElement("option");
        o.setAttribute("class","opt1");
        o.text = "Male";
        var o1 = document.createElement("option");
        o1.setAttribute("class","opt1");
        o1.text = "Female";
        s.appendChild(o);
        s.appendChild(o1);
        document.getElementById("x").appendChild(s);
        
        x.appendChild(document.createElement("br"));
}
function change(){
    document.getElementById('btn1').disabled = false;
    document.getElementById('btn1').style.backgroundColor = "whitesmoke";
    }
function validate() {
if(document.getElementById("selct").value == "select" || document.getElementById("selct1").value == "select")
{
    alert("Please select any option.!");
    return false;
}
else if(document.getElementById("selct").value == document.getElementById("selct1").value)
{
    alert("Please select different cities.!");
    return false;
}
else {
    //loadDoc();
    return true;
}
}

function loadDoc() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
        document.getElementById("demo").innerHTML = xhttp.responseText;
        }
    };
    var s = document.getElementById("selct").value;
    var d = document.getElementById("selct1").value;

    xhttp.open("GET", "searchtrain.jsp?source="+s+"&dest="+d, true);
    xhttp.send();
}
function mail() {
	mail_str = "mailto:?subject=Your reservation ticket: " + document.title;
	mail_str += "&body=I thought you might be interested in this: " + document.title;
	mail_str += ". %0A%0AYou can view it at, " + location.href; 
	location.href = mail_str;
}