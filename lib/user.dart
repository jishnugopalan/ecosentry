class Users{
  final String ?name,email,phone,usertype,password;

  Users(this.name, this.email, this.phone, this.password, this.usertype);
  Users.fromJson(Map<String,dynamic> json, this.name, this.email, this.phone, this.password, this.usertype);
  Map<String,dynamic> toJson()=>{
    "name":this.name,
    "email":this.email,
    "phone":this.phone,
    "usertype":this.usertype,
    "password":this.password
  };
}