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
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            color: Color(0xff4579AD),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logosign.png', // تأكد من وجود مسار صحيح للصورة
                  height: 94,
                  width: 101,
                ),
                SizedBox(width: 10), // مسافة بين اللوجو والنص
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
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
                  padding: const EdgeInsets.all(30.0),
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 58), // مسافة فارغة فوق الفورم

                          Align(
                            alignment: Alignment.centerLeft,
                            // النص يروح ناحية الشمال
                            child: Text(
                              'Name',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500, // خط ميديم
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Enter your name',
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

                          SizedBox(height: 24),
                          Align(
                            alignment: Alignment.centerLeft,
                            // النص يروح ناحية الشمال
                            child: Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500, // خط ميديم
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          // حقل إدخال البريد الإلكتروني
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Enter your email',
                              labelStyle: TextStyle(
                                color: Color(0xff4579AD), // لون النص "Email"
                              ),
                              hintText: '',
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

                          SizedBox(height: 24),
                          Align(
                            alignment: Alignment.centerLeft,
                            // النص يروح ناحية الشمال
                            child: Text(
                              'Password',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500, // خط ميديم
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          // حقل إدخال كلمة المرور
                          TextFormField(
                            obscureText: _obscurePassword,
                            decoration: InputDecoration(
                              labelText: 'Enter your password',
                              labelStyle: TextStyle(
                                color: Color(0xff4579AD), // لون النص "Password"
                              ),
                              hintText: '',
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

                          SizedBox(height: 24),
                          Align(
                            alignment: Alignment.centerLeft,
                            // النص يروح ناحية الشمال
                            child: Text(
                              'Confirm Password',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500, // خط ميديم
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          TextFormField(
                            obscureText: _obscurePassword,
                            decoration: InputDecoration(
                              labelText: 'Enter your password again',
                              labelStyle: TextStyle(
                                color: Color(
                                    0xff4579AD), // لون النص "Confirm Password"
                              ),
                              hintText: '',
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

                          SizedBox(height: 40),

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

                          SizedBox(height: 40),
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
