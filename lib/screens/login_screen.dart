import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // الجزء العلوي الذي يأخذ 0.2 من الشاشة ويحتوي على اللوجو وSign In
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
                  'Sign In',
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
                // الصورة مع الخلفية الزرقاء
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff4579AD), // اللون المطلوب للخلفية
                  ),
                  child: Image.asset(
                    'assets/images/signback.png', // الصورة مع مسارها الصحيح
                    fit: BoxFit.cover, // تأكد من أن الصورة تغطي الشاشة
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                // المحتوى فوق الصورة
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20), // مسافة فارغة تحت الجزء العلوي

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
                              borderSide: BorderSide(
                                  color: Color(0xff4579AD)), // لون البوردر
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(
                                      0xff4579AD)), // لون البوردر عند التركيز
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
                              borderSide: BorderSide(
                                  color:
                                      Color(0xff4579AD)), // لون البوردر العادي
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(
                                  color: Color(
                                      0xff4579AD)), // لون البوردر عند التركيز
                            ),
                            filled: true,
                            fillColor: Colors.white, // لون الخلفية البيضاء
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),

                        SizedBox(height: 20),
                        // زر تسجيل الدخول
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // هنا تضيف اكشن لتسجيل الدخول
                            }
                          },
                          child: Text(
                            'Login',
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
                            Text("Don't have an account? "),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context,
                                    '/signup'); // هنا يتم الانتقال لصفحة التسجيل
                              },
                              child: Text(
                                'Sign Up',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
