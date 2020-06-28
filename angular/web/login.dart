import 'dart:html';
import 'dart:convert';
import 'package:angular/angular.dart';
import 'package:angular_dart/app_component.template.dart' as ng;
import 'package:http/http.dart' as http;

void main() {
  runApp(ng.AppComponentNgFactory);
  
  var managerLoginSubmit=document.querySelector("#managerLoginSubmit")
  ..onClick.listen(login);
  

}
void login(Event e) async{
  var id =document.querySelector('#managerID');
//window.alert((ID as InputElement).value);
var password=document.querySelector('#managerPassword');
var data = {
      'managerId': (id as InputElement).value,
      'managerPassword': (password as InputElement).value,
    };

 final response = await http.post('http://127.0.0.1:8888/login',
        body: json.encode(data),
        headers: {"content-type": "application/json"}).then((response) {

 if(response.statusCode==200){
    List<String> userAthu = 
    json.decode(response.body) as List<String>;

    if (userAthu =='ok')//写传回来的参数
    { var div=document.querySelector("#unlog");
      var id=document.querySelector("#ID");
      div.children.clear();//移除最上面的登陆栏
      div.appendText(id.innerHtml);
      window.open('managerHome.html', '');
    }
    else{
      window.alert("用户名或密码错误！");
  }
 };
 });

  
}