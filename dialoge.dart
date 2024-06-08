import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showSuccessDialog(BuildContext context, String title, String message){

  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          surfaceTintColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 230,
                width: 320,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 40, 0, 20),
                      child: Image.asset('assets/success.png', height: 80, width: 80,),
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        message,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -20,
                  child: Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.topCenter,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.white,),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
              ),
            ],
          ),
        );
      }
  );
}