class News {


final int id;

final String title;

final String description;



News({

required this.id,

required this.title,

required this.description,

});



factory News.fromJson(Map<String,dynamic> json){


return News(

id: json['id'],

title: json['title'],

description: json['body'],

);


}


}