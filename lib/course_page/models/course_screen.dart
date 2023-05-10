import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CourseScreenModel{
  List chips = [
    {IconData: Icons.star_rounded, 'text': '4.1'},
    {IconData: Icons.handshake_rounded, 'text': 'Internship Assistance'},
    {
      IconData: Icons.calendar_month,
      'text': '8 Weeks, 1 hr/day (flexible schedule)'
    }
  ];

  List courseHighlights = [
    {
      'image': 'assets/icons/5.svg',
      'heading': 'Live Classes',
      'descriptionText': 'On a regular basis'
    },
    {
      'image': 'assets/icons/3.svg',
      'heading': 'Mobile Friendly',
      'descriptionText': 'Smartphone compatible interface'
    },
    {
      'image': 'assets/icons/4.svg',
      'heading': 'Recorded lectures',
      'descriptionText': 'If you miss, No problem'
    },
    {
      'image': 'assets/icons/2.svg',
      'heading': 'Beginner Ready',
      'descriptionText': 'No prior knowledge required'
    },
    {
      'image': 'assets/icons/6.svg',
      'heading': 'Doubt Clearing',
      'descriptionText': 'One to one session '
    },
    {
      'image': 'assets/icons/7.svg',
      'heading': 'Project',
      'descriptionText': 'For hands-on practice'
    },
    {
      'image': 'assets/icons/8.svg',
      'heading': '8 Week Duration',
      'descriptionText': 'More skills in less time'
    },
    {
      'image': 'assets/icons/1.svg',
      'heading': 'Physical Certificate',
      'descriptionText': 'Learn & Earn'
    }
  ];
  List courseDescription = [
    {
      'courseName': 'Web Development Course',
      'tech':
          'HTML, CSS, My SQL,PHP, JavaScript, React, build a website from scratch!'
    },
    {
      'courseName': 'Android App Development',
      'tech':
          'Learn XML, and Kotlin and how to put them together to build your own Swiggy, Facebook, or any other app '
    },
    {
      'courseName': 'MATLAB',
      'tech':
          'Master data analysis and simulation with MATLAB - the essential tool for engineers and scientists'
    },
    {
      'courseName': 'Artificial Intelligence',
      'tech':
          'Master AI with computer vision, Deep learning, GANs, Neural Networks, Python, NLP and many more!'
    },
    {
      'courseName': 'Machine Learning',
      'tech':
          'Become an expert in ML course by latest ML tools , live classes, Master Classes by Expert Faculty'
    },
  ];
  // List trainingwork = [
  //   {
  //     IconData: Icons.heart_broken,
  //     'heading': 'Gain Concepts',
  //     'descriptionText': 'Attend regularly to learn Concepts'
  //   },
  //   {
  //     IconData: Icons.heart_broken,
  //     'heading': 'Test Yourself',
  //     'descriptionText': 'Test yourself through quizes & modules'
  //   },
  //   {
  //     IconData: Icons.heart_broken,
  //     'heading': 'Hands -on Practice ',
  //     'descriptionText': 'Work on project & assingments'
  //   },
  //   {
  //     IconData: Icons.heart_broken,
  //     'heading': '1:1 Doubt Solving',
  //     'descriptionText': 'Solve your doubt by our experts'
  //   },
  //   {
  //     IconData: Icons.heart_broken,
  //     'heading': 'Final Exam',
  //     'descriptionText': 'Complete your training by giving final exam'
  //   },
  //   {
  //     IconData: Icons.heart_broken,
  //     'heading': 'Get Certified',
  //     'descriptionText': 'Take your physical certificate of training'
  //   }
  // ];

  List trainingwork = [
    {
      'image': 'assets/icons/right.svg',
      'heading': 'Gain Concepts',
      'descriptionText': 'Attend regularly to learn Concepts'
    },
    {
      'image': 'assets/icons/right.svg',
      'heading': 'Test Yourself',
      'descriptionText': 'Test yourself through quizes & modules'
    },
    {
      'image': 'assets/icons/right.svg',
      'heading': 'Hands-on Practice ',
      'descriptionText': 'Work on project & assingments'
    },
    {
      'image': 'assets/icons/right.svg',
      'heading': '1:1 Doubt Solving',
      'descriptionText': 'Solve your doubt by our experts'
    },
    {
      'image': 'assets/icons/right.svg',
      'heading': 'Final Exam',
      'descriptionText': 'Complete your training by giving final exam'
    },
    {
      'image': 'assets/icons/right.svg',
      'heading': 'Get Certified',
      'descriptionText': 'Take your physical certificate of training'
    }
  ];
  List whyLearnIt = [
    {
      'courseName': 'Web Development Course',
      'heading1': 'Career Opportunities',
      'description1':
          'Web development is a high demand field. From working in a tech company to freelancing, there are plenty of job options in this field.',
      'heading2': 'Flexiblity & Creativity',
      'description2':
          'You can work remotely or in an office, and you have the flexibility to choose your own projects. Web development is a great field for creative thinkers',
      'heading3': 'Personal & Entrepreneurial Projects',
      'description3':
          'You can use your web development skills to create personal projects such as a blog, portfolio, or online store. Additionally, you can use your web development skills to start your own business or pursue a freelancing career.'
    },
    {
      'courseName': 'Android App Devlopment',
      'heading1': 'Market demand and career opportunities',
      'description1':
          'The market demand for mobile applications has been steadily increasing, and Android is the most widely used mobile operating system worldwide. Learning Android app development can provide you with many career opportunities in this rapidly growing field. You can work as a developer, designer, or tester for companies that develop mobile apps or even start your own app development business.',
      'heading2': 'User engagement and innovation',
      'description2':
          'Android app development allows you to create engaging and innovative applications that can enhance the user experience. You can develop apps that integrate with social media, use augmented reality or virtual reality, or provide personalized recommendations to users.',
      'heading3': 'Flexibility and personal projects',
      'description3':
          'Learning Android app development can give you the flexibility to work from anywhere and at any time. You can also use your skills to create personal projects, such as a customized music player, fitness tracker, or travel planner.'
    },
    {
      'courseName': 'MATLAB',
      'heading1': 'Data Analysis and Visualization',
      'description1':
          'MATLAB provides powerful tools for data analysis and visualization, making it an essential tool for engineers, scientists, and researchers. With MATLAB, you can perform complex computations and create visualizations that help you better understand your data.',
      'heading2': 'Algorithm Development',
      'description2':
          'MATLAB is also used for developing and testing algorithms, making it an ideal tool for engineers and scientists who need to develop and refine complex algorithms. MATLAB built-in functions and toolboxes make it easy to implement and test algorithms in a variety of domains, including signal processing, image analysis, and control systems.',
      'heading3': 'Simulations',
      'description3':
          'MATLAB ability to simulate complex systems and processes makes it a valuable tool for engineers and scientists working in fields such as aerospace, automotive, and robotics. MATLAB allows you to model and simulate systems, test different scenarios, and analyze the results, all within a single environment.'
    },
    {
      'courseName': 'Machine Learning',
      'heading1': 'Career opportunities',
      'description1':
          'Machine learning is a rapidly growing field with high demand for skilled professionals. By learning machine learning, you can open up career opportunities in fields such as data science, artificial intelligence, and software engineering.',
      'heading2': 'Data analysis',
      'description2':
          'Machine learning can help you analyze large amounts of data quickly and accurately. With machine learning, you can build models that can identify patterns and make predictions based on data.',
      'heading3': 'Inovation',
      'description3':
          'Machine learning is driving innovation in various industries, from healthcare to finance to transportation. By learning machine learning, you can contribute to the development of new and exciting technologies that can improve peoples lives.'
    },
    {
      'courseName': 'Artificial Intelligence',
      'heading1': 'Career Opportunities',
      'description1':
          'The demand for AI professionals is increasing rapidly across various industries, including healthcare, finance, retail, and transportation. Learning AI can open up a range of career opportunities, from data analyst to machine learning engineer, and even AI researcher.',
      'heading2': 'Problem Solving',
      'description2':
          'AI is used to solve complex problems, such as identifying patterns in large datasets or making predictions based on data. Learning AI can provide you with the skills to tackle real-world problems and develop solutions that can benefit society.',
      'heading3': 'Innovation',
      'description3':
          'AI is a rapidly evolving field with the potential to drive innovation and transform industries. Learning AI can provide you with the skills to develop new technologies, products, and services that can improve peoples lives.'
    }
  ];
}
