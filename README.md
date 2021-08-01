![LinkedIn][linkedin-shield][https://www.linkedin.com/in/ucargiray/]


<!-- ABOUT THE PROJECT -->
## About The Project

This is a custom calendar view written in SwiftUI. No third party libraries used in order to create this. You can download and change the variable's values in order to achieve the view you want.


<!-- GETTING STARTED -->
## Getting Started

- App gets the users current date and shows the month that user is on. If user opens calendar view at March, view starts with March month and lists all the days of March. 
- When user clicks on the either left nor right arrow, month and days changes. 
- (Optional)There is a limitation for user to change months on calendar. Default value is 2 right now but change this limitation with changing the variable called "monthDifferenceLimit". 
- User's current day is shown on the calendar as a gray circle behind it.
- When user clicks on numbers on the calendar, view updates itself and puts a purple circle behind it to notify the user.


<!-- USAGE EXAMPLES -->
## Description

1. Inside "Date+Weekday.swift" file, some functionallity added for Date and String struct.
2. "CustomCalendarViewModel.swift" file has the functions for calculating the day's name.
3. "CustomCalendarDayView.swift" file is the header view which has the day names right above CalendarView.
4. "CustomCalenderView.swift" is the file of whole Calender View.

## Screenshots
User chooses different day |  User's current day is shown | User reaches bottom limit | User reaches upper limit
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://i.imgur.com/C1BRDps.png)  |  ![](https://i.imgur.com/lEi6828.png) | ![](https://i.imgur.com/ZAuGdPI.png) | ![](https://i.imgur.com/5nIfURm.png) 


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.


<!-- CONTACT -->
## Contact

Ahmet Giray Uçar - giray.dev

Project Link: [https://github.com/ucargiray/Custom-Calendar](https://github.com/your_username/repo_name)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
