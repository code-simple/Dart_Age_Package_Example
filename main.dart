/*
Package : age (https://pub.dev/packages/age)
Best package to find difference and print exact result in days months or year.
.
I edited last print ${nextBirthdayDate.difference(DateTime.now()).inDays}
now it shows days remaining for my birthday.
*/

import 'package:dart_age_calculator/dart_age_calculator.dart'
    as dart_age_calculator;
import 'package:age/age.dart';

void main() {
  DateTime birthday = DateTime(1989, 2, 11);
  DateTime today = DateTime.now(); //2020/1/24

  AgeDuration age;

  // Find out your age
  age = Age.dateDifference(
      fromDate: birthday, toDate: today, includeToDate: false);

  print('Your age is $age'); // Your age is Years: 30, Months: 0, Days: 4

  // Find out when your next birthday will be.
  DateTime tempDate = DateTime(today.year, birthday.month, birthday.day);
  DateTime nextBirthdayDate = tempDate.isBefore(today)
      ? Age.add(date: tempDate, duration: AgeDuration(years: 1))
      : tempDate;
  AgeDuration nextBirthdayDuration =
      Age.dateDifference(fromDate: today, toDate: nextBirthdayDate);

  print(
      'You next birthday will be on ${nextBirthdayDate} or in $nextBirthdayDuration'); // Shows fix date
  print(
      'You next birthday will be after ${nextBirthdayDate.difference(DateTime.now()).inDays} Days');
  // Shows Days remaining
}
