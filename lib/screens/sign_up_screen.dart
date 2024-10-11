import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // الجزء العلوي الذي يأخذ 0.2 من الشاشة ويحتوي على اللوجو وSign Up
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: Color(0xff4579AD), // اللون المطلوب
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png', // تأكد من وجود مسار صحيح للصورة
                  height: 50,
                  width: 50,
                ),
                SizedBox(width: 10), // مسافة بين اللوجو والنص
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // لون النص أبيض
                  ),
                ),
              ],
            ),
          ),

          // الجزء المتبقي من الصفحة (0.8) مع الصورة والخلفية
          Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff4579AD), // إضافة اللون للخلفية
                  ),
                ),
                Image.asset(
                  'assets/images/signback.png',
                  // تأكد من وجود المسار الصحيح للصورة
                  fit: BoxFit.cover, // يجعل الصورة تتناسب مع الحاوية
                  height: MediaQuery.of(context).size.height,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20), // مسافة فارغة فوق الفورم

                          // حقل إدخال الاسم
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Name',
                              labelStyle: TextStyle(
                                color: Color(0xff4579AD), // لون النص "Name"
                              ),
                              hintText: 'Enter your name',
                              prefixIcon: Icon(
                                Icons.person,
                                color: Color(0xff4579AD), // لون الأيقونة
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Color(0xff4579AD)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Color(0xff4579AD)),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                          ),

                          SizedBox(height: 20),

                          // حقل إدخال البريد الإلكتروني
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Color(0xff4579AD), // لون النص "Email"
                              ),
                              hintText: 'Enter your email',
                              prefixIcon: Icon(
                                Icons.email,
                                color: Color(0xff4579AD), // لون الأيقونة
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Color(0xff4579AD)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Color(0xff4579AD)),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              }
                              return null;
                            },
                          ),

                          SizedBox(height: 20),

                          // حقل إدخال كلمة المرور
                          TextFormField(
                            obscureText: _obscurePassword,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Color(0xff4579AD), // لون النص "Password"
                              ),
                              hintText: 'Enter your password',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color(0xff4579AD), // لون الأيقونة
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscurePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Color(0xff4579AD), // لون أيقونة الرؤية
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscurePassword = !_obscurePassword;
                                  });
                                },
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Color(0xff4579AD)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Color(0xff4579AD)),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              return null;
                            },
                          ),

                          SizedBox(height: 20),

                          // تأكيد كلمة المرور
                          TextFormField(
                            obscureText: _obscurePassword,
                            decoration: InputDecoration(
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(
                                color: Color(
                                    0xff4579AD), // لون النص "Confirm Password"
                              ),
                              hintText: 'Enter your password again',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Color(0xff4579AD), // لون الأيقونة
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscurePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Color(0xff4579AD), // لون أيقونة الرؤية
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscurePassword = !_obscurePassword;
                                  });
                                },
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Color(0xff4579AD)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    BorderSide(color: Color(0xff4579AD)),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please confirm your password';
                              }
                              return null;
                            },
                          ),

                          SizedBox(height: 20),

                          // زر تسجيل الاشتراك
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // هنا تضيف اكشن لتسجيل الاشتراك
                              }
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white, // لون النص أبيض
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff4579AD),
                              minimumSize: Size(double.infinity, 50),
                            ),
                          ),

                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account? "),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/login');
                                },
                                child: Text(
                                  'Sign In',
                                  style: TextStyle(
                                    color: Color(0xff4579AD),
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
