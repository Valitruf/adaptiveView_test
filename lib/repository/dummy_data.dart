import 'package:flutter/material.dart';

class WorkShift {
  final String title;
  final String adress;
  final String startTime;
  final String endTime;
  final String income;
  final String rating;
  final String date;

  const WorkShift(
      {@required this.title,
      @required this.adress,
      @required this.startTime,
      @required this.endTime,
      @required this.income,
      this.rating,
      this.date});
}

const DUMMY_DATA = const [
  WorkShift(
    title: 'Кассир',
    adress: 'ул. Станиславская, д. 26, г.Ростов-на-Дону',
    startTime: '08:00',
    endTime: '15:00',
    income: '1500 ₽',
    rating: '5',
    date: 'ЧТ, 16.04.2020',
  ),
  WorkShift(
    title: 'Грузчик',
    adress: 'ул. Рыбная, д. 15/2, г.Батайск',
    startTime: '08:00',
    endTime: '18:00',
    income: '1100 ₽',
    rating: '4',
    date: 'СР, 15.04.2020',

  ),
  WorkShift(
    title: 'Водитель',
    adress: 'ул. Петровская, д. 11, ст. Заречная',
    startTime: '07:00',
    endTime: '16:00',
    income: '850 ₽',
    rating: '3',
    date: 'ВТ, 14.04.2020',
  ),
  WorkShift(
    title: 'Продавец',
    adress: 'ул. Московская, д. 34, ст. Заречная',
    startTime: '08:00',
    endTime: '15:00',
    income: '1800 ₽',
    rating: '5',
    date: 'ПН, 13.04.2020',
  ),
  WorkShift(
    title: 'Кассир',
    adress: 'ул. Московская, д. 34, ст. Заречная',
    startTime: '08:00',
    endTime: '18:00',
    income: '1200 ₽',
    rating: '4',
    date: 'ВС, 12.04.2020',
  ),
  WorkShift(
    title: 'Мерчендайзер',
    adress: 'ул. Московская, д. 1, ст. Заречная',
    startTime: '07:00',
    endTime: '16:00',
    income: '900 ₽',
    rating: '3',
    date: 'ВС, 12.04.2020',
  ),
  WorkShift(
    title: 'Продавец',
    adress: 'ул. Московская, д. 1, ст. Заречная',
    startTime: '08:00',
    endTime: '15:00',
    income: '1000 ₽',
    rating: '5',
    date: 'ВС, 12.04.2020',
  ),
  WorkShift(
    title: 'Кассир',
    adress: 'ул. Московская, д. 1, ст. Заречная',
    startTime: '08:00',
    endTime: '18:00',
    income: '1200 ₽',
    rating: '4',
    date: 'ВС, 12.04.2020',

  ),
  WorkShift(
    title: 'Мерчендайзер',
    adress: 'ул. Московская, д. 1, ст. Заречная',
    startTime: '07:00',
    endTime: '16:00',
    income: '900 ₽',
    rating: '3',
    date: 'ВС, 12.04.2020',
  ),
  WorkShift(
    title: 'Продавец',
    adress: 'ул. Московская, д. 1, ст. Заречная',
    startTime: '08:00',
    endTime: '15:00',
    income: '1000 ₽',
    rating: '5',
    date: 'ВС, 12.04.2020',
  ),
  WorkShift(
    title: 'Кассир',
    adress: 'ул. Московская, д. 7, ст. Заречная',
    startTime: '08:00',
    endTime: '18:00',
    income: '1200 ₽',
    rating: '4',
    date: 'ВС, 12.04.2020',
  ),
  WorkShift(
    title: 'Мерчендайзер',
    adress: 'ул. Московская, д. 7, ст. Заречная',
    startTime: '07:00',
    endTime: '16:00',
    income: '900 ₽',
    rating: '3',
    date: 'ВС, 12.04.2020',
  )
];
