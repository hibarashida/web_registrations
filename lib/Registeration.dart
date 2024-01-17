import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:webproject/provider.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData= MediaQuery.of(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold( backgroundColor: Colors.grey,
             appBar: AppBar(backgroundColor: Colors.brown,title: Center(
               child: Text("Register",style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w500,fontSize: 20),),
             )),
      body:queryData.orientation==Orientation.portrait?
      Column(
        children: [
          SizedBox(height: 80,),
          Consumer<MainProvider>(
            builder: (context,value,child) {
              return TextFormField(
                controller:value.namecontroller ,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    filled: true,
                  hintText:"NAME" ,
                    fillColor: Colors.white,
                    isDense: true,
                    labelStyle: TextStyle(fontSize: 15),
                    focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.grey,width: 0.2)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.grey,width: 0.2)),
                    errorBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.grey,width: 0.2),),
                    border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.grey,width: 0.2)),

                ),

              );
            }
          ),
          SizedBox(height: 50,),
          Consumer<MainProvider>(
            builder: (context,value,child) {
              return TextFormField(
                controller: value.phonenumbercontroller,
                keyboardType:TextInputType.number ,
                inputFormatters: [LengthLimitingTextInputFormatter(10)],
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    filled: true,
                  hintText:"PHONE NUMBER" ,

                    fillColor: Colors.white,
                    isDense: true,
                    labelStyle: TextStyle(fontSize: 15),
                    focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.grey,width: 0.2)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.grey,width: 0.2)),
                    errorBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.grey,width: 0.2),),
                    border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.grey,width: 0.2)),

                ),

              );
            }
          ),
          SizedBox(height: 80,),
          Center(
            child: Consumer<MainProvider>(
              builder: (context,value,child) {
                return InkWell(
                  onTap: () {
                    value.adddetails();
                  },
                  child: Container(
                    height: 50,
                    width: width/3,
                    decoration:BoxDecoration( color: Colors.brown,borderRadius: BorderRadius.circular(50)) ,
                    child: Center(child: Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),)),
                  ),
                );
              }
            ),
          )


        ],
      ):
      Column(
        children: [
          SizedBox(height: 80,),
          Consumer<MainProvider>(
              builder: (context,value,child) {
                return TextFormField(
                  controller:value.namecontroller ,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    filled: true,
                    hintText:"NAME" ,
                    fillColor: Colors.white,
                    isDense: true,
                    labelStyle: TextStyle(fontSize: 15),
                    focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.grey,width: 0.2)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.grey,width: 0.2)),
                    errorBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.grey,width: 0.2),),
                    border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.grey,width: 0.2)),

                  ),

                );
              }
          ),
          SizedBox(height: 50,),
          Consumer<MainProvider>(
              builder: (context,value,child) {
                return TextFormField(
                  controller: value.phonenumbercontroller,
                  keyboardType:TextInputType.number ,
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    filled: true,
                    hintText:"PHONE NUMBER" ,

                    fillColor: Colors.white,
                    isDense: true,
                    labelStyle: TextStyle(fontSize: 15),
                    focusedBorder:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.grey,width: 0.2)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.grey,width: 0.2)),
                    errorBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.grey,width: 0.2),),
                    border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.grey,width: 0.2)),

                  ),

                );
              }
          ),
          SizedBox(height: 80,),
          Center(
            child: Consumer<MainProvider>(
                builder: (context,value,child) {
                  return InkWell(
                    onTap: () {
                      value.adddetails();
                    },
                    child: Container(
                      height: 50,
                      width: width/3,
                      decoration:BoxDecoration( color: Colors.brown,borderRadius: BorderRadius.circular(50)) ,
                      child: Center(child: Text("ADD",style: TextStyle(fontSize: 15,color: Colors.white),)),
                    ),
                  );
                }
            ),
          )


        ],
      )
    ) ;
  }
}
